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


# static fields
.field private static final greylist-max-o CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CameraManagerGlobal"

.field private static final greylist-max-o gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

.field public static final greylist-max-o sCameraServiceDisabled:Z


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
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDeviceStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasOpenCloseListenerPermission:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final blacklist mOpenedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
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

.field private greylist-max-o mTorchClientBinder:Landroid/os/Binder;

.field private final greylist-max-o mTorchStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUnavailablePhysicalDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1558
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 1601
    nop

    .line 1602
    const-string v0, "config.disable_cameraservice"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    .line 1601
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 4

    .line 1599
    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    .line 1552
    const-string v0, "debug.camera.enable_log_framework"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    .line 1553
    const-string v0, "debug.camera.enable_log_manager"

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
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    .line 1555
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->CAMERA_SERVICE_RECONNECT_DELAY_MS:I

    .line 1566
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1568
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    .line 1570
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    .line 1573
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    .line 1575
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    .line 1579
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    .line 1583
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    .line 1586
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    .line 1589
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    .line 1592
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    .line 1596
    iput-boolean v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    .line 1599
    return-void
.end method

.method public static blacklist cameraStatusesContains([Landroid/hardware/CameraStatus;Ljava/lang/String;)Z
    .registers 7
    .param p0, "cameraStatuses"    # [Landroid/hardware/CameraStatus;
    .param p1, "id"    # Ljava/lang/String;

    .line 1798
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p0, v2

    .line 1799
    .local v3, "c":Landroid/hardware/CameraStatus;
    iget-object v4, v3, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1800
    const/4 v0, 0x1

    return v0

    .line 1798
    .end local v3    # "c":Landroid/hardware/CameraStatus;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1803
    :cond_14
    return v1
.end method

.method private greylist-max-o connectCameraServiceLocked()V
    .registers 13

    .line 1638
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v0, :cond_9e

    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-eqz v0, :cond_a

    goto/16 :goto_9e

    .line 1640
    :cond_a
    const-string v0, "CameraManagerGlobal"

    const-string v1, "Connecting to camera service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    const-string/jumbo v0, "media.camera"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1643
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_1b

    .line 1645
    return-void

    .line 1648
    :cond_1b
    const/4 v1, 0x0

    :try_start_1c
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_9c

    .line 1652
    nop

    .line 1654
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v2

    .line 1657
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    :try_start_24
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setupGlobalVendorTagDescriptor()V
    :try_end_27
    .catch Landroid/os/ServiceSpecificException; {:try_start_24 .. :try_end_27} :catch_28

    .line 1660
    goto :goto_2c

    .line 1658
    :catch_28
    move-exception v3

    .line 1659
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V

    .line 1663
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :goto_2c
    :try_start_2c
    invoke-interface {v2, p0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v3

    .line 1667
    .local v3, "cameraStatuses":[Landroid/hardware/CameraStatus;
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    .line 1668
    array-length v4, v3

    move v5, v1

    :goto_34
    if-ge v5, v4, :cond_6e

    aget-object v6, v3, v5

    .line 1669
    .local v6, "c":Landroid/hardware/CameraStatus;
    iget v7, v6, Landroid/hardware/CameraStatus;->status:I

    iget-object v8, v6, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 1671
    iget-object v7, v6, Landroid/hardware/CameraStatus;->unavailablePhysicalCameras:[Ljava/lang/String;

    if-eqz v7, :cond_53

    .line 1672
    iget-object v7, v6, Landroid/hardware/CameraStatus;->unavailablePhysicalCameras:[Ljava/lang/String;

    array-length v8, v7

    move v9, v1

    :goto_47
    if-ge v9, v8, :cond_53

    aget-object v10, v7, v9

    .line 1673
    .local v10, "unavailPhysicalCamera":Ljava/lang/String;
    iget-object v11, v6, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-direct {p0, v1, v11, v10}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onPhysicalCameraStatusChangedLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 1672
    .end local v10    # "unavailPhysicalCamera":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_47

    .line 1679
    :cond_53
    iget-boolean v7, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v7, :cond_6b

    iget v7, v6, Landroid/hardware/CameraStatus;->status:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_6b

    iget-object v7, v6, Landroid/hardware/CameraStatus;->clientPackage:Ljava/lang/String;

    .line 1681
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6b

    .line 1682
    iget-object v7, v6, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    iget-object v8, v6, Landroid/hardware/CameraStatus;->clientPackage:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraOpenedLocked(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Landroid/os/ServiceSpecificException; {:try_start_2c .. :try_end_6b} :catch_93
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_6b} :catch_6f

    .line 1668
    .end local v6    # "c":Landroid/hardware/CameraStatus;
    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 1692
    .end local v3    # "cameraStatuses":[Landroid/hardware/CameraStatus;
    :cond_6e
    goto :goto_70

    .line 1690
    :catch_6f
    move-exception v3

    .line 1695
    :goto_70
    nop

    .line 1696
    :try_start_71
    invoke-interface {v2}, Landroid/hardware/ICameraService;->getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;

    move-result-object v3

    .line 1697
    .local v3, "cameraIdCombinations":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    array-length v4, v3

    :goto_76
    if-ge v1, v4, :cond_87

    aget-object v5, v3, v1

    .line 1698
    .local v5, "comb":Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-virtual {v5}, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->getConcurrentCameraIdCombination()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catch Landroid/os/ServiceSpecificException; {:try_start_71 .. :try_end_83} :catch_8a
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_83} :catch_88

    .line 1697
    nop

    .end local v5    # "comb":Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 1706
    .end local v3    # "cameraIdCombinations":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    :cond_87
    goto :goto_89

    .line 1704
    :catch_88
    move-exception v1

    .line 1707
    :goto_89
    return-void

    .line 1700
    :catch_8a
    move-exception v1

    .line 1702
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to get concurrent camera id combinations"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1687
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :catch_93
    move-exception v1

    .line 1689
    .restart local v1    # "e":Landroid/os/ServiceSpecificException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to register a camera service listener"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1649
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    :catch_9c
    move-exception v1

    .line 1651
    .local v1, "e":Landroid/os/RemoteException;
    return-void

    .line 1638
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_9e
    :goto_9e
    return-void
.end method

.method private blacklist extractCameraIdListLocked()[Ljava/lang/String;
    .registers 10

    .line 1710
    const/4 v0, 0x0

    .line 1712
    .local v0, "cameraIds":[Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1713
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtStub;->isAuxCameraClient(Ljava/lang/String;)Z

    move-result v2

    .line 1716
    .local v2, "exposeAuxCamera":Z
    const/4 v3, 0x0

    .line 1717
    .local v3, "idCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-ge v4, v5, :cond_30

    .line 1719
    if-nez v2, :cond_1a

    if-ne v4, v7, :cond_1a

    goto :goto_30

    .line 1720
    :cond_1a
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1721
    .local v5, "status":I
    if-eqz v5, :cond_2d

    if-ne v5, v6, :cond_2b

    .line 1722
    goto :goto_2d

    .line 1723
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    .line 1717
    .end local v5    # "status":I
    :cond_2d
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1725
    .end local v4    # "i":I
    :cond_30
    :goto_30
    new-array v0, v3, [Ljava/lang/String;

    .line 1726
    const/4 v3, 0x0

    .line 1727
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_34
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_61

    .line 1729
    if-nez v2, :cond_41

    if-ne v4, v7, :cond_41

    goto :goto_61

    .line 1730
    :cond_41
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1731
    .restart local v5    # "status":I
    if-eqz v5, :cond_5e

    if-ne v5, v6, :cond_52

    .line 1732
    goto :goto_5e

    .line 1733
    :cond_52
    iget-object v8, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v0, v3

    .line 1734
    add-int/lit8 v3, v3, 0x1

    .line 1727
    .end local v5    # "status":I
    :cond_5e
    :goto_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 1736
    .end local v4    # "i":I
    :cond_61
    :goto_61
    return-object v0
.end method

.method private blacklist extractConcurrentCameraIdListLocked()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1740
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1741
    .local v0, "concurrentCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1742
    .local v2, "cameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1743
    .local v3, "extractedCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1747
    .local v5, "cameraId":Ljava/lang/String;
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1748
    .local v6, "status":Ljava/lang/Integer;
    if-nez v6, :cond_37

    .line 1750
    goto :goto_20

    .line 1752
    :cond_37
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_20

    .line 1753
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_45

    .line 1754
    goto :goto_20

    .line 1756
    :cond_45
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1757
    .end local v5    # "cameraId":Ljava/lang/String;
    .end local v6    # "status":Ljava/lang/Integer;
    goto :goto_20

    .line 1758
    :cond_49
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1759
    .end local v2    # "cameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "extractedCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_b

    .line 1760
    :cond_4d
    return-object v0
.end method

.method public static greylist-max-o get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .registers 1

    .line 1605
    sget-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    return-object v0
.end method

.method private greylist-max-o handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V
    .registers 4
    .param p1, "e"    # Landroid/os/ServiceSpecificException;

    .line 2075
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v0, :pswitch_data_16

    .line 2080
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2077
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    nop

    .line 2082
    return-void

    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_b
    .end packed-switch
.end method

.method private greylist-max-o isAvailable(I)Z
    .registers 3
    .param p1, "status"    # I

    .line 2085
    packed-switch p1, :pswitch_data_8

    .line 2089
    const/4 v0, 0x0

    return v0

    .line 2087
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$postSingleTorchStrengthLevelUpdate$2(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V
    .registers 3
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I

    .line 2238
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchStrengthLevelChanged(Ljava/lang/String;I)V

    .line 2239
    return-void
.end method

.method static synthetic blacklist lambda$postSingleTorchUpdate$0(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V
    .registers 4
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 2211
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeChanged(Ljava/lang/String;Z)V

    .line 2213
    return-void
.end method

.method static synthetic blacklist lambda$postSingleTorchUpdate$1(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V
    .registers 2
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;

    .line 2223
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeUnavailable(Ljava/lang/String;)V

    .line 2224
    return-void
.end method

.method private blacklist onCameraClosedLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 2639
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2641
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2642
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_24

    .line 2643
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 2644
    .local v2, "executor":Ljava/util/concurrent/Executor;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2646
    .local v3, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v3, v2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraClosedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 2642
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2649
    .end local v1    # "i":I
    :cond_24
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraExtStub;->cameraClosed(Ljava/lang/String;)V

    .line 2651
    return-void
.end method

.method private blacklist onCameraOpenedLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;

    .line 2601
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2603
    .local v0, "oldApk":Ljava/lang/String;
    if-eqz v0, :cond_54

    .line 2604
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "onCameraOpened was previously called for "

    const-string v3, "CameraManagerGlobal"

    if-eqz v1, :cond_30

    .line 2605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and is now again called for the same package name, so no new client visible update will be sent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    return-void

    .line 2611
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and is now called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without onCameraClosed being called first"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    :cond_54
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2619
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5b
    if-ge v2, v1, :cond_73

    .line 2620
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2621
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2623
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v4, v3, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 2627
    .end local v2    # "i":I
    :cond_73
    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraExtStub;->cameraOpened(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    return-void
.end method

.method private blacklist onPhysicalCameraStatusChangedLocked(ILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "physicalId"    # Ljava/lang/String;

    .line 2365
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "CameraManagerGlobal"

    const/4 v5, 0x1

    if-eqz v0, :cond_1f

    .line 2366
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p3, v0, v5

    .line 2368
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    .line 2367
    const-string v6, "Camera id %s physical camera id %s has status changed to 0x%x"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2366
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    :cond_1f
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 2372
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p3, v0, v5

    .line 2374
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 2372
    const-string v1, "Ignoring invalid device %s physical device %s status 0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    return-void

    .line 2379
    :cond_3b
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    .line 2380
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_d2

    .line 2386
    :cond_5f
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2387
    .local v0, "unavailablePhysicalDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v1

    if-nez v1, :cond_77

    .line 2388
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 2389
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_86

    .line 2390
    :cond_77
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 2391
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 2392
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2406
    :goto_86
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2407
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8d
    if-ge v2, v1, :cond_ac

    .line 2408
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2409
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2411
    .local v10, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    move-object v4, p0

    move-object v5, v10

    move-object v6, v3

    move-object v7, p2

    move-object v8, p3

    move v9, p1

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2407
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v10    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 2413
    .end local v2    # "i":I
    :cond_ac
    return-void

    .line 2394
    .end local v1    # "callbackCount":I
    :cond_ad
    iget-boolean v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    if-eqz v1, :cond_d1

    .line 2395
    new-array v1, v2, [Ljava/lang/Object;

    .line 2400
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    .line 2401
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    .line 2396
    const-string v2, "Physical camera device status was previously available (%b),  and is now again available (%b)so no new client visible update will be sent"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2395
    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    :cond_d1
    return-void

    .line 2381
    .end local v0    # "unavailablePhysicalDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d2
    :goto_d2
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string v1, "Camera %s is not available. Ignore physical camera status change"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    return-void
.end method

.method private greylist-max-o onStatusChangedLocked(ILjava/lang/String;)V
    .registers 14
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 2277
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "CameraManagerGlobal"

    if-lt v0, v1, :cond_8a

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_8a

    .line 2278
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2279
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtStub;->isAuxCameraClient(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 2280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[soar.cts] ignore the status update of camera: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    return-void

    .line 2282
    :cond_32
    invoke-static {}, Landroid/hardware/camera2/impl/CameraExtStub;->hideCamera()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 2283
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-eqz v3, :cond_8a

    .line 2285
    :try_start_3c
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-interface {v3, p2, v4}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    .line 2286
    .local v3, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraExtStub;->isExposeCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraExtStub;->isVirtualCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v4

    if-eqz v4, :cond_57

    goto :goto_58

    .line 2292
    .end local v3    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_57
    goto :goto_8a

    .line 2287
    .restart local v3    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_58
    :goto_58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignore the status update of camera: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_6e} :catch_6f

    .line 2288
    return-void

    .line 2290
    .end local v3    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_6f
    move-exception v3

    .line 2291
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCameraCharacteristics failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_8a
    :goto_8a
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_a3

    .line 2299
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 2300
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v5, "Camera id %s has status changed to 0x%x"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2299
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    :cond_a3
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 2304
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 2305
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 2304
    const-string v1, "Ignoring invalid device %s status 0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    return-void

    .line 2310
    :cond_bd
    if-nez p1, :cond_cd

    .line 2311
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2312
    .local v0, "oldStatus":Ljava/lang/Integer;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e5

    .line 2314
    .end local v0    # "oldStatus":Ljava/lang/Integer;
    :cond_cd
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, p2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2315
    .restart local v0    # "oldStatus":Ljava/lang/Integer;
    if-nez v0, :cond_e5

    .line 2316
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2320
    :cond_e5
    :goto_e5
    if-eqz v0, :cond_103

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_103

    .line 2321
    iget-boolean v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    if-eqz v1, :cond_102

    .line 2322
    new-array v1, v4, [Ljava/lang/Object;

    .line 2324
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2322
    const-string v3, "Device status changed to 0x%x, which is what it already was"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    :cond_102
    return-void

    .line 2342
    :cond_103
    if-eqz v0, :cond_13b

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v6

    if-ne v5, v6, :cond_13b

    .line 2343
    iget-boolean v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    if-eqz v5, :cond_13a

    .line 2344
    new-array v1, v1, [Ljava/lang/Object;

    .line 2349
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    .line 2345
    const-string v3, "Device status was previously available (%b),  and is now again available (%b)so no new client visible update will be sent"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2344
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    :cond_13a
    return-void

    .line 2354
    :cond_13b
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2355
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_142
    if-ge v2, v1, :cond_161

    .line 2356
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2357
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2359
    .local v10, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, v10

    move-object v6, v3

    move-object v7, p2

    move v9, p1

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2355
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v10    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_142

    .line 2361
    .end local v2    # "i":I
    :cond_161
    return-void
.end method

.method private greylist-max-o onTorchStatusChangedLocked(ILjava/lang/String;)V
    .registers 9
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 2424
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "CameraManagerGlobal"

    if-eqz v0, :cond_1c

    .line 2425
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    .line 2426
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    const-string v5, "Camera id %s has torch status changed to 0x%x"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2425
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_1c
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v2, :cond_43

    .line 2434
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2435
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtStub;->isAuxCameraClient(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 2436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore the torch status update of camera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    return-void

    .line 2442
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_43
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validTorchStatus(I)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 2443
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    .line 2444
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 2443
    const-string v1, "Ignoring invalid device %s torch status 0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    return-void

    .line 2448
    :cond_5d
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2449
    .local v0, "oldStatus":Ljava/lang/Integer;
    if-eqz v0, :cond_87

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_87

    .line 2450
    iget-boolean v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    if-eqz v2, :cond_86

    .line 2451
    new-array v2, v3, [Ljava/lang/Object;

    .line 2453
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2451
    const-string v1, "Torch status changed to 0x%x, which is what it already was"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    :cond_86
    return-void

    .line 2458
    :cond_87
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2459
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8e
    if-ge v2, v1, :cond_a6

    .line 2460
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2461
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 2462
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-direct {p0, v4, v3, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 2459
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    .line 2464
    .end local v2    # "i":I
    :cond_a6
    return-void
.end method

.method private blacklist onTorchStrengthLevelChangedLocked(Ljava/lang/String;I)V
    .registers 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I

    .line 2467
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 2469
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2471
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2470
    const-string v1, "Camera id %s has torch strength level changed to %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2469
    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    :cond_1c
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2475
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    if-ge v1, v0, :cond_3b

    .line 2476
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 2477
    .local v2, "executor":Ljava/util/concurrent/Executor;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 2478
    .local v3, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-direct {p0, v3, v2, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchStrengthLevelUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 2475
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 2480
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method

.method private blacklist postSingleAccessPriorityChangeUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2118
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2120
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;

    invoke-direct {v2, p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 2128
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2129
    nop

    .line 2130
    return-void

    .line 2128
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2129
    throw v2
.end method

.method private blacklist postSingleCameraClosedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;

    .line 2150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2152
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;

    invoke-direct {v2, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 2160
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2161
    nop

    .line 2162
    return-void

    .line 2160
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2161
    throw v2
.end method

.method private blacklist postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "packageId"    # Ljava/lang/String;

    .line 2134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2136
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;

    invoke-direct {v2, p0, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 2144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2145
    nop

    .line 2146
    return-void

    .line 2144
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2145
    throw v2
.end method

.method private blacklist postSingleTorchStrengthLevelUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "newStrengthLevel"    # I

    .line 2235
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2237
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 2241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2242
    nop

    .line 2243
    return-void

    .line 2241
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2242
    throw v2
.end method

.method private greylist-max-o postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 2205
    packed-switch p4, :pswitch_data_30

    .line 2220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    goto :goto_1e

    .line 2208
    .end local v0    # "ident":J
    :pswitch_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2210
    .restart local v0    # "ident":J
    :try_start_c
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_19

    .line 2215
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2216
    nop

    .line 2218
    .end local v0    # "ident":J
    goto :goto_2a

    .line 2215
    .restart local v0    # "ident":J
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2216
    throw v2

    .line 2222
    :goto_1e
    :try_start_1e
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_2b

    .line 2226
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2227
    nop

    .line 2231
    .end local v0    # "ident":J
    :goto_2a
    return-void

    .line 2226
    .restart local v0    # "ident":J
    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2227
    throw v2

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "physicalId"    # Ljava/lang/String;
    .param p5, "status"    # I

    .line 2166
    invoke-direct {p0, p5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2167
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2169
    .local v0, "ident":J
    :try_start_a
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$6;

    invoke-direct {v2, p0, p4, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$6;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    .line 2181
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2182
    nop

    .line 2183
    .end local v0    # "ident":J
    goto :goto_2c

    .line 2181
    .restart local v0    # "ident":J
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2182
    throw v2

    .line 2184
    .end local v0    # "ident":J
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2186
    .restart local v0    # "ident":J
    :try_start_20
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$7;

    invoke-direct {v2, p0, p4, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$7;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_2d

    .line 2198
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2199
    nop

    .line 2201
    .end local v0    # "ident":J
    :goto_2c
    return-void

    .line 2198
    .restart local v0    # "ident":J
    :catchall_2d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2199
    throw v2
.end method

.method private greylist-max-o scheduleCameraServiceReconnectionLocked()V
    .registers 7

    .line 2658
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2660
    return-void

    .line 2663
    :cond_11
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    const-string v1, "CameraManagerGlobal"

    if-eqz v0, :cond_1c

    .line 2664
    const-string v0, "Reconnecting Camera Service in 1000 ms"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    const-wide/16 v3, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1c .. :try_end_2a} :catch_2b

    .line 2682
    goto :goto_42

    .line 2680
    :catch_2b
    move-exception v0

    .line 2681
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to schedule camera service re-connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_42
    return-void
.end method

.method private static blacklist sortCameraIds([Ljava/lang/String;)V
    .registers 2
    .param p0, "cameraIds"    # [Ljava/lang/String;

    .line 1766
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1795
    return-void
.end method

.method private greylist-max-o updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
    .registers 15
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f

    .line 2251
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2252
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/Integer;

    .line 2253
    .local v8, "status":Ljava/lang/Integer;
    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2256
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 2257
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/util/ArrayList;

    .line 2258
    .local v9, "unavailableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_45
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    .line 2259
    .local v11, "unavailableId":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v11

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2261
    .end local v11    # "unavailableId":Ljava/lang/String;
    goto :goto_45

    .line 2250
    .end local v1    # "id":Ljava/lang/String;
    .end local v8    # "status":Ljava/lang/Integer;
    .end local v9    # "unavailableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2265
    .end local v0    # "i":I
    :cond_5f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_60
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_7e

    .line 2266
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2267
    .restart local v1    # "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2268
    .local v2, "clientPackageId":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "clientPackageId":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 2270
    .end local v0    # "i":I
    :cond_7e
    return-void
.end method

.method private greylist-max-o updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2416
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2417
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2418
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2419
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 2416
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Integer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2421
    .end local v0    # "i":I
    :cond_23
    return-void
.end method

.method private greylist-max-o validStatus(I)Z
    .registers 3
    .param p1, "status"    # I

    .line 2094
    packed-switch p1, :pswitch_data_8

    .line 2101
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 2099
    :pswitch_5
    const/4 v0, 0x1

    return v0

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
    .registers 3
    .param p1, "status"    # I

    .line 2106
    packed-switch p1, :pswitch_data_8

    .line 2112
    const/4 v0, 0x0

    return v0

    .line 2110
    :pswitch_5
    const/4 v0, 0x1

    return v0

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

    .line 1610
    return-object p0
.end method

.method public whitelist binderDied()V
    .registers 5

    .line 2693
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2695
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 2697
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    .line 2704
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_14
    const/4 v2, 0x0

    if-ltz v1, :cond_2c

    .line 2705
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2706
    .local v3, "cameraId":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 2708
    iget-boolean v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v2, :cond_29

    .line 2709
    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraClosedLocked(Ljava/lang/String;)V

    .line 2704
    .end local v3    # "cameraId":Ljava/lang/String;
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 2712
    .end local v1    # "i":I
    :cond_2c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2d
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_43

    .line 2713
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2714
    .restart local v3    # "cameraId":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V

    .line 2712
    .end local v3    # "cameraId":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 2718
    .end local v1    # "i":I
    :cond_43
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2720
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 2721
    monitor-exit v0

    .line 2722
    return-void

    .line 2721
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public blacklist cameraIdHasConcurrentStreamsLocked(Ljava/lang/String;)Z
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1971
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_36

    .line 1973
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    if-eqz v0, :cond_35

    .line 1974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " physical camera id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is hidden. Available logical camera ids : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    .line 1975
    invoke-virtual {v2}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1974
    const-string v2, "CameraManagerGlobal"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_35
    return v1

    .line 1979
    :cond_36
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1980
    .local v2, "comb":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 1981
    const/4 v0, 0x1

    return v0

    .line 1983
    .end local v2    # "comb":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_50
    goto :goto_3c

    .line 1984
    :cond_51
    return v1
.end method

.method public greylist-max-o getCameraIdList()[Ljava/lang/String;
    .registers 4

    .line 1891
    const/4 v0, 0x0

    .line 1892
    .local v0, "cameraIds":[Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1894
    :try_start_4
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 1895
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractCameraIdListLocked()[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1896
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 1897
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sortCameraIds([Ljava/lang/String;)V

    .line 1898
    return-object v0

    .line 1896
    :catchall_11
    move-exception v2

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v2
.end method

.method public blacklist getCameraIdListNoLazy()[Ljava/lang/String;
    .registers 11

    .line 1807
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1808
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 1812
    :cond_8
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    .line 1837
    .local v0, "testListener":Landroid/hardware/ICameraServiceListener$Stub;
    const/4 v2, 0x0

    .line 1838
    .local v2, "cameraIds":[Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1839
    :try_start_11
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_83

    .line 1853
    :try_start_14
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v4, v0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v4

    .line 1854
    .local v4, "cameraStatuses":[Landroid/hardware/CameraStatus;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v5, v0}, Landroid/hardware/ICameraService;->removeListener(Landroid/hardware/ICameraServiceListener;)V

    .line 1855
    array-length v5, v4

    move v6, v1

    :goto_21
    if-ge v6, v5, :cond_2f

    aget-object v7, v4, v6

    .line 1856
    .local v7, "c":Landroid/hardware/CameraStatus;
    iget v8, v7, Landroid/hardware/CameraStatus;->status:I

    iget-object v9, v7, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 1855
    .end local v7    # "c":Landroid/hardware/CameraStatus;
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 1858
    :cond_2f
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1859
    .local v5, "deviceCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1860
    .local v6, "deviceIdsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1865
    .local v8, "deviceCameraId":Ljava/lang/String;
    invoke-static {v4, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->cameraStatusesContains([Landroid/hardware/CameraStatus;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_53

    .line 1866
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1868
    .end local v8    # "deviceCameraId":Ljava/lang/String;
    :cond_53
    goto :goto_3e

    .line 1869
    :cond_54
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_58
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1870
    .local v8, "id":Ljava/lang/String;
    invoke-direct {p0, v1, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 1871
    iget-object v9, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Landroid/os/ServiceSpecificException; {:try_start_14 .. :try_end_6c} :catch_7a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_6c} :catch_6f
    .catchall {:try_start_14 .. :try_end_6c} :catchall_83

    .line 1872
    nop

    .end local v8    # "id":Ljava/lang/String;
    goto :goto_58

    .line 1879
    .end local v5    # "deviceCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "deviceIdsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6e
    goto :goto_70

    .line 1877
    .end local v4    # "cameraStatuses":[Landroid/hardware/CameraStatus;
    :catch_6f
    move-exception v1

    .line 1880
    :goto_70
    :try_start_70
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractCameraIdListLocked()[Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1881
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_83

    .line 1882
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sortCameraIds([Ljava/lang/String;)V

    .line 1883
    return-object v2

    .line 1873
    :catch_7a
    move-exception v1

    .line 1875
    .local v1, "e":Landroid/os/ServiceSpecificException;
    :try_start_7b
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to register a camera service listener"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "testListener":Landroid/hardware/ICameraServiceListener$Stub;
    .end local v2    # "cameraIds":[Ljava/lang/String;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw v4

    .line 1881
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .restart local v0    # "testListener":Landroid/hardware/ICameraServiceListener$Stub;
    .restart local v2    # "cameraIds":[Ljava/lang/String;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    :catchall_83
    move-exception v1

    monitor-exit v3
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_83

    throw v1
.end method

.method public greylist-max-o getCameraService()Landroid/hardware/ICameraService;
    .registers 4

    .line 1621
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1622
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 1623
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_15

    sget-boolean v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v1, :cond_15

    .line 1624
    const-string v1, "CameraManagerGlobal"

    const-string v2, "Camera service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :cond_15
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    monitor-exit v0

    return-object v1

    .line 1627
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public blacklist getConcurrentCameraIds()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1902
    const/4 v0, 0x0

    .line 1903
    .local v0, "concurrentStreamingCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1905
    :try_start_4
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 1906
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractConcurrentCameraIdListLocked()Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    .line 1907
    monitor-exit v1

    .line 1909
    return-object v0

    .line 1907
    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v2
.end method

.method public blacklist getTorchStrengthLevel(Ljava/lang/String;)I
    .registers 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2050
    const/4 v0, 0x0

    .line 2051
    .local v0, "torchStrength":I
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2052
    if-eqz p1, :cond_2d

    .line 2056
    :try_start_6
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_2b

    .line 2057
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    const/4 v3, 0x2

    if-eqz v2, :cond_23

    .line 2063
    :try_start_d
    invoke-interface {v2, p1}, Landroid/hardware/ICameraService;->getTorchStrengthLevel(Ljava/lang/String;)I

    move-result v3
    :try_end_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_d .. :try_end_11} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_13
    .catchall {:try_start_d .. :try_end_11} :catchall_2b

    move v0, v3

    .line 2069
    :goto_12
    goto :goto_21

    .line 2066
    :catch_13
    move-exception v4

    .line 2067
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_14
    new-instance v5, Landroid/hardware/camera2/CameraAccessException;

    const-string v6, "Camera service is currently unavailable."

    invoke-direct {v5, v3, v6}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v0    # "torchStrength":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v5

    .line 2064
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "torchStrength":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :catch_1c
    move-exception v3

    .line 2065
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_12

    .line 2070
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    :goto_21
    monitor-exit v1

    .line 2071
    return v0

    .line 2058
    .restart local v2    # "cameraService":Landroid/hardware/ICameraService;
    :cond_23
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable."

    invoke-direct {v4, v3, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v0    # "torchStrength":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v4

    .line 2070
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v0    # "torchStrength":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :catchall_2b
    move-exception v2

    goto :goto_35

    .line 2053
    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cameraId was null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "torchStrength":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v2

    .line 2070
    .restart local v0    # "torchStrength":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :goto_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_2b

    throw v2
.end method

.method public blacklist isConcurrentSessionConfigurationSupported(Ljava/util/Map;I)Z
    .registers 14
    .param p2, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/params/SessionConfiguration;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1916
    .local p1, "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    if-eqz p1, :cond_88

    .line 1920
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 1921
    .local v0, "size":I
    if-eqz v0, :cond_80

    .line 1925
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1928
    const/4 v2, 0x0

    .line 1929
    .local v2, "subsetFound":Z
    :try_start_c
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 1930
    .local v4, "combination":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1931
    const/4 v2, 0x1

    .line 1933
    .end local v4    # "combination":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_29
    goto :goto_12

    .line 1934
    :cond_2a
    const/4 v3, 0x0

    if-nez v2, :cond_36

    .line 1935
    const-string v4, "CameraManagerGlobal"

    const-string v5, "isConcurrentSessionConfigurationSupported called with a subset ofcamera ids not returned by getConcurrentCameraIds"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    monitor-exit v1

    return v3

    .line 1939
    :cond_36
    new-array v4, v0, [Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 1941
    .local v4, "cameraIdsAndConfigs":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    const/4 v5, 0x0

    .line 1943
    .local v5, "i":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1944
    .local v7, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    new-instance v8, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 1945
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-direct {v8, v9, v10}, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;-><init>(Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;)V

    aput-object v8, v4, v5
    :try_end_60
    .catchall {:try_start_c .. :try_end_60} :catchall_7d

    .line 1946
    nop

    .end local v7    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    add-int/lit8 v5, v5, 0x1

    .line 1947
    goto :goto_41

    .line 1949
    :cond_64
    :try_start_64
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v6, v4, p2}, Landroid/hardware/ICameraService;->isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;I)Z

    move-result v3
    :try_end_6a
    .catch Landroid/os/ServiceSpecificException; {:try_start_64 .. :try_end_6a} :catch_76
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_6a} :catch_6c
    .catchall {:try_start_64 .. :try_end_6a} :catchall_7d

    :try_start_6a
    monitor-exit v1

    return v3

    .line 1953
    :catch_6c
    move-exception v3

    .line 1955
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v6, Landroid/hardware/camera2/CameraAccessException;

    const/4 v7, 0x2

    const-string v8, "Camera service is currently unavailable"

    invoke-direct {v6, v7, v8, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "size":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    .end local p2    # "targetSdkVersion":I
    throw v6

    .line 1951
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "size":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    .restart local p2    # "targetSdkVersion":I
    :catch_76
    move-exception v6

    .line 1952
    .local v6, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v6}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 1957
    .end local v6    # "e":Landroid/os/ServiceSpecificException;
    nop

    .line 1958
    .end local v2    # "subsetFound":Z
    .end local v4    # "cameraIdsAndConfigs":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    .end local v5    # "i":I
    monitor-exit v1

    .line 1960
    return v3

    .line 1958
    :catchall_7d
    move-exception v2

    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_6a .. :try_end_7f} :catchall_7d

    throw v2

    .line 1922
    :cond_80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "camera id and session combination is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1917
    .end local v0    # "size":I
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraIdsAndSessionConfigurations was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic blacklist lambda$scheduleCameraServiceReconnectionLocked$3$android-hardware-camera2-CameraManager$CameraManagerGlobal()V
    .registers 5

    .line 2670
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 2671
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_1c

    .line 2672
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2673
    :try_start_9
    iget-boolean v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    if-eqz v2, :cond_14

    .line 2674
    const-string v2, "CameraManagerGlobal"

    const-string v3, "Reconnecting Camera Service failed."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    :cond_14
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 2677
    monitor-exit v1

    goto :goto_1c

    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw v2

    .line 2679
    :cond_1c
    :goto_1c
    return-void
.end method

.method public blacklist onCameraAccessPrioritiesChanged()V
    .registers 6

    .line 2582
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2583
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2584
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_22

    .line 2585
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2586
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2588
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v4, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleAccessPriorityChangeUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 2584
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2590
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_22
    monitor-exit v0

    .line 2591
    return-void

    .line 2590
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist onCameraClosed(Ljava/lang/String;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 2633
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2634
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraClosedLocked(Ljava/lang/String;)V

    .line 2635
    monitor-exit v0

    .line 2636
    return-void

    .line 2635
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;

    .line 2595
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2596
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraOpenedLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    monitor-exit v0

    .line 2598
    return-void

    .line 2597
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "physicalCameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2560
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2561
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onPhysicalCameraStatusChangedLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 2562
    monitor-exit v0

    .line 2563
    return-void

    .line 2562
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public greylist-max-o onStatusChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2552
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2553
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 2554
    monitor-exit v0

    .line 2555
    return-void

    .line 2554
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public greylist-max-o onTorchStatusChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2567
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2568
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V

    .line 2569
    monitor-exit v0

    .line 2570
    return-void

    .line 2569
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist onTorchStrengthLevelChanged(Ljava/lang/String;I)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2575
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2576
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStrengthLevelChangedLocked(Ljava/lang/String;I)V

    .line 2577
    monitor-exit v0

    .line 2578
    return-void

    .line 2577
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Z)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "hasOpenCloseListenerPermission"    # Z

    .line 2493
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2496
    :try_start_3
    iput-boolean p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    .line 2497
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2499
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 2501
    .local v1, "oldExecutor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_15

    .line 2502
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 2506
    :cond_15
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v2, :cond_1c

    .line 2507
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 2509
    .end local v1    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_1c
    monitor-exit v0

    .line 2510
    return-void

    .line 2509
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public greylist-max-o registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2525
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2526
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2528
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 2530
    .local v1, "oldExecutor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_13

    .line 2531
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 2535
    :cond_13
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v2, :cond_1a

    .line 2536
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 2538
    .end local v1    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_1a
    monitor-exit v0

    .line 2539
    return-void

    .line 2538
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public greylist-max-o setTorchMode(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1988
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1990
    if-eqz p1, :cond_45

    .line 1998
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1f

    .line 1999
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2000
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtStub;->isAuxCameraClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_1f

    .line 2001
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid cameraId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    throw v2

    .line 2006
    .end local v1    # "packageName":Ljava/lang/String;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_43

    .line 2007
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v1, :cond_3b

    .line 2013
    :try_start_25
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v3}, Landroid/hardware/ICameraService;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V
    :try_end_2a
    .catch Landroid/os/ServiceSpecificException; {:try_start_25 .. :try_end_2a} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b
    .catchall {:try_start_25 .. :try_end_2a} :catchall_43

    .line 2019
    :goto_2a
    goto :goto_39

    .line 2016
    :catch_2b
    move-exception v3

    .line 2017
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2c
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v4, v2, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    throw v4

    .line 2014
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    :catch_34
    move-exception v2

    .line 2015
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_2a

    .line 2020
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :goto_39
    monitor-exit v0

    .line 2021
    return-void

    .line 2008
    .restart local v1    # "cameraService":Landroid/hardware/ICameraService;
    :cond_3b
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "Camera service is currently unavailable"

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    throw v3

    .line 2020
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    :catchall_43
    move-exception v1

    goto :goto_4d

    .line 1991
    :cond_45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cameraId was null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    throw v1

    .line 2020
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_2c .. :try_end_4e} :catchall_43

    throw v1
.end method

.method public blacklist turnOnTorchWithStrengthLevel(Ljava/lang/String;I)V
    .registers 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "torchStrength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2025
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2027
    if-eqz p1, :cond_2c

    .line 2031
    :try_start_5
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_2a

    .line 2032
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    const/4 v2, 0x2

    if-eqz v1, :cond_22

    .line 2038
    :try_start_c
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v3}, Landroid/hardware/ICameraService;->turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;)V
    :try_end_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_11} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_2a

    .line 2045
    :goto_11
    goto :goto_20

    .line 2042
    :catch_12
    move-exception v3

    .line 2043
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_13
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable."

    invoke-direct {v4, v2, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    throw v4

    .line 2040
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    :catch_1b
    move-exception v2

    .line 2041
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_11

    .line 2046
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :goto_20
    monitor-exit v0

    .line 2047
    return-void

    .line 2033
    .restart local v1    # "cameraService":Landroid/hardware/ICameraService;
    :cond_22
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "Camera service is currently unavailable."

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    throw v3

    .line 2046
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    :catchall_2a
    move-exception v1

    goto :goto_34

    .line 2028
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cameraId was null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    throw v1

    .line 2046
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_2a

    throw v1
.end method

.method public greylist-max-o unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2519
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2520
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2521
    monitor-exit v0

    .line 2522
    return-void

    .line 2521
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public greylist-max-o unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 2542
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2543
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2544
    monitor-exit v0

    .line 2545
    return-void

    .line 2544
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
