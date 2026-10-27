.class final Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraManagerGlobal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field private static final blacklist DEVICE_STATUS_ARRAY_SIZE:I = 0xa

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CameraManagerGlobal"

.field private static final greylist-max-o gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

.field public static final greylist-max-o sCameraServiceDisabled:Z

.field public static final blacklist sLandscapeToPortrait:Z


# instance fields
.field private final greylist-max-o CAMERA_SERVICE_RECONNECT_DELAY_MS:I

.field private final greylist-max-o DEBUG:Z

.field private final greylist-max-o mCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$AvailabilityCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCameraService:Landroid/hardware/ICameraService;

.field private final blacklist mConcurrentCameraIdCombinations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mDeviceStateHandler:Landroid/os/Handler;

.field private blacklist mDeviceStateHandlerThread:Landroid/os/HandlerThread;

.field private final greylist-max-o mDeviceStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceStatusHistory:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

.field private blacklist mHasOpenCloseListenerPermission:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final blacklist mOpenedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final greylist-max-o mTorchCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$TorchCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTorchClientBinder:Landroid/os/Binder;

.field private final greylist-max-o mTorchStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUnavailablePhysicalDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$jmxOBN39nTX1p4gNk8dcKQK_ku0(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->lambda$scheduleCameraServiceReconnectionLocked$7()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2259
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 2309
    nop

    .line 2310
    const-string v0, "config.disable_cameraservice"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    .line 2312
    nop

    .line 2313
    const-string v0, "camera.enable_landscape_to_portrait"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sLandscapeToPortrait:Z

    .line 2312
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 4

    .line 2307
    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    .line 2254
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    .line 2256
    const/16 v1, 0x3e8

    iput v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->CAMERA_SERVICE_RECONNECT_DELAY_MS:I

    .line 2267
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2269
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    .line 2271
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    .line 2274
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    .line 2276
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    .line 2281
    new-instance v1, Ljava/util/ArrayDeque;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatusHistory:Ljava/util/ArrayDeque;

    .line 2285
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    .line 2288
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    .line 2291
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    .line 2294
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    .line 2296
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    .line 2300
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    .line 2307
    return-void
.end method

.method private blacklist addDeviceStatusHistoryLocked(Ljava/lang/String;)V
    .registers 4

    .line 3591
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatusHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_f

    .line 3592
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatusHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 3594
    :cond_f
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatusHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 3595
    return-void
.end method

.method private static blacklist cameraStatusesContains([Landroid/hardware/CameraStatus;Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z
    .registers 8

    .line 2588
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_20

    aget-object v3, p0, v2

    .line 2589
    iget-object v4, v3, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget v3, v3, Landroid/hardware/CameraStatus;->deviceId:I

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result v4

    if-ne v3, v4, :cond_1d

    .line 2590
    const/4 p0, 0x1

    return p0

    .line 2588
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2593
    :cond_20
    return v1
.end method

.method private greylist-max-o connectCameraServiceLocked()V
    .registers 12

    .line 2376
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v0, :cond_110

    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-eqz v0, :cond_a

    goto/16 :goto_110

    .line 2378
    :cond_a
    const-string v0, "CameraManagerGlobal"

    const-string v1, "Connecting to camera service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    const-string v0, "media.camera"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2381
    if-nez v0, :cond_1a

    .line 2383
    return-void

    .line 2386
    :cond_1a
    const/4 v1, 0x0

    :try_start_1b
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_10e

    .line 2390
    nop

    .line 2392
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v0

    .line 2395
    :try_start_23
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setupGlobalVendorTagDescriptor()V
    :try_end_26
    .catch Landroid/os/ServiceSpecificException; {:try_start_23 .. :try_end_26} :catch_27

    .line 2398
    goto :goto_2b

    .line 2396
    :catch_27
    move-exception v2

    .line 2397
    invoke-direct {p0, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V

    .line 2401
    :goto_2b
    :try_start_2b
    const-string v2, "connectCameraServiceLocked(E): tid(%d): mDeviceStatus size %d"

    .line 2403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 2401
    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 2405
    invoke-interface {v0, p0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v2

    .line 2406
    array-length v3, v2

    move v4, v1

    :goto_54
    if-ge v4, v3, :cond_91

    aget-object v5, v2, v4

    .line 2407
    new-instance v6, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    iget-object v7, v5, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    iget v8, v5, Landroid/hardware/CameraStatus;->deviceId:I

    invoke-direct {v6, v7, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    .line 2409
    iget v7, v5, Landroid/hardware/CameraStatus;->status:I

    invoke-direct {p0, v7, v6}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 2411
    iget-object v7, v5, Landroid/hardware/CameraStatus;->unavailablePhysicalCameras:[Ljava/lang/String;

    if-eqz v7, :cond_78

    .line 2413
    iget-object v7, v5, Landroid/hardware/CameraStatus;->unavailablePhysicalCameras:[Ljava/lang/String;

    array-length v8, v7

    move v9, v1

    :goto_6e
    if-ge v9, v8, :cond_78

    aget-object v10, v7, v9

    .line 2414
    invoke-direct {p0, v1, v6, v10}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onPhysicalCameraStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V

    .line 2413
    add-int/lit8 v9, v9, 0x1

    goto :goto_6e

    .line 2420
    :cond_78
    iget-boolean v7, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v7, :cond_8e

    iget v7, v5, Landroid/hardware/CameraStatus;->status:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_8e

    iget-object v7, v5, Landroid/hardware/CameraStatus;->clientPackage:Ljava/lang/String;

    .line 2422
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8e

    .line 2423
    iget-object v5, v5, Landroid/hardware/CameraStatus;->clientPackage:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraOpenedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V

    .line 2406
    :cond_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 2426
    :cond_91
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    .line 2428
    const-string v2, "connectCameraServiceLocked(X): tid(%d): mDeviceStatus size %d"

    .line 2430
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 2428
    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V
    :try_end_b6
    .catch Landroid/os/ServiceSpecificException; {:try_start_2b .. :try_end_b6} :catch_105
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_b6} :catch_b7

    .line 2436
    goto :goto_b8

    .line 2434
    :catch_b7
    move-exception v2

    .line 2439
    :goto_b8
    nop

    .line 2440
    :try_start_b9
    invoke-interface {v0}, Landroid/hardware/ICameraService;->getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;

    move-result-object v0

    .line 2441
    array-length v2, v0

    :goto_be
    if-ge v1, v2, :cond_f9

    aget-object v3, v0, v1

    .line 2442
    nop

    .line 2443
    invoke-virtual {v3}, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->getConcurrentCameraIdCombination()Ljava/util/Set;

    move-result-object v3

    .line 2444
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 2445
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 2446
    new-instance v6, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v6, v7, v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2447
    goto :goto_d0

    .line 2448
    :cond_f1
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_f6
    .catch Landroid/os/ServiceSpecificException; {:try_start_b9 .. :try_end_f6} :catch_fc
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_f6} :catch_fa

    .line 2441
    add-int/lit8 v1, v1, 0x1

    goto :goto_be

    .line 2456
    :cond_f9
    goto :goto_fb

    .line 2454
    :catch_fa
    move-exception v0

    .line 2457
    :goto_fb
    return-void

    .line 2450
    :catch_fc
    move-exception v0

    .line 2452
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get concurrent camera id combinations"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2431
    :catch_105
    move-exception v0

    .line 2433
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to register a camera service listener"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2387
    :catch_10e
    move-exception v0

    .line 2389
    return-void

    .line 2376
    :cond_110
    :goto_110
    return-void
.end method

.method private blacklist extractCameraIdListLocked(II)[Ljava/lang/String;
    .registers 10

    .line 2484
    nop

    .line 2486
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 2484
    const-string v1, "extractCameraIdListLocked(E): tid(%d): mDeviceStatus size %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 2488
    :try_start_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2489
    invoke-static {}, Landroid/hardware/Camera;->shouldExposeAuxCamera()Z

    move-result v1

    .line 2490
    const/4 v2, 0x0

    move v3, v2

    :goto_2f
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_66

    .line 2491
    const/4 v4, 0x2

    if-nez v1, :cond_3d

    if-ne v3, v4, :cond_3d

    goto :goto_66

    .line 2492
    :cond_3d
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2493
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2494
    if-eqz v5, :cond_63

    if-eq v5, v4, :cond_63

    .line 2496
    invoke-direct {p0, p1, p2, v6}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 2497
    goto :goto_63

    .line 2499
    :cond_5c
    invoke-static {v6}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2490
    :cond_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 2501
    :cond_66
    :goto_66
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;
    :try_end_6e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_24 .. :try_end_6e} :catch_6f

    return-object p1

    .line 2502
    :catch_6f
    move-exception p1

    .line 2503
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 2504
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": {"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatusHistory:Ljava/util/ArrayDeque;

    .line 2505
    const-string v0, " -> "

    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2506
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private blacklist extractConcurrentCameraIdListLocked(II)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2512
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2513
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 2514
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2515
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2519
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2520
    if-nez v5, :cond_37

    .line 2522
    goto :goto_20

    .line 2524
    :cond_37
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_20

    .line 2525
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_45

    .line 2526
    goto :goto_20

    .line 2528
    :cond_45
    invoke-direct {p0, p1, p2, v4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 2529
    goto :goto_20

    .line 2531
    :cond_4c
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2532
    goto :goto_20

    .line 2533
    :cond_54
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 2534
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2536
    :cond_5d
    goto :goto_b

    .line 2537
    :cond_5e
    return-object v0
.end method

.method public static greylist-max-o get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .registers 1

    .line 2316
    sget-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    return-object v0
.end method

.method private greylist-max-o handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V
    .registers 3

    .line 2899
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v0, :pswitch_data_16

    .line 2904
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2901
    :pswitch_b
    const-string v0, "CameraManagerGlobal"

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    nop

    .line 2906
    return-void

    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_b
    .end packed-switch
.end method

.method private greylist-max-o isAvailable(I)Z
    .registers 2

    .line 2909
    packed-switch p1, :pswitch_data_8

    .line 2913
    const/4 p1, 0x0

    return p1

    .line 2911
    :pswitch_5
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$postSingleCameraClosedUpdate$1(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .registers 2

    .line 2964
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraClosed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$postSingleCameraOpenedUpdate$0(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2954
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$postSingleTorchStrengthLevelUpdate$6(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V
    .registers 3

    .line 3033
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchStrengthLevelChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic blacklist lambda$postSingleTorchUpdate$4(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V
    .registers 4

    .line 3010
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    const/4 p2, 0x1

    goto :goto_6

    :cond_5
    const/4 p2, 0x0

    :goto_6
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$postSingleTorchUpdate$5(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V
    .registers 2

    .line 3020
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$postSingleUpdate$2(Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .registers 3

    .line 2977
    if-nez p0, :cond_6

    .line 2978
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    goto :goto_9

    .line 2980
    :cond_6
    invoke-virtual {p1, p2, p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onPhysicalCameraAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 2982
    :goto_9
    return-void
.end method

.method static synthetic blacklist lambda$postSingleUpdate$3(Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .registers 3

    .line 2991
    if-nez p0, :cond_6

    .line 2992
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    goto :goto_9

    .line 2994
    :cond_6
    invoke-virtual {p1, p2, p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onPhysicalCameraUnavailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    :goto_9
    return-void
.end method

.method private synthetic blacklist lambda$scheduleCameraServiceReconnectionLocked$7()V
    .registers 3

    .line 3500
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 3501
    if-nez v0, :cond_11

    .line 3502
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3506
    :try_start_9
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3507
    monitor-exit v0

    goto :goto_11

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    throw v1

    .line 3509
    :cond_11
    :goto_11
    return-void
.end method

.method private blacklist onCameraClosedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V
    .registers 7

    .line 3469
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3471
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3472
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_37

    .line 3473
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3474
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v3

    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v4

    invoke-direct {p0, v3, v4, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 3475
    goto :goto_34

    .line 3478
    :cond_25
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 3479
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraClosedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 3472
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3481
    :cond_37
    return-void
.end method

.method private blacklist onCameraOpenedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V
    .registers 8

    .line 3432
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3434
    if-eqz v0, :cond_53

    .line 3435
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "onCameraOpened was previously called for "

    const-string v3, "CameraManagerGlobal"

    if-eqz v1, :cond_2f

    .line 3436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " and is now again called for the same package name, so no new client visible update will be sent"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    return-void

    .line 3442
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and is now called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without onCameraClosed being called first"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    :cond_53
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3450
    const/4 v1, 0x0

    :goto_5a
    if-ge v1, v0, :cond_85

    .line 3451
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3452
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v3

    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v4

    invoke-direct {p0, v3, v4, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 3453
    goto :goto_82

    .line 3456
    :cond_73
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 3457
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 3450
    :goto_82
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 3459
    :cond_85
    return-void
.end method

.method private blacklist onPhysicalCameraStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V
    .registers 13

    .line 3168
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v0

    const-string v1, "CameraManagerGlobal"

    if-nez v0, :cond_26

    .line 3169
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    .line 3171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 3169
    const-string p2, "Ignoring invalid device %s physical device %s status 0x%x for device %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    return-void

    .line 3176
    :cond_26
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    .line 3177
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_c6

    .line 3183
    :cond_38
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3184
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-nez v2, :cond_50

    .line 3185
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 3186
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 3187
    :cond_50
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 3188
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 3189
    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3203
    :goto_5f
    invoke-static {}, Landroid/hardware/camera2/CameraManager;->physicalCallbacksAreEnabledForUnavailableCamera()Z

    move-result v0

    if-nez v0, :cond_89

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    .line 3204
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v0

    if-nez v0, :cond_89

    .line 3205
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Camera %s is not available. Ignore physical camera status change callback(s)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    return-void

    .line 3210
    :cond_89
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3211
    const/4 v1, 0x0

    :goto_90
    if-ge v1, v0, :cond_c4

    .line 3212
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3213
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v2

    invoke-static {v4}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 3214
    move v8, p1

    move-object v7, p3

    goto :goto_bf

    .line 3217
    :cond_ac
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/concurrent/Executor;

    .line 3218
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move v8, p1

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3211
    :goto_bf
    add-int/lit8 v1, v1, 0x1

    move-object p3, v7

    move p1, v8

    goto :goto_90

    .line 3220
    :cond_c4
    return-void

    .line 3200
    :cond_c5
    return-void

    .line 3178
    :cond_c6
    :goto_c6
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Camera %s is not present. Ignore physical camera status change"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    return-void
.end method

.method private blacklist onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V
    .registers 12

    .line 3076
    invoke-static {}, Landroid/hardware/Camera;->shouldExposeAuxCamera()Z

    move-result v0

    const-string v1, "CameraManagerGlobal"

    if-nez v0, :cond_29

    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_29

    .line 3077
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Ignoring status update of camera %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    return-void

    .line 3087
    :cond_29
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 3088
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    .line 3089
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 3088
    const-string p2, "Ignoring invalid camera %s status 0x%x for device %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    return-void

    .line 3094
    :cond_4d
    if-nez p1, :cond_5d

    .line 3095
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3096
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    .line 3098
    :cond_5d
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3099
    if-nez v0, :cond_75

    .line 3100
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3104
    :cond_75
    :goto_75
    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_7e

    .line 3110
    return-void

    .line 3126
    :cond_7e
    if-eqz v0, :cond_8f

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v0

    if-ne v1, v0, :cond_8f

    .line 3135
    return-void

    .line 3138
    :cond_8f
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3139
    const/4 v1, 0x0

    :goto_96
    if-ge v1, v0, :cond_f7

    .line 3140
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3141
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v2

    invoke-static {v4}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 3142
    goto :goto_f4

    .line 3145
    :cond_b0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/concurrent/Executor;

    .line 3146
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, p0

    move v8, p1

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3149
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, v3, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 3150
    iget-object v2, v3, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3151
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_dd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 3152
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3154
    move-object v3, p0

    goto :goto_dd

    .line 3139
    :cond_f4
    :goto_f4
    add-int/lit8 v1, v1, 0x1

    goto :goto_96

    .line 3157
    :cond_f7
    return-void
.end method

.method private blacklist onTorchStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V
    .registers 8

    .line 3241
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validTorchStatus(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 3242
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    .line 3244
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 3242
    const-string p2, "Ignoring invalid camera %s torch status 0x%x for device %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraManagerGlobal"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    return-void

    .line 3248
    :cond_26
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3249
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_3b

    .line 3255
    return-void

    .line 3258
    :cond_3b
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3259
    const/4 v1, 0x0

    :goto_42
    if-ge v1, v0, :cond_6d

    .line 3260
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 3261
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v3

    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 3262
    goto :goto_6a

    .line 3265
    :cond_5b
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 3266
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 3259
    :goto_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 3268
    :cond_6d
    return-void
.end method

.method private blacklist onTorchStrengthLevelChangedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;I)V
    .registers 8

    .line 3278
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3279
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_32

    .line 3280
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 3281
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v3

    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v4

    invoke-direct {p0, v3, v4, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3282
    goto :goto_2f

    .line 3285
    :cond_20
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 3286
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchStrengthLevelUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 3279
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3289
    :cond_32
    return-void
.end method

.method private blacklist postSingleAccessPriorityChangeUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 2942
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2944
    :try_start_4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_14

    .line 2946
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2947
    nop

    .line 2948
    return-void

    .line 2946
    :catchall_14
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2947
    throw p1
.end method

.method private blacklist postSingleCameraClosedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .registers 7

    .line 2962
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2964
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 2966
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2967
    nop

    .line 2968
    return-void

    .line 2966
    :catchall_11
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2967
    throw p1
.end method

.method private blacklist postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 2952
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2954
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 2956
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2957
    nop

    .line 2958
    return-void

    .line 2956
    :catchall_11
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2957
    throw p1
.end method

.method private blacklist postSingleTorchStrengthLevelUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .registers 8

    .line 3031
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3033
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 3035
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3036
    nop

    .line 3037
    return-void

    .line 3035
    :catchall_11
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3036
    throw p1
.end method

.method private greylist-max-o postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .registers 8

    .line 3005
    packed-switch p4, :pswitch_data_32

    .line 3018
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    goto :goto_1e

    .line 3008
    :pswitch_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3010
    :try_start_c
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_19

    .line 3013
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3014
    nop

    .line 3015
    goto :goto_2b

    .line 3013
    :catchall_19
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3014
    throw p1

    .line 3020
    :goto_1e
    :try_start_1e
    new-instance p4, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda5;

    invoke-direct {p4, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V

    invoke-interface {p2, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_2c

    .line 3022
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3023
    nop

    .line 3024
    nop

    .line 3027
    :goto_2b
    return-void

    .line 3022
    :catchall_2c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3023
    throw p1

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 2972
    invoke-direct {p0, p5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result p5

    if-eqz p5, :cond_1c

    .line 2973
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2975
    :try_start_a
    new-instance p5, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda6;

    invoke-direct {p5, p4, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, p5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    .line 2984
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2985
    nop

    .line 2986
    goto :goto_2c

    .line 2984
    :catchall_17
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2985
    throw p1

    .line 2987
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2989
    :try_start_20
    new-instance p5, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda7;

    invoke-direct {p5, p4, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, p5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_2d

    .line 2998
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2999
    nop

    .line 3001
    :goto_2c
    return-void

    .line 2998
    :catchall_2d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2999
    throw p1
.end method

.method private greylist-max-o scheduleCameraServiceReconnectionLocked()V
    .registers 6

    .line 3488
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3490
    return-void

    .line 3499
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_11 .. :try_end_1f} :catch_20

    .line 3512
    goto :goto_39

    .line 3510
    :catch_20
    move-exception v0

    .line 3511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to schedule camera service re-connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    :goto_39
    return-void
.end method

.method private blacklist shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z
    .registers 6

    .line 2575
    const/4 v0, 0x0

    if-nez p2, :cond_a

    invoke-static {p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result v1

    if-nez v1, :cond_a

    .line 2577
    return v0

    .line 2580
    :cond_a
    const/4 v1, 0x1

    if-eqz p2, :cond_10

    if-eq p2, v1, :cond_10

    .line 2581
    return v1

    .line 2583
    :cond_10
    invoke-static {p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result p2

    if-eq p1, p2, :cond_17

    move v0, v1

    :cond_17
    return v0
.end method

.method private static blacklist sortCameraIds([Ljava/lang/String;)V
    .registers 2

    .line 2543
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2571
    return-void
.end method

.method private greylist-max-o updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
    .registers 13

    .line 3044
    const/4 v6, 0x0

    move v7, v6

    :goto_2
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v7, v1, :cond_7a

    .line 3045
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3046
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v1

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v2

    invoke-direct {p0, v1, v2, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3047
    goto :goto_77

    .line 3050
    :cond_22
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/Integer;

    .line 3051
    invoke-static {v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3054
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-static {}, Landroid/hardware/camera2/CameraManager;->physicalCallbacksAreEnabledForUnavailableCamera()Z

    move-result v1

    if-eqz v1, :cond_77

    :cond_4a
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    .line 3055
    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 3056
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3057
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 3058
    invoke-static {v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3060
    goto :goto_5e

    .line 3044
    :cond_77
    :goto_77
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3064
    :cond_7a
    nop

    :goto_7b
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v6, v1, :cond_ac

    .line 3065
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3066
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v2

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v3

    invoke-direct {p0, v2, v3, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 3067
    goto :goto_a9

    .line 3070
    :cond_9a
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3071
    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 3064
    :goto_a9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7b

    .line 3073
    :cond_ac
    return-void
.end method

.method private greylist-max-o updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V
    .registers 7

    .line 3223
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 3224
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3225
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v2

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v3

    invoke-direct {p0, v2, v3, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3226
    goto :goto_33

    .line 3229
    :cond_20
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3230
    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 3223
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3232
    :cond_36
    return-void
.end method

.method private greylist-max-o validStatus(I)Z
    .registers 2

    .line 2918
    packed-switch p1, :pswitch_data_8

    .line 2925
    :pswitch_3
    const/4 p1, 0x0

    return p1

    .line 2923
    :pswitch_5
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_8
    .packed-switch -0x2
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private greylist-max-o validTorchStatus(I)Z
    .registers 2

    .line 2930
    packed-switch p1, :pswitch_data_8

    .line 2936
    const/4 p1, 0x0

    return p1

    .line 2934
    :pswitch_5
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 2348
    return-object p0
.end method

.method public whitelist binderDied()V
    .registers 5

    .line 3523
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3524
    :try_start_3
    const-string v1, "binderDied(E): tid(%d): mDeviceStatus size %d"

    .line 3526
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3525
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3524
    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 3529
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_2c

    monitor-exit v0

    return-void

    .line 3531
    :cond_2c
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    .line 3538
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_37
    const/4 v2, 0x0

    if-ltz v1, :cond_4f

    .line 3539
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3540
    invoke-direct {p0, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3542
    iget-boolean v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v2, :cond_4c

    .line 3543
    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraClosedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3538
    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_37

    .line 3547
    :cond_4f
    move v1, v2

    :goto_50
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_66

    .line 3548
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3549
    invoke-direct {p0, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3547
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 3553
    :cond_66
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 3555
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3557
    const-string v1, "binderDied(X): tid(%d): mDeviceStatus size %d"

    .line 3559
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3558
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3557
    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 3560
    monitor-exit v0

    .line 3561
    return-void

    .line 3560
    :catchall_93
    move-exception v1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_93

    throw v1
.end method

.method public blacklist cameraIdHasConcurrentStreams(Ljava/lang/String;II)Z
    .registers 7

    .line 2787
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2788
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2789
    const/4 v2, 0x0

    if-nez p3, :cond_9

    move p2, v2

    :cond_9
    invoke-direct {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    .line 2790
    iget-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 2796
    monitor-exit v0

    return v2

    .line 2798
    :cond_16
    iget-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 2799
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 2800
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 2802
    :cond_31
    goto :goto_1c

    .line 2803
    :cond_32
    monitor-exit v0

    return v2

    .line 2804
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist getCameraIdList(II)[Ljava/lang/String;
    .registers 4

    .line 2696
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2698
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2699
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractCameraIdListLocked(II)[Ljava/lang/String;

    move-result-object p1

    .line 2700
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 2701
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sortCameraIds([Ljava/lang/String;)V

    .line 2702
    return-object p1

    .line 2700
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public blacklist getCameraIdListNoLazy(II)[Ljava/lang/String;
    .registers 12

    .line 2597
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2598
    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    .line 2602
    :cond_8
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    .line 2634
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2635
    :try_start_10
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_cd

    .line 2637
    :try_start_13
    const-string v3, "getCameraIdListNoLazy(E): tid(%d): mDeviceStatus size %d"

    .line 2639
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 2637
    invoke-static {v3, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 2653
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v3, v0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v3

    .line 2654
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v4, v0}, Landroid/hardware/ICameraService;->removeListener(Landroid/hardware/ICameraServiceListener;)V

    .line 2655
    array-length v0, v3

    move v4, v1

    :goto_43
    if-ge v4, v0, :cond_58

    aget-object v5, v3, v4

    .line 2656
    iget v6, v5, Landroid/hardware/CameraStatus;->status:I

    new-instance v7, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    iget-object v8, v5, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    iget v5, v5, Landroid/hardware/CameraStatus;->deviceId:I

    invoke-direct {v7, v8, v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v6, v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 2655
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 2659
    :cond_58
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2660
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2661
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2666
    invoke-static {v3, v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->cameraStatusesContains([Landroid/hardware/CameraStatus;Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v6

    if-nez v6, :cond_7c

    .line 2667
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2669
    :cond_7c
    goto :goto_67

    .line 2670
    :cond_7d
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_81
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2671
    invoke-direct {p0, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 2672
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2673
    goto :goto_81

    .line 2674
    :cond_96
    const-string v0, "getCameraIdListNoLazy(X): tid(%d): mDeviceStatus size %d"

    .line 2676
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 2674
    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V
    :try_end_b9
    .catch Landroid/os/ServiceSpecificException; {:try_start_13 .. :try_end_b9} :catch_c4
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_b9} :catch_ba
    .catchall {:try_start_13 .. :try_end_b9} :catchall_cd

    .line 2683
    goto :goto_bb

    .line 2681
    :catch_ba
    move-exception v0

    .line 2684
    :goto_bb
    :try_start_bb
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractCameraIdListLocked(II)[Ljava/lang/String;

    move-result-object p1

    .line 2685
    monitor-exit v2
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_cd

    .line 2686
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sortCameraIds([Ljava/lang/String;)V

    .line 2687
    return-object p1

    .line 2677
    :catch_c4
    move-exception p1

    .line 2679
    :try_start_c5
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to register a camera service listener"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 2685
    :catchall_cd
    move-exception p1

    monitor-exit v2
    :try_end_cf
    .catchall {:try_start_c5 .. :try_end_cf} :catchall_cd

    throw p1
.end method

.method public greylist-max-o getCameraService()Landroid/hardware/ICameraService;
    .registers 4

    .line 2359
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2360
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2361
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_15

    sget-boolean v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v1, :cond_15

    .line 2362
    const-string v1, "CameraManagerGlobal"

    const-string v2, "Camera service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    :cond_15
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    monitor-exit v0

    return-object v1

    .line 2365
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public blacklist getConcurrentCameraIds(II)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2707
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2709
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2710
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractConcurrentCameraIdListLocked(II)Ljava/util/Set;

    move-result-object p1

    .line 2712
    monitor-exit v0

    .line 2714
    return-object p1

    .line 2712
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public blacklist getTorchStrengthLevel(Ljava/lang/String;Landroid/content/AttributionSourceState;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2873
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2874
    if-eqz p1, :cond_2d

    .line 2878
    :try_start_5
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_2b

    .line 2879
    const/4 v2, 0x2

    if-eqz v1, :cond_23

    .line 2885
    nop

    .line 2886
    :try_start_d
    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/ICameraService;->getTorchStrengthLevel(Ljava/lang/String;Landroid/content/AttributionSourceState;I)I

    move-result p1
    :try_end_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_d .. :try_end_11} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_14
    .catchall {:try_start_d .. :try_end_11} :catchall_2b

    .line 2893
    nop

    .line 2894
    :try_start_12
    monitor-exit v0

    .line 2895
    return p1

    .line 2890
    :catch_14
    move-exception p1

    .line 2891
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "Camera service is currently unavailable."

    invoke-direct {p1, v2, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2888
    :catch_1d
    move-exception p1

    .line 2889
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 2880
    :cond_23
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "Camera service is currently unavailable."

    invoke-direct {p1, v2, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2894
    :catchall_2b
    move-exception p1

    goto :goto_35

    .line 2875
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cameraId was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2894
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_12 .. :try_end_36} :catchall_2b

    throw p1
.end method

.method public blacklist injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2463
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2464
    :try_start_3
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2b

    .line 2465
    const/4 v2, 0x2

    if-eqz v1, :cond_23

    .line 2472
    :try_start_a
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Landroid/hardware/ICameraService;->injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_11} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_14
    .catchall {:try_start_a .. :try_end_11} :catchall_2b

    .line 2479
    nop

    .line 2480
    :try_start_12
    monitor-exit v0

    .line 2481
    return-void

    .line 2475
    :catch_14
    move-exception p1

    .line 2476
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "Camera service is currently unavailable."

    invoke-direct {p1, v2, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2473
    :catch_1d
    move-exception p1

    .line 2474
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 2466
    :cond_23
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "Camera service is currently unavailable."

    invoke-direct {p1, v2, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2480
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public blacklist isConcurrentSessionConfigurationSupported(Ljava/util/Map;ILandroid/content/AttributionSourceState;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/params/SessionConfiguration;",
            ">;I",
            "Landroid/content/AttributionSourceState;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2723
    if-eqz p1, :cond_ab

    .line 2727
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 2728
    if-eqz v0, :cond_a3

    .line 2732
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2735
    nop

    .line 2736
    :try_start_c
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 2737
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 2738
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_48

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2739
    new-instance v9, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2742
    if-nez p4, :cond_3f

    .line 2743
    move v10, v3

    goto :goto_41

    .line 2744
    :cond_3f
    iget v10, p3, Landroid/content/AttributionSourceState;->deviceId:I

    :goto_41
    invoke-direct {v9, v8, v10}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    .line 2739
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2745
    goto :goto_2d

    .line 2746
    :cond_48
    invoke-interface {v5, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 2747
    const/4 v4, 0x1

    .line 2749
    :cond_4f
    goto :goto_14

    .line 2750
    :cond_50
    if-nez v4, :cond_5b

    .line 2751
    const-string p1, "CameraManagerGlobal"

    const-string p2, "isConcurrentSessionConfigurationSupported called with a subset of camera ids not returned by getConcurrentCameraIds"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    monitor-exit v1

    return v3

    .line 2755
    :cond_5b
    new-array v0, v0, [Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 2757
    nop

    .line 2759
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2760
    new-instance v4, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 2761
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-direct {v4, v5, v2}, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;-><init>(Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;)V

    aput-object v4, v0, v3
    :try_end_85
    .catchall {:try_start_c .. :try_end_85} :catchall_a0

    .line 2762
    add-int/lit8 v3, v3, 0x1

    .line 2763
    goto :goto_66

    .line 2765
    :cond_88
    :try_start_88
    iget-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {p1, v0, p2, p3, p4}, Landroid/hardware/ICameraService;->isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;ILandroid/content/AttributionSourceState;I)Z

    move-result p1
    :try_end_8e
    .catch Landroid/os/ServiceSpecificException; {:try_start_88 .. :try_end_8e} :catch_9a
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_8e} :catch_90
    .catchall {:try_start_88 .. :try_end_8e} :catchall_a0

    :try_start_8e
    monitor-exit v1

    return p1

    .line 2769
    :catch_90
    move-exception p1

    .line 2771
    new-instance p2, Landroid/hardware/camera2/CameraAccessException;

    const-string p3, "Camera service is currently unavailable"

    const/4 p4, 0x2

    invoke-direct {p2, p4, p3, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 2767
    :catch_9a
    move-exception p1

    .line 2768
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 2774
    :catchall_a0
    move-exception p1

    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_8e .. :try_end_a2} :catchall_a0

    throw p1

    .line 2729
    :cond_a3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "camera id and session combination is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2724
    :cond_ab
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cameraIdsAndSessionConfigurations was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist onCameraAccessPrioritiesChanged()V
    .registers 6

    .line 3408
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3409
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3410
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_22

    .line 3411
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 3412
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3414
    invoke-direct {p0, v4, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleAccessPriorityChangeUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 3410
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3416
    :cond_22
    monitor-exit v0

    .line 3417
    return-void

    .line 3416
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist onCameraClosed(Ljava/lang/String;I)V
    .registers 5

    .line 3463
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3464
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraClosedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3465
    monitor-exit v0

    .line 3466
    return-void

    .line 3465
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public blacklist onCameraOpened(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 3426
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3427
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraOpenedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V

    .line 3428
    monitor-exit v0

    .line 3429
    return-void

    .line 3428
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public blacklist onCameraOpenedInSharedMode(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 5

    .line 3422
    return-void
.end method

.method public blacklist onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3383
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3384
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p2, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onPhysicalCameraStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V

    .line 3386
    monitor-exit v0

    .line 3387
    return-void

    .line 3386
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public blacklist onStatusChanged(ILjava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3369
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3370
    :try_start_3
    const-string v1, "onStatusChanged(E): tid(%d): mDeviceStatus size %d"

    .line 3372
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3371
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3370
    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 3373
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p2, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3374
    const-string p1, "onStatusChanged(X): tid(%d): mDeviceStatus size %d"

    .line 3376
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 3375
    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3374
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 3377
    monitor-exit v0

    .line 3378
    return-void

    .line 3377
    :catchall_53
    move-exception p1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public blacklist onTorchStatusChanged(ILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3392
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3393
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p2, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3394
    monitor-exit v0

    .line 3395
    return-void

    .line 3394
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public blacklist onTorchStrengthLevelChanged(Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3400
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3401
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStrengthLevelChangedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;I)V

    .line 3403
    monitor-exit v0

    .line 3404
    return-void

    .line 3403
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public blacklist registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;ZII)V
    .registers 7

    .line 3302
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3305
    :try_start_3
    iput-boolean p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    .line 3306
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 3308
    invoke-static {p1, p4}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;I)V

    .line 3309
    invoke-static {p1, p5}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;I)V

    .line 3311
    iget-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/Executor;

    .line 3313
    if-nez p3, :cond_1b

    .line 3314
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 3318
    :cond_1b
    iget-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez p1, :cond_22

    .line 3319
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3321
    :cond_22
    monitor-exit v0

    .line 3322
    return-void

    .line 3321
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public blacklist registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)V
    .registers 6

    .line 2321
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2322
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_22

    .line 2323
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CameraManagerGlobal"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandlerThread:Landroid/os/HandlerThread;

    .line 2324
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 2325
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandler:Landroid/os/Handler;

    .line 2328
    :cond_22
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    if-nez v1, :cond_56

    .line 2329
    new-instance v1, Landroid/hardware/camera2/CameraManager$FoldStateListener;

    invoke-direct {v1, p2}, Landroid/hardware/camera2/CameraManager$FoldStateListener;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_61

    .line 2331
    :try_start_2d
    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    invoke-virtual {p2, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_41} :catch_42
    .catchall {:try_start_2d .. :try_end_41} :catchall_61

    .line 2339
    goto :goto_56

    .line 2333
    :catch_42
    move-exception p1

    .line 2334
    const/4 p1, 0x0

    :try_start_44
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    .line 2335
    const-string p1, "CameraManagerGlobal"

    const-string p2, "Failed to register device state listener!"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    const-string p1, "CameraManagerGlobal"

    const-string p2, "Device state dependent characteristics updates will not befunctional!"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    monitor-exit v0

    return-void

    .line 2342
    :cond_56
    :goto_56
    iget-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getDeviceStateListener()Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->addDeviceStateListener(Landroid/hardware/camera2/CameraManager$DeviceStateListener;)V

    .line 2343
    monitor-exit v0

    .line 2344
    return-void

    .line 2343
    :catchall_61
    move-exception p1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_44 .. :try_end_63} :catchall_61

    throw p1
.end method

.method public blacklist registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;II)V
    .registers 6

    .line 3338
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3339
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 3341
    invoke-static {p1, p3}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fputmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;I)V

    .line 3342
    invoke-static {p1, p4}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fputmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;I)V

    .line 3344
    iget-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/Executor;

    .line 3346
    if-nez p3, :cond_19

    .line 3347
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 3351
    :cond_19
    iget-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez p1, :cond_20

    .line 3352
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3354
    :cond_20
    monitor-exit v0

    .line 3355
    return-void

    .line 3354
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public blacklist setTorchMode(Ljava/lang/String;ZLandroid/content/AttributionSourceState;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2813
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2814
    if-eqz p1, :cond_33

    .line 2818
    :try_start_5
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_30

    .line 2819
    const/4 v8, 0x2

    if-eqz v2, :cond_28

    .line 2825
    :try_start_c
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/hardware/ICameraService;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;Landroid/content/AttributionSourceState;I)V
    :try_end_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_15} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_18
    .catchall {:try_start_c .. :try_end_15} :catchall_30

    .line 2832
    nop

    .line 2833
    :try_start_16
    monitor-exit v1

    .line 2834
    return-void

    .line 2829
    :catch_18
    move-exception v0

    .line 2830
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "Camera service is currently unavailable"

    invoke-direct {p1, v8, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2827
    :catch_21
    move-exception v0

    move-object p1, v0

    .line 2828
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 2820
    :cond_28
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "Camera service is currently unavailable"

    invoke-direct {p1, v8, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2833
    :catchall_30
    move-exception v0

    move-object p1, v0

    goto :goto_3b

    .line 2815
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cameraId was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2833
    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_16 .. :try_end_3c} :catchall_30

    throw p1
.end method

.method public blacklist turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/content/AttributionSourceState;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2842
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2843
    if-eqz p1, :cond_33

    .line 2847
    :try_start_5
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_30

    .line 2848
    const/4 v8, 0x2

    if-eqz v2, :cond_28

    .line 2854
    :try_start_c
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/hardware/ICameraService;->turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;Landroid/content/AttributionSourceState;I)V
    :try_end_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_15} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_18
    .catchall {:try_start_c .. :try_end_15} :catchall_30

    .line 2865
    nop

    .line 2866
    :try_start_16
    monitor-exit v1

    .line 2867
    return-void

    .line 2862
    :catch_18
    move-exception v0

    .line 2863
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "Camera service is currently unavailable."

    invoke-direct {p1, v8, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2860
    :catch_21
    move-exception v0

    move-object p1, v0

    .line 2861
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 2849
    :cond_28
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "Camera service is currently unavailable."

    invoke-direct {p1, v8, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2866
    :catchall_30
    move-exception v0

    move-object p1, v0

    goto :goto_3b

    .line 2844
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cameraId was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2866
    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_16 .. :try_end_3c} :catchall_30

    throw p1
.end method

.method public greylist-max-o unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 4

    .line 3331
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3332
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3333
    monitor-exit v0

    .line 3334
    return-void

    .line 3333
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public greylist-max-o unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .registers 4

    .line 3358
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3359
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3360
    monitor-exit v0

    .line 3361
    return-void

    .line 3360
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
