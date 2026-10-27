.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;,
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

.field private static final blacklist ENABLE_PHYSICAL_CAMERA_CALLBACK_FOR_UNAVAILABLE_LOGICAL_CAMERA:J = 0xe909d6aL

.field public static final blacklist LANDSCAPE_TO_PORTRAIT_PROP:Ljava/lang/String; = "camera.enable_landscape_to_portrait"

.field public static final blacklist OVERRIDE_CAMERA_LANDSCAPE_TO_PORTRAIT:J = 0xef10e60L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CameraManager"

.field private static final blacklist USE_CALLING_PID:I = -0x1

.field private static final greylist-max-o USE_CALLING_UID:I = -0x1


# instance fields
.field private final greylist-max-o DEBUG:Z

.field private final blacklist mCameraIdToMultiResolutionStreamConfigurationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mHasOpenCloseListenerPermission:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private blacklist mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 5

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager;->mCameraIdToMultiResolutionStreamConfigurationMap:Ljava/util/Map;

    .line 166
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_17
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 219
    iget-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CAMERA_OPEN_CLOSE_LISTENER"

    .line 220
    invoke-virtual {p1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_24

    const/4 v0, 0x1

    :cond_24
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    .line 222
    monitor-exit v1

    .line 223
    return-void

    .line 222
    :catchall_28
    move-exception p1

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method private blacklist getCameraCharacteristics(Ljava/lang/String;Landroid/content/res/CameraCompatibilityInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 747
    nop

    .line 748
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_52

    .line 751
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 752
    :try_start_8
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_4e

    .line 753
    const/4 v8, 0x2

    if-eqz v2, :cond_46

    .line 758
    :try_start_13
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 761
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 763
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 764
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v7

    .line 759
    move-object v3, p1

    move-object v5, p2

    invoke-interface/range {v2 .. v7}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;ILandroid/content/res/CameraCompatibilityInfo;Landroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 765
    invoke-virtual {p0, v3, p1, v2}, Landroid/hardware/camera2/CameraManager;->prepareCameraCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1
    :try_end_2f
    .catch Landroid/os/ServiceSpecificException; {:try_start_13 .. :try_end_2f} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2f} :catch_35
    .catchall {:try_start_13 .. :try_end_2f} :catchall_4e

    .line 772
    nop

    .line 773
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_4e

    .line 774
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 775
    return-object p1

    .line 768
    :catch_35
    move-exception v0

    move-object p1, v0

    .line 770
    :try_start_37
    new-instance p2, Landroid/hardware/camera2/CameraAccessException;

    const-string v0, "Camera service is currently unavailable"

    invoke-direct {p2, v8, v0, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 766
    :catch_3f
    move-exception v0

    move-object p1, v0

    .line 767
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 754
    :cond_46
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "Camera service is currently unavailable"

    invoke-direct {p1, v8, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 773
    :catchall_4e
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_37 .. :try_end_51} :catchall_4e

    throw p1

    .line 749
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No cameras available on device"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist getCameraCompatibilityInfoForCompatFreeform(II)Landroid/content/res/CameraCompatibilityInfo;
    .registers 4

    .line 1736
    nop

    .line 1738
    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    move p0, v1

    goto :goto_15

    .line 1752
    :cond_b
    :goto_b
    const/4 p0, 0x3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 1755
    goto :goto_15

    .line 1756
    :cond_10
    if-ne p1, p0, :cond_14

    .line 1759
    move p0, v0

    goto :goto_15

    .line 1766
    :cond_14
    move p0, v0

    .line 1769
    :goto_15
    new-instance p1, Landroid/content/res/CameraCompatibilityInfo$Builder;

    invoke-direct {p1}, Landroid/content/res/CameraCompatibilityInfo$Builder;-><init>()V

    invoke-virtual {p1, p0}, Landroid/content/res/CameraCompatibilityInfo$Builder;->setRotateAndCropRotation(I)Landroid/content/res/CameraCompatibilityInfo$Builder;

    move-result-object p0

    .line 1770
    invoke-virtual {p0, v1}, Landroid/content/res/CameraCompatibilityInfo$Builder;->setShouldOverrideSensorOrientation(Z)Landroid/content/res/CameraCompatibilityInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/CameraCompatibilityInfo$Builder;->build()Landroid/content/res/CameraCompatibilityInfo;

    move-result-object p0

    .line 1769
    return-object p0
.end method

.method private blacklist getCameraDeviceSetupUnsafe(Ljava/lang/String;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .registers 4

    .line 907
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraManager;Landroid/content/Context;)V

    return-object v0
.end method

.method private blacklist getDisplaySize()Landroid/util/Size;
    .registers 6

    .line 589
    const-string v0, "CameraManager"

    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    .line 592
    :try_start_8
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    const-string v4, "display"

    .line 593
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 594
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 595
    if-eqz v2, :cond_32

    .line 596
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 597
    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 598
    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 599
    iget v4, v3, Landroid/graphics/Point;->y:I

    .line 601
    if-le v4, v2, :cond_2b

    .line 602
    nop

    .line 603
    iget v3, v3, Landroid/graphics/Point;->y:I

    move v4, v2

    move v2, v3

    .line 606
    :cond_2b
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v2, v4}, Landroid/util/Size;-><init>(II)V

    .line 607
    move-object v1, v3

    goto :goto_37

    .line 608
    :cond_32
    const-string v2, "Invalid default display!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_37} :catch_38

    .line 612
    :goto_37
    goto :goto_4f

    .line 610
    :catch_38
    move-exception v2

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplaySize Failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_4f
    return-object v1
.end method

.method private static blacklist getLandscapeToPortraitOverride(Z)Landroid/content/res/CameraCompatibilityInfo;
    .registers 3

    .line 1711
    new-instance v0, Landroid/content/res/CameraCompatibilityInfo$Builder;

    invoke-direct {v0}, Landroid/content/res/CameraCompatibilityInfo$Builder;-><init>()V

    .line 1712
    if-eqz p0, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, -0x1

    :goto_a
    invoke-virtual {v0, v1}, Landroid/content/res/CameraCompatibilityInfo$Builder;->setRotateAndCropRotation(I)Landroid/content/res/CameraCompatibilityInfo$Builder;

    move-result-object v0

    .line 1713
    invoke-virtual {v0, p0}, Landroid/content/res/CameraCompatibilityInfo$Builder;->setShouldOverrideSensorOrientation(Z)Landroid/content/res/CameraCompatibilityInfo$Builder;

    move-result-object p0

    .line 1714
    invoke-virtual {p0}, Landroid/content/res/CameraCompatibilityInfo$Builder;->build()Landroid/content/res/CameraCompatibilityInfo;

    move-result-object p0

    .line 1711
    return-object p0
.end method

.method private blacklist getPhysicalCameraMultiResolutionConfigs(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Ljava/util/Map;
    .registers 11
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

    .line 631
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mCameraIdToMultiResolutionStreamConfigurationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 632
    iget-object p2, p0, Landroid/hardware/camera2/CameraManager;->mCameraIdToMultiResolutionStreamConfigurationMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 635
    :cond_11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 637
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mCameraIdToMultiResolutionStreamConfigurationMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_SUPPORTED:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 642
    if-eqz v1, :cond_96

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_96

    .line 650
    :cond_2c
    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v1

    .line 651
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_4a

    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isUltraHighResolutionSensor()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 652
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 654
    if-eqz p2, :cond_49

    .line 655
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_49
    return-object v0

    .line 660
    :cond_4a
    :try_start_4a
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 661
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2}, Landroid/hardware/camera2/CameraManager;->getClientAttribution(IZ)Landroid/content/AttributionSourceState;

    move-result-object v5

    .line 663
    iget-object p2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 666
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget v3, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    new-instance p2, Landroid/content/res/CameraCompatibilityInfo$Builder;

    invoke-direct {p2}, Landroid/content/res/CameraCompatibilityInfo$Builder;-><init>()V

    .line 667
    invoke-virtual {p2}, Landroid/content/res/CameraCompatibilityInfo$Builder;->build()Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v4

    .line 664
    const/4 v6, 0x0

    move-object v1, p3

    invoke-interface/range {v1 .. v6}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;ILandroid/content/res/CameraCompatibilityInfo;Landroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p2

    .line 670
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 673
    if-eqz p2, :cond_84

    .line 674
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_84} :catch_88

    .line 676
    :cond_84
    move-object p3, v1

    goto :goto_4e

    .line 682
    :cond_86
    nop

    .line 684
    return-object v0

    .line 677
    :catch_88
    move-exception v0

    .line 678
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/4 p2, 0x4

    const-string p3, "Camera service is currently unavailable"

    invoke-direct {p1, p2, p3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 681
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 643
    :cond_96
    :goto_96
    return-object v0
.end method

.method public static blacklist getRotationOverride(Landroid/content/Context;)Landroid/content/res/CameraCompatibilityInfo;
    .registers 3

    .line 1646
    nop

    .line 1647
    nop

    .line 1649
    if-eqz p0, :cond_d

    .line 1650
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1651
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    .line 1649
    :cond_d
    const/4 v0, 0x0

    move-object v1, v0

    .line 1654
    :goto_f
    invoke-static {p0, v0, v1}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getRotationOverride(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/CameraCompatibilityInfo;
    .registers 6

    .line 1664
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->enableCameraCompatCompatibilityInfoRotateAndCropBugfix()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1665
    invoke-static {}, Landroid/hardware/camera2/CameraManager;->isCameraCompatibilityInfoRequested()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1666
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getCameraCompatibilityInfo()Landroid/content/res/CameraCompatibilityInfo;

    move-result-object p0

    return-object p0

    .line 1670
    :cond_11
    if-eqz p0, :cond_63

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_63

    .line 1671
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1673
    if-eqz p0, :cond_63

    .line 1674
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 1675
    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    .line 1676
    iget-object v1, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object v1, v1, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iget v1, v1, Landroid/app/CameraCompatTaskInfo;->cameraCompatMode:I

    .line 1678
    invoke-static {v1}, Landroid/hardware/camera2/CameraManager;->isInCameraCompatibilityInfo(I)Z

    move-result v2

    if-eqz v2, :cond_62

    iget-object v2, v0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_62

    iget-object v2, v0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1680
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1682
    iget-object p0, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object p0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iget p0, p0, Landroid/app/CameraCompatTaskInfo;->displayRotation:I

    invoke-static {v1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCompatibilityInfoForCompatFreeform(II)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object p0

    return-object p0

    .line 1686
    :cond_62
    goto :goto_2b

    .line 1691
    :cond_63
    sget-boolean p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sLandscapeToPortrait:Z

    if-nez p0, :cond_71

    .line 1693
    new-instance p0, Landroid/content/res/CameraCompatibilityInfo$Builder;

    invoke-direct {p0}, Landroid/content/res/CameraCompatibilityInfo$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/CameraCompatibilityInfo$Builder;->build()Landroid/content/res/CameraCompatibilityInfo;

    move-result-object p0

    return-object p0

    .line 1696
    :cond_71
    if-eqz p1, :cond_85

    if-eqz p2, :cond_85

    .line 1698
    :try_start_75
    const-string p0, "android.camera.PROPERTY_COMPAT_OVERRIDE_LANDSCAPE_TO_PORTRAIT"

    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    .line 1700
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0

    .line 1698
    invoke-static {p0}, Landroid/hardware/camera2/CameraManager;->getLandscapeToPortraitOverride(Z)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object p0
    :try_end_83
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_75 .. :try_end_83} :catch_84

    return-object p0

    .line 1701
    :catch_84
    move-exception p0

    .line 1706
    :cond_85
    const-wide/32 p0, 0xef10e60

    invoke-static {p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p0

    invoke-static {p0}, Landroid/hardware/camera2/CameraManager;->getLandscapeToPortraitOverride(Z)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist isCameraCompatibilityInfoRequested()Z
    .registers 3

    .line 1718
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getCameraCompatibilityInfo()Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v0

    .line 1719
    invoke-virtual {v0}, Landroid/content/res/CameraCompatibilityInfo;->getRotateAndCropRotation()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    .line 1720
    invoke-virtual {v0}, Landroid/content/res/CameraCompatibilityInfo;->getRotateAndCropRotation()I

    move-result v1

    if-nez v1, :cond_20

    .line 1721
    :cond_11
    invoke-virtual {v0}, Landroid/content/res/CameraCompatibilityInfo;->shouldOverrideSensorOrientation()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1722
    invoke-virtual {v0}, Landroid/content/res/CameraCompatibilityInfo;->shouldAllowTransformInverseDisplay()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v0, 0x1

    .line 1719
    :goto_21
    return v0
.end method

.method public static blacklist isHiddenPhysicalCamera(Ljava/lang/String;)Z
    .registers 3

    .line 2109
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 2111
    if-nez v1, :cond_c

    return v0

    .line 2113
    :cond_c
    invoke-interface {v1, p0}, Landroid/hardware/ICameraService;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_11

    return p0

    .line 2114
    :catch_11
    move-exception p0

    .line 2117
    return v0
.end method

.method private static blacklist isInCameraCompatibilityInfo(I)Z
    .registers 2

    .line 1728
    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;ILandroid/content/res/CameraCompatibilityInfo;Z)Landroid/hardware/camera2/CameraDevice;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1075
    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 1076
    nop

    .line 1077
    iget-object v11, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1078
    nop

    .line 1079
    nop

    .line 1080
    :try_start_a
    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->isCameraDeviceSetupSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_17

    .line 1081
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraDeviceSetupUnsafe(Ljava/lang/String;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    move-result-object v0

    move-object v9, v0

    goto :goto_18

    .line 1080
    :cond_17
    move-object v9, v12

    .line 1084
    :goto_18
    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1091
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v8, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    move-object v6, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraManager;ILandroid/content/Context;Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;Z)V

    move-object p2, v1

    .line 1093
    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    move-result-object v1
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_c2

    .line 1096
    const/4 v9, 0x4

    :try_start_34
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 1097
    if-eqz v0, :cond_5f

    .line 1103
    nop

    .line 1104
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getClientAttribution(Z)Landroid/content/AttributionSourceState;

    move-result-object v2

    .line 1105
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1110
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1113
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v7

    .line 1106
    move/from16 v3, p4

    move-object/from16 v5, p5

    move/from16 v8, p6

    move-object v6, v2

    move-object v2, p1

    invoke-interface/range {v0 .. v8}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;IILandroid/content/res/CameraCompatibilityInfo;Landroid/content/AttributionSourceState;IZ)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v12

    .line 1144
    :goto_5e
    goto :goto_af

    .line 1098
    :cond_5f
    new-instance p1, Landroid/os/ServiceSpecificException;

    const-string v0, "Camera service is currently unavailable"

    invoke-direct {p1, v9, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_67
    .catch Landroid/os/ServiceSpecificException; {:try_start_34 .. :try_end_67} :catch_77
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_67} :catch_67
    .catchall {:try_start_34 .. :try_end_67} :catchall_c2

    .line 1137
    :catch_67
    move-exception v0

    .line 1139
    :try_start_68
    new-instance p1, Landroid/os/ServiceSpecificException;

    const-string v0, "Camera service is currently unavailable"

    invoke-direct {p1, v9, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 1142
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 1143
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 1114
    :catch_77
    move-exception v0

    move-object p1, v0

    .line 1115
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_ba

    .line 1117
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x6

    const/4 v2, 0x7

    if-eq v0, v2, :cond_9f

    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v3, 0x8

    if-eq v0, v3, :cond_9f

    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v0, v1, :cond_9f

    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v0, v9, :cond_9f

    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_9a

    goto :goto_9f

    .line 1135
    :cond_9a
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 1125
    :cond_9f
    :goto_9f
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 1127
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v0, v1, :cond_b5

    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v0, v9, :cond_b5

    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v0, v2, :cond_b5

    .line 1144
    goto :goto_5e

    .line 1151
    :goto_af
    invoke-virtual {p2, v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V

    .line 1152
    nop

    .line 1153
    monitor-exit v11

    .line 1155
    return-object p2

    .line 1131
    :cond_b5
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 1116
    :cond_ba
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Should\'ve gone down the shim path"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 1153
    :catchall_c2
    move-exception v0

    move-object p1, v0

    monitor-exit v11
    :try_end_c5
    .catchall {:try_start_68 .. :try_end_c5} :catchall_c2

    throw p1
.end method

.method public static blacklist physicalCallbacksAreEnabledForUnavailableCamera()Z
    .registers 2

    .line 1777
    const-wide/32 v0, 0xe909d6a

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static blacklist reportExtensionSessionStats(Landroid/hardware/CameraExtensionSessionStats;)Ljava/lang/String;
    .registers 4

    .line 2232
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 2233
    const-string v1, ""

    const-string v2, "CameraManager"

    if-nez v0, :cond_14

    .line 2234
    const-string p0, "CameraService not available. Not reporting extension stats."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    return-object v1

    .line 2238
    :cond_14
    :try_start_14
    invoke-interface {v0, p0}, Landroid/hardware/ICameraService;->reportExtensionSessionStats(Landroid/hardware/CameraExtensionSessionStats;)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_18} :catch_19

    return-object p0

    .line 2239
    :catch_19
    move-exception p0

    .line 2240
    const-string v0, "Failed to report extension session stats to cameraservice."

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2242
    return-object v1
.end method


# virtual methods
.method public whitelist getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 715
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;Landroid/content/res/CameraCompatibilityInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getCameraCharacteristics(Ljava/lang/String;Z)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 740
    nop

    .line 741
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager;->getLandscapeToPortraitOverride(Z)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object p2

    .line 740
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;Landroid/content/res/CameraCompatibilityInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getCameraDeviceSetup(Ljava/lang/String;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 893
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->isCameraDeviceSetupSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 898
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraDeviceSetupUnsafe(Ljava/lang/String;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    move-result-object p1

    return-object p1

    .line 894
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDeviceSetup is not supported for Camera ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCameraExtensionCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 838
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 839
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager;->getPhysicalIdToCharsMap(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;

    move-result-object v1

    .line 840
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    new-instance v0, Landroid/hardware/camera2/CameraExtensionCharacteristics;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public whitelist getCameraIdList()[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 306
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 307
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 306
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCameraIdListNoLazy()[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 323
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 324
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 323
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdListNoLazy(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCameraService()Landroid/hardware/ICameraService;
    .registers 2

    .line 2209
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getClientAttribution()Landroid/content/AttributionSourceState;
    .registers 3

    .line 1046
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/CameraManager;->getClientAttribution(IZ)Landroid/content/AttributionSourceState;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getClientAttribution(IZ)Landroid/content/AttributionSourceState;
    .registers 5

    .line 1006
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 1007
    const/4 v1, -0x1

    if-eq p1, v1, :cond_d

    .line 1008
    invoke-virtual {v0, p1}, Landroid/content/AttributionSource;->withDeviceId(I)Landroid/content/AttributionSource;

    move-result-object v0

    .line 1010
    :cond_d
    nop

    .line 1011
    invoke-virtual {v0}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object p1

    .line 1013
    if-eqz p2, :cond_15

    .line 1014
    return-object p1

    .line 1016
    :cond_15
    new-instance p2, Landroid/content/AttributionSourceState;

    invoke-direct {p2}, Landroid/content/AttributionSourceState;-><init>()V

    .line 1018
    iput v1, p2, Landroid/content/AttributionSourceState;->uid:I

    .line 1019
    iput v1, p2, Landroid/content/AttributionSourceState;->pid:I

    .line 1020
    iget p1, p1, Landroid/content/AttributionSourceState;->deviceId:I

    iput p1, p2, Landroid/content/AttributionSourceState;->deviceId:I

    .line 1021
    iget-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 1022
    iget-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 1023
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/content/AttributionSourceState;

    iput-object p1, p2, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 1024
    return-object p2
.end method

.method public blacklist getClientAttribution(Z)Landroid/content/AttributionSourceState;
    .registers 3

    .line 1037
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CameraManager;->getClientAttribution(IZ)Landroid/content/AttributionSourceState;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getConcurrentCameraIds()Ljava/util/Set;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 378
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 379
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 378
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getConcurrentCameraIds(II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDevicePolicyFromContext(Landroid/content/Context;)I
    .registers 4

    .line 575
    invoke-virtual {p1}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    if-nez v0, :cond_8

    .line 576
    const/4 p1, 0x0

    return p1

    .line 579
    :cond_8
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v0, :cond_16

    .line 580
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    .line 582
    :cond_16
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v0, :cond_1c

    .line 583
    const/4 p1, -0x1

    goto :goto_27

    .line 584
    :cond_1c
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getDeviceId()I

    move-result p1

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/companion/virtual/VirtualDeviceManager;->getDevicePolicy(II)I

    move-result p1

    .line 582
    :goto_27
    return p1
.end method

.method public blacklist getPhysicalIdToCharsMap(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;
    .registers 5
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

    .line 850
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 852
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object p1

    .line 853
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 854
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 855
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    goto :goto_d

    .line 857
    :cond_21
    return-object v0
.end method

.method public whitelist getTorchStrengthLevel(Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1632
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_17

    .line 1635
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 1638
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1639
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 1636
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getTorchStrengthLevel(Ljava/lang/String;Landroid/content/AttributionSourceState;I)I

    move-result p1

    .line 1635
    return p1

    .line 1633
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No camera available on device."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2152
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_46

    .line 2155
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 2156
    if-eqz v0, :cond_3d

    .line 2160
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2162
    :try_start_11
    new-instance v2, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-direct {v2, p5, p4}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;-><init>(Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;Ljava/util/concurrent/Executor;)V

    .line 2164
    nop

    .line 2165
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->getCallback()Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

    move-result-object p4

    .line 2166
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/ICameraService;->injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;

    move-result-object p1

    .line 2168
    invoke-virtual {v2, p1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->setRemoteInjectionSession(Landroid/hardware/camera2/ICameraInjectionSession;)V
    :try_end_22
    .catch Landroid/os/ServiceSpecificException; {:try_start_11 .. :try_end_22} :catch_35
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_22} :catch_27
    .catchall {:try_start_11 .. :try_end_22} :catchall_25

    .line 2177
    nop

    .line 2178
    :try_start_23
    monitor-exit v1

    .line 2179
    return-void

    .line 2178
    :catchall_25
    move-exception p1

    goto :goto_3b

    .line 2171
    :catch_27
    move-exception p1

    .line 2173
    new-instance p1, Landroid/os/ServiceSpecificException;

    const-string p2, "Camera service is currently unavailable"

    const/4 p3, 0x4

    invoke-direct {p1, p3, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 2176
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 2169
    :catch_35
    move-exception p1

    .line 2170
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 2178
    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_25

    throw p1

    .line 2157
    :cond_3d
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const/4 p2, 0x2

    const-string p3, "Camera service is currently unavailable"

    invoke-direct {p1, p2, p3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2153
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No cameras available on device"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2201
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    .line 2202
    return-void
.end method

.method public whitelist isCameraDeviceSetupSupported(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 939
    if-eqz p1, :cond_4c

    .line 943
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_2d

    .line 944
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 945
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 944
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList(II)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 945
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 950
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    .line 951
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->isCameraDeviceSetupSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p1

    return p1

    .line 946
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' not available on device."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Camera ID was null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist isCameraDeviceSharingSupported(Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 977
    if-eqz p1, :cond_55

    .line 981
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_36

    .line 982
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 983
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 982
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList(II)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 983
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 988
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    .line 989
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SHARED_SESSION_OUTPUT_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 990
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    .line 991
    if-eqz p1, :cond_34

    const/4 p1, 0x1

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    :goto_35
    return p1

    .line 984
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' not available on device."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 978
    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Camera ID was null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist isCameraServiceDisabled()Z
    .registers 2

    .line 2218
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    return v0
.end method

.method public whitelist isConcurrentSessionConfigurationSupported(Ljava/util/Map;)Z
    .registers 6
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

    .line 417
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 420
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 421
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 422
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v3

    .line 418
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isConcurrentSessionConfigurationSupported(Ljava/util/Map;ILandroid/content/AttributionSourceState;I)Z

    move-result p1

    .line 417
    return p1
.end method

.method public whitelist openCamera(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1440
    if-eqz p3, :cond_1c

    .line 1443
    if-ltz p2, :cond_14

    .line 1447
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1448
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v6

    .line 1447
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-object v4, p3

    move-object v3, p4

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/CameraManager;->openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;ILandroid/content/res/CameraCompatibilityInfo;Z)V

    .line 1449
    return-void

    .line 1444
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "oomScoreOffset < 0, cannot increase priority of camera client"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1441
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1240
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object p3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1241
    invoke-static {p3}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v5

    .line 1240
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/camera2/CameraManager;->openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;ILandroid/content/res/CameraCompatibilityInfo;Z)V

    .line 1242
    return-void
.end method

.method public whitelist openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1322
    if-eqz p2, :cond_12

    .line 1325
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1326
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v6

    .line 1325
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/CameraManager;->openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;ILandroid/content/res/CameraCompatibilityInfo;Z)V

    .line 1327
    return-void

    .line 1323
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist openCamera(Ljava/lang/String;ZLandroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1277
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 1279
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager;->getLandscapeToPortraitOverride(Z)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v5

    .line 1277
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/camera2/CameraManager;->openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;ILandroid/content/res/CameraCompatibilityInfo;Z)V

    .line 1281
    return-void
.end method

.method public blacklist openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;ILandroid/content/res/CameraCompatibilityInfo;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1479
    if-eqz p1, :cond_1c

    .line 1481
    if-eqz p2, :cond_14

    .line 1484
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_c

    .line 1488
    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;ILandroid/content/res/CameraCompatibilityInfo;Z)Landroid/hardware/camera2/CameraDevice;

    .line 1490
    return-void

    .line 1485
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No cameras available on device"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1482
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1480
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cameraId was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist openSharedCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1370
    if-eqz p2, :cond_32

    .line 1373
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->isCameraDeviceSharingSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1377
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1378
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v6

    .line 1377
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/CameraManager;->openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;ILandroid/content/res/CameraCompatibilityInfo;Z)V

    .line 1379
    return-void

    .line 1374
    :cond_18
    move-object v2, p1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CameraDevice sharing is not supported for Camera ID: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1371
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist prepareCameraCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 795
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 797
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setCameraId(I)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    .line 800
    goto :goto_2c

    .line 817
    :catchall_b
    move-exception p1

    goto :goto_5f

    .line 798
    :catch_d
    move-exception v1

    .line 799
    :try_start_e
    const-string v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse camera Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to integer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :goto_2c
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 804
    invoke-virtual {v2}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v3

    .line 803
    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->cameraIdHasConcurrentStreams(Ljava/lang/String;II)Z

    move-result v1

    .line 805
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setHasMandatoryConcurrentStreams(Z)V

    .line 807
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getDisplaySize()Landroid/util/Size;

    move-result-object v1

    .line 808
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setDisplaySize(Landroid/util/Size;)V

    .line 810
    nop

    .line 811
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->getPhysicalCameraMultiResolutionConfigs(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Ljava/util/Map;

    move-result-object p1

    .line 812
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_58

    .line 813
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setMultiResolutionStreamConfigurationMap(Ljava/util/Map;)V

    .line 816
    :cond_58
    new-instance p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    monitor-exit v0

    return-object p1

    .line 817
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_e .. :try_end_60} :catchall_b

    throw p1
.end method

.method public whitelist registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .registers 9

    .line 454
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 455
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    iget-object p2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 456
    invoke-virtual {p2}, Landroid/content/Context;->getDeviceId()I

    move-result v4

    iget-object p2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v5

    .line 454
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;ZII)V

    .line 457
    return-void
.end method

.method public whitelist registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 9

    .line 491
    if-eqz p1, :cond_1a

    .line 494
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-boolean v3, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 495
    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v4

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 496
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v5

    .line 494
    move-object v2, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;ZII)V

    .line 497
    return-void

    .line 492
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 4

    .line 288
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)V

    .line 289
    return-void
.end method

.method public whitelist registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .registers 6

    .line 534
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 535
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 536
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 534
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;II)V

    .line 537
    return-void
.end method

.method public whitelist registerTorchCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .registers 6

    .line 554
    if-eqz p1, :cond_16

    .line 557
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 558
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 557
    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;II)V

    .line 559
    return-void

    .line 555
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setTorchMode(Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1533
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_16

    .line 1536
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 1540
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1541
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 1537
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;ZLandroid/content/AttributionSourceState;I)V

    .line 1542
    return-void

    .line 1534
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No cameras available on device"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist turnOnTorchWithStrengthLevel(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1601
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_16

    .line 1604
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 1608
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1609
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 1605
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/content/AttributionSourceState;I)V

    .line 1610
    return-void

    .line 1602
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No camera available on device"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 3

    .line 508
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 509
    return-void
.end method

.method public whitelist unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .registers 3

    .line 570
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 571
    return-void
.end method
