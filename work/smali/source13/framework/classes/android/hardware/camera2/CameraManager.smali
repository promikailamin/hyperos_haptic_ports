.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;,
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;,
        Landroid/hardware/camera2/CameraManager$FoldStateListener;,
        Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o API_VERSION_1:I = 0x1

.field private static final greylist-max-o API_VERSION_2:I = 0x2

.field private static final blacklist CAMERA_OPEN_CLOSE_LISTENER_PERMISSION:Ljava/lang/String; = "android.permission.CAMERA_OPEN_CLOSE_LISTENER"

.field private static final greylist-max-o CAMERA_TYPE_ALL:I = 0x1

.field private static final greylist-max-o CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CameraManager"

.field private static final greylist-max-o USE_CALLING_UID:I = -0x1


# instance fields
.field private final greylist-max-o DEBUG:Z

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeviceStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/camera2/CameraManager$DeviceStateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

.field private blacklist mFoldedDeviceState:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mHasOpenCloseListenerPermission:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceStateListeners(Landroid/hardware/camera2/CameraManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager;->mDeviceStateListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/hardware/camera2/CameraManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFoldedDeviceState(Landroid/hardware/camera2/CameraManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/camera2/CameraManager;->mFoldedDeviceState:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-string v0, "debug.camera.enable_log_framework"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    const-string v0, "debug.camera.enable_log_manager"

    .line 106
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    move v0, v1

    goto :goto_19

    :cond_18
    :goto_18
    move v0, v2

    :goto_19
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/CameraManager;->mDeviceStateListeners:Ljava/util/ArrayList;

    .line 130
    monitor-enter v0

    .line 131
    :try_start_2a
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 132
    const-string v3, "android.permission.CAMERA_OPEN_CLOSE_LISTENER"

    .line 133
    invoke-virtual {p1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_35

    move v1, v2

    :cond_35
    iput-boolean v1, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    .line 135
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_87

    .line 137
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 138
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 139
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Landroid/hardware/camera2/CameraManager$FoldStateListener;

    invoke-direct {v0, p0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;-><init>(Landroid/hardware/camera2/CameraManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    .line 142
    :try_start_58
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    :try_end_6c
    .catch Ljava/lang/IllegalStateException; {:try_start_58 .. :try_end_6c} :catch_6d

    .line 150
    goto :goto_86

    .line 144
    :catch_6d
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "CameraManager"

    const-string v2, "Failed to register device state listener!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v1, "CameraManager"

    const-string v2, "Device state dependent characteristics updates will not be functional!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager;->mHandler:Landroid/os/Handler;

    .line 149
    iput-object v1, p0, Landroid/hardware/camera2/CameraManager;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    .line 151
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_86
    return-void

    .line 135
    :catchall_87
    move-exception v1

    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v1
.end method

.method private blacklist getDisplaySize()Landroid/util/Size;
    .registers 9

    .line 475
    const-string v0, "CameraManager"

    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    .line 478
    .local v1, "ret":Landroid/util/Size;
    :try_start_8
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    const-string v4, "display"

    .line 479
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 480
    .local v3, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 481
    .local v2, "display":Landroid/view/Display;
    if-eqz v2, :cond_32

    .line 482
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 483
    .local v4, "sz":Landroid/graphics/Point;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 484
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 485
    .local v5, "width":I
    iget v6, v4, Landroid/graphics/Point;->y:I

    .line 487
    .local v6, "height":I
    if-le v6, v5, :cond_2a

    .line 488
    move v6, v5

    .line 489
    iget v7, v4, Landroid/graphics/Point;->y:I

    move v5, v7

    .line 492
    :cond_2a
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v5, v6}, Landroid/util/Size;-><init>(II)V

    move-object v0, v7

    .line 493
    .end local v1    # "ret":Landroid/util/Size;
    .end local v4    # "sz":Landroid/graphics/Point;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .local v0, "ret":Landroid/util/Size;
    move-object v1, v0

    goto :goto_37

    .line 494
    .end local v0    # "ret":Landroid/util/Size;
    .restart local v1    # "ret":Landroid/util/Size;
    :cond_32
    const-string v4, "Invalid default display!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_37} :catch_38

    .line 498
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displayManager":Landroid/hardware/display/DisplayManager;
    :goto_37
    goto :goto_4f

    .line 496
    :catch_38
    move-exception v2

    .line 497
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplaySize Failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4f
    return-object v1
.end method

.method private blacklist getPhysicalCameraMultiResolutionConfigs(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Ljava/util/Map;
    .registers 11
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "cameraService"    # Landroid/hardware/ICameraService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/ICameraService;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 517
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 520
    .local v0, "multiResolutionStreamConfigurations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_SUPPORTED:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 522
    .local v1, "multiResolutionStreamSupported":Ljava/lang/Boolean;
    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_6c

    .line 530
    :cond_16
    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v2

    .line 531
    .local v2, "physicalCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isUltraHighResolutionSensor()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 532
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 534
    .local v3, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    if-eqz v3, :cond_33

    .line 535
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    :cond_33
    return-object v0

    .line 540
    .end local v3    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_34
    :try_start_34
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 541
    .local v4, "physicalCameraId":Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 543
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 542
    invoke-interface {p3, v4, v5}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    .line 544
    .local v5, "physicalCameraInfo":Landroid/hardware/camera2/impl/CameraMetadataNative;
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 547
    .local v6, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    if-eqz v6, :cond_5d

    .line 548
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_5d} :catch_5f

    .line 550
    .end local v4    # "physicalCameraId":Ljava/lang/String;
    .end local v5    # "physicalCameraInfo":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v6    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_5d
    goto :goto_38

    .line 556
    :cond_5e
    goto :goto_6b

    .line 551
    :catch_5f
    move-exception v3

    .line 552
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/os/ServiceSpecificException;

    const/4 v5, 0x4

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v4, v5, v6}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 555
    .local v4, "sse":Landroid/os/ServiceSpecificException;
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 558
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "sse":Landroid/os/ServiceSpecificException;
    :goto_6b
    return-object v0

    .line 523
    .end local v2    # "physicalCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6c
    :goto_6c
    return-object v0
.end method

.method private blacklist getPhysicalIdToCharsMap(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;
    .registers 7
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 671
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 673
    .local v0, "physicalIdsToChars":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v1

    .line 674
    .local v1, "physicalCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 675
    .local v3, "physicalCameraId":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 676
    .local v4, "physicalChars":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    .end local v3    # "physicalCameraId":Ljava/lang/String;
    .end local v4    # "physicalChars":Landroid/hardware/camera2/CameraCharacteristics;
    goto :goto_d

    .line 678
    :cond_21
    return-object v0
.end method

.method public static blacklist isHiddenPhysicalCamera(Ljava/lang/String;)Z
    .registers 3
    .param p0, "cameraId"    # Ljava/lang/String;

    .line 1470
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 1472
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    if-nez v1, :cond_c

    return v0

    .line 1474
    :cond_c
    invoke-interface {v1, p0}, Landroid/hardware/ICameraService;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_11

    return v0

    .line 1475
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :catch_11
    move-exception v1

    .line 1478
    return v0
.end method

.method private blacklist openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;II)Landroid/hardware/camera2/CameraDevice;
    .registers 29
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "uid"    # I
    .param p5, "oomScoreOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 707
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v10

    .line 708
    .local v10, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v11, 0x0

    .line 709
    .local v11, "device":Landroid/hardware/camera2/CameraDevice;
    nop

    .line 710
    invoke-direct {v1, v10}, Landroid/hardware/camera2/CameraManager;->getPhysicalIdToCharsMap(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;

    move-result-object v12

    .line 711
    .local v12, "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    iget-object v13, v1, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 713
    const/4 v14, 0x0

    .line 714
    .local v14, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_10
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v2, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 721
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v9, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v10

    move-object v7, v12

    invoke-direct/range {v2 .. v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/Map;ILandroid/content/Context;)V

    move-object v2, v0

    .line 724
    .local v2, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    move-result-object v16

    .line 726
    .local v16, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static {}, Lmiui/utils/GetCameraOccupierStub;->getInstance()Lmiui/utils/GetCameraOccupierStub;

    move-result-object v0

    invoke-interface {v0}, Lmiui/utils/GetCameraOccupierStub;->setCoveredPackageName()V

    .line 730
    iget-object v0, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    move-object v3, v0

    .line 731
    .local v3, "manager":Landroid/app/ActivityManager;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    .line 732
    .local v4, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v0, "default"

    .line 733
    .local v0, "activityName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7b

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7b

    .line 734
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 735
    const-string v5, "CameraManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Open camera top activityName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_10 .. :try_end_79} :catchall_120

    move-object v5, v0

    goto :goto_7c

    .line 740
    :cond_7b
    move-object v5, v0

    .end local v0    # "activityName":Ljava/lang/String;
    .local v5, "activityName":Ljava/lang/String;
    :goto_7c
    const/4 v6, 0x4

    :try_start_7d
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 741
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v0, :cond_c1

    .line 746
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 747
    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    iget-object v7, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v19

    iget-object v7, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 748
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 746
    move-object v15, v0

    move-object/from16 v17, p1

    move/from16 v20, p4

    move/from16 v21, p5

    move/from16 v22, v7

    invoke-interface/range {v15 .. v22}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v6

    move-object v14, v6

    .line 779
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_c0
    :goto_c0
    goto :goto_112

    .line 742
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_c1
    new-instance v7, Landroid/os/ServiceSpecificException;

    const-string v8, "Camera service is currently unavailable"

    invoke-direct {v7, v6, v8}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .end local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v3    # "manager":Landroid/app/ActivityManager;
    .end local v4    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "activityName":Ljava/lang/String;
    .end local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v11    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local v12    # "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local v14    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v16    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "uid":I
    .end local p5    # "oomScoreOffset":I
    throw v7
    :try_end_c9
    .catch Landroid/os/ServiceSpecificException; {:try_start_7d .. :try_end_c9} :catch_d9
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_c9} :catch_c9
    .catchall {:try_start_7d .. :try_end_c9} :catchall_120

    .line 772
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local v3    # "manager":Landroid/app/ActivityManager;
    .restart local v4    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v5    # "activityName":Ljava/lang/String;
    .restart local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v11    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local v12    # "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local v14    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v16    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "uid":I
    .restart local p5    # "oomScoreOffset":I
    :catch_c9
    move-exception v0

    .line 774
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_ca
    new-instance v7, Landroid/os/ServiceSpecificException;

    const-string v8, "Camera service is currently unavailable"

    invoke-direct {v7, v6, v8}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    move-object v6, v7

    .line 777
    .local v6, "sse":Landroid/os/ServiceSpecificException;
    invoke-virtual {v2, v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 778
    invoke-static {v6}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_112

    .line 749
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "sse":Landroid/os/ServiceSpecificException;
    :catch_d9
    move-exception v0

    .line 750
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v7, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v8, 0x9

    if-eq v7, v8, :cond_118

    .line 752
    iget v7, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v8, 0x6

    const/4 v9, 0x7

    if-eq v7, v9, :cond_ff

    iget v7, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v15, 0x8

    if-eq v7, v15, :cond_ff

    iget v7, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v7, v8, :cond_ff

    iget v7, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v7, v6, :cond_ff

    iget v7, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v15, 0xa

    if-ne v7, v15, :cond_fb

    goto :goto_ff

    .line 770
    :cond_fb
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_c0

    .line 760
    :cond_ff
    :goto_ff
    invoke-virtual {v2, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 762
    iget v7, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v7, v8, :cond_10e

    iget v7, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v7, v6, :cond_10e

    iget v6, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-ne v6, v9, :cond_c0

    .line 766
    :cond_10e
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_c0

    .line 786
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :goto_112
    invoke-virtual {v2, v14}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V

    .line 787
    move-object v11, v2

    .line 788
    .end local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v3    # "manager":Landroid/app/ActivityManager;
    .end local v4    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "activityName":Ljava/lang/String;
    .end local v14    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v16    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    monitor-exit v13

    .line 790
    return-object v11

    .line 751
    .restart local v0    # "e":Landroid/os/ServiceSpecificException;
    .restart local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local v3    # "manager":Landroid/app/ActivityManager;
    .restart local v4    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v5    # "activityName":Ljava/lang/String;
    .restart local v14    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v16    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    :cond_118
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Should\'ve gone down the shim path"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v11    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local v12    # "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "uid":I
    .end local p5    # "oomScoreOffset":I
    throw v6

    .line 788
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v3    # "manager":Landroid/app/ActivityManager;
    .end local v4    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "activityName":Ljava/lang/String;
    .end local v14    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v16    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v11    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local v12    # "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "uid":I
    .restart local p5    # "oomScoreOffset":I
    :catchall_120
    move-exception v0

    monitor-exit v13
    :try_end_122
    .catchall {:try_start_ca .. :try_end_122} :catchall_120

    throw v0
.end method

.method public static greylist-max-o throwAsPublicException(Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1413
    instance-of v0, p0, Landroid/os/ServiceSpecificException;

    if-eqz v0, :cond_38

    .line 1414
    move-object v0, p0

    check-cast v0, Landroid/os/ServiceSpecificException;

    .line 1415
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const/4 v1, 0x3

    .line 1416
    .local v1, "reason":I
    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v2, :pswitch_data_5a

    .line 1440
    :pswitch_d
    const/4 v1, 0x3

    goto :goto_2e

    .line 1430
    :pswitch_f
    const/16 v1, 0x3e8

    .line 1431
    goto :goto_2e

    .line 1427
    :pswitch_12
    const/4 v1, 0x5

    .line 1428
    goto :goto_2e

    .line 1424
    :pswitch_14
    const/4 v1, 0x4

    .line 1425
    goto :goto_2e

    .line 1421
    :pswitch_16
    const/4 v1, 0x1

    .line 1422
    goto :goto_2e

    .line 1418
    :pswitch_18
    const/4 v1, 0x2

    .line 1419
    goto :goto_2e

    .line 1434
    :pswitch_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1436
    :pswitch_24
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1442
    :goto_2e
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1443
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v1    # "reason":I
    :cond_38
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-nez v0, :cond_51

    .line 1447
    instance-of v0, p0, Landroid/os/RemoteException;

    if-nez v0, :cond_49

    .line 1450
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_45

    .line 1454
    return-void

    .line 1451
    :cond_45
    move-object v0, p0

    check-cast v0, Ljava/lang/RuntimeException;

    .line 1452
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 1448
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1444
    :cond_51
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x2

    const-string v2, "Camera service has died unexpectedly"

    invoke-direct {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_1a
        :pswitch_1a
        :pswitch_18
        :pswitch_d
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public whitelist getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 14
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-boolean v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v1, :cond_b3

    .line 593
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 594
    :try_start_8
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_b0

    .line 595
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    const/4 v3, 0x2

    if-eqz v2, :cond_a8

    .line 600
    :try_start_13
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getDisplaySize()Landroid/util/Size;

    move-result-object v4

    .line 602
    .local v4, "displaySize":Landroid/util/Size;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 603
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 602
    invoke-interface {v2, p1, v5}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5
    :try_end_23
    .catch Landroid/os/ServiceSpecificException; {:try_start_13 .. :try_end_23} :catch_9e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_23} :catch_95
    .catchall {:try_start_13 .. :try_end_23} :catchall_b0

    .line 605
    .local v5, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_start_23
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setCameraId(I)V
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2a} :catch_2b
    .catch Landroid/os/ServiceSpecificException; {:try_start_23 .. :try_end_2a} :catch_9e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_95
    .catchall {:try_start_23 .. :try_end_2a} :catchall_b0

    .line 608
    goto :goto_4a

    .line 606
    :catch_2b
    move-exception v6

    .line 607
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_2c
    const-string v7, "CameraManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse camera Id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to integer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_4a
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->cameraIdHasConcurrentStreamsLocked(Ljava/lang/String;)Z

    move-result v6

    .line 612
    .local v6, "hasConcurrentStreams":Z
    invoke-virtual {v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setHasMandatoryConcurrentStreams(Z)V

    .line 613
    invoke-virtual {v5, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setDisplaySize(Landroid/util/Size;)V

    .line 615
    nop

    .line 616
    invoke-direct {p0, p1, v5, v2}, Landroid/hardware/camera2/CameraManager;->getPhysicalCameraMultiResolutionConfigs(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Ljava/util/Map;

    move-result-object v7

    .line 617
    .local v7, "multiResolutionSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_66

    .line 618
    invoke-virtual {v5, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setMultiResolutionStreamConfigurationMap(Ljava/util/Map;)V

    .line 622
    :cond_66
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v9, v8, :cond_85

    .line 623
    invoke-static {}, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->isExposeFrontFlash()Z

    move-result v8

    .line 624
    .local v8, "exposeFrontFlash":Z
    const-string v10, "camera_front_flash_package_list"

    invoke-static {v10}, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->isWhiteListValid(Ljava/lang/String;)Z

    move-result v10

    .line 625
    .local v10, "exposeFrontFlashListValid":Z
    if-ne v9, v10, :cond_85

    if-nez v8, :cond_85

    .line 626
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v5, v9, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 631
    .end local v8    # "exposeFrontFlash":Z
    .end local v10    # "exposeFrontFlashListValid":Z
    :cond_85
    new-instance v8, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v8, v5}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    move-object v0, v8

    .line 633
    iget-object v8, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->setAppName(Ljava/lang/String;)V
    :try_end_94
    .catch Landroid/os/ServiceSpecificException; {:try_start_2c .. :try_end_94} :catch_9e
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_94} :catch_95
    .catchall {:try_start_2c .. :try_end_94} :catchall_b0

    .end local v4    # "displaySize":Landroid/util/Size;
    .end local v5    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v6    # "hasConcurrentStreams":Z
    .end local v7    # "multiResolutionSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    goto :goto_a2

    .line 637
    :catch_95
    move-exception v4

    .line 639
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_96
    new-instance v5, Landroid/hardware/camera2/CameraAccessException;

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v5, v3, v6, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v5

    .line 635
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :catch_9e
    move-exception v3

    .line 636
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 641
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :goto_a2
    nop

    .line 642
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_96 .. :try_end_a4} :catchall_b0

    .line 643
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager;->registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 644
    return-object v0

    .line 596
    .restart local v2    # "cameraService":Landroid/hardware/ICameraService;
    :cond_a8
    :try_start_a8
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v4, v3, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v4

    .line 642
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :catchall_b0
    move-exception v2

    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_b0

    throw v2

    .line 591
    :cond_b3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No cameras available on device"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getCameraExtensionCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 665
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 666
    .local v0, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    new-instance v1, Landroid/hardware/camera2/CameraExtensionCharacteristics;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-object v1
.end method

.method public whitelist getCameraIdList()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 237
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCameraIdListNoLazy()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 252
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdListNoLazy()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConcurrentCameraIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 304
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getConcurrentCameraIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTorchStrengthLevel(Ljava/lang/String;)I
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1176
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_d

    .line 1179
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getTorchStrengthLevel(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1177
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No camera available on device."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "internalCamId"    # Ljava/lang/String;
    .param p3, "externalCamId"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1513
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_44

    .line 1516
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 1517
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v0, :cond_3b

    .line 1521
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1523
    :try_start_11
    new-instance v2, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-direct {v2, p5, p4}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;-><init>(Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;Ljava/util/concurrent/Executor;)V

    .line 1525
    .local v2, "injectionSessionImpl":Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    nop

    .line 1526
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->getCallback()Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

    move-result-object v3

    .line 1527
    .local v3, "cameraInjectionCallback":Landroid/hardware/camera2/ICameraInjectionCallback;
    invoke-interface {v0, p1, p2, p3, v3}, Landroid/hardware/ICameraService;->injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;

    move-result-object v4

    .line 1529
    .local v4, "injectionSession":Landroid/hardware/camera2/ICameraInjectionSession;
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->setRemoteInjectionSession(Landroid/hardware/camera2/ICameraInjectionSession;)V
    :try_end_22
    .catch Landroid/os/ServiceSpecificException; {:try_start_11 .. :try_end_22} :catch_32
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_22} :catch_25
    .catchall {:try_start_11 .. :try_end_22} :catchall_23

    .end local v2    # "injectionSessionImpl":Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    .end local v3    # "cameraInjectionCallback":Landroid/hardware/camera2/ICameraInjectionCallback;
    .end local v4    # "injectionSession":Landroid/hardware/camera2/ICameraInjectionSession;
    goto :goto_36

    .line 1539
    :catchall_23
    move-exception v2

    goto :goto_39

    .line 1532
    :catch_25
    move-exception v2

    .line 1534
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_26
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/4 v4, 0x4

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v3, v4, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 1537
    .local v3, "sse":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_37

    .line 1530
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "sse":Landroid/os/ServiceSpecificException;
    :catch_32
    move-exception v2

    .line 1531
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 1538
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    :goto_36
    nop

    .line 1539
    :goto_37
    monitor-exit v1

    .line 1540
    return-void

    .line 1539
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_23

    throw v2

    .line 1518
    :cond_3b
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1514
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isConcurrentSessionConfigurationSupported(Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/params/SessionConfiguration;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 342
    .local p1, "cameraIdAndSessionConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 343
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 342
    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isConcurrentSessionConfigurationSupported(Ljava/util/Map;I)Z

    move-result v0

    return v0
.end method

.method public whitelist openCamera(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 11
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "oomScoreOffset"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 976
    if-eqz p3, :cond_17

    .line 979
    if-ltz p2, :cond_e

    .line 983
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;II)V

    .line 984
    return-void

    .line 980
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "oomScoreOffset < 0, cannot increase priority of camera client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 875
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V

    .line 877
    return-void
.end method

.method public whitelist openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 912
    if-eqz p2, :cond_7

    .line 915
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p3, p2, v0}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V

    .line 916
    return-void

    .line 913
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V
    .registers 11
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "clientUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1043
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;II)V

    .line 1044
    return-void
.end method

.method public blacklist openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;II)V
    .registers 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "clientUid"    # I
    .param p5, "oomScoreOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1008
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/enterprise/RestrictionsHelper;->isCameraRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ep not allow open Camera2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return-void

    .line 1013
    :cond_21
    if-eqz p1, :cond_3d

    .line 1015
    if-eqz p2, :cond_35

    .line 1018
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_2d

    .line 1022
    invoke-direct/range {p0 .. p5}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;II)Landroid/hardware/camera2/CameraDevice;

    .line 1023
    return-void

    .line 1019
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1014
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 375
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 376
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    .line 375
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Z)V

    .line 377
    return-void
.end method

.method public whitelist registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 394
    if-eqz p1, :cond_c

    .line 397
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    invoke-virtual {v0, p2, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Z)V

    .line 399
    return-void

    .line 395
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 6
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 213
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getDeviceStateListener()Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    move-result-object v1

    .line 215
    .local v1, "listener":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    iget-boolean v2, p0, Landroid/hardware/camera2/CameraManager;->mFoldedDeviceState:Z

    invoke-interface {v1, v2}, Landroid/hardware/camera2/CameraManager$DeviceStateListener;->onDeviceStateChanged(Z)V

    .line 216
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    if-eqz v2, :cond_1a

    .line 217
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mDeviceStateListeners:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v1    # "listener":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    :cond_1a
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public whitelist registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 436
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 437
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 436
    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 438
    return-void
.end method

.method public whitelist registerTorchCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 455
    if-eqz p1, :cond_a

    .line 458
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 459
    return-void

    .line 456
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTorchMode(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1087
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_c

    .line 1090
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    .line 1091
    return-void

    .line 1088
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist turnOnTorchWithStrengthLevel(Ljava/lang/String;I)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "torchStrength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1150
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_c

    .line 1153
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->turnOnTorchWithStrengthLevel(Ljava/lang/String;I)V

    .line 1154
    return-void

    .line 1151
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No camera available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 410
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 411
    return-void
.end method

.method public whitelist unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 470
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 471
    return-void
.end method
