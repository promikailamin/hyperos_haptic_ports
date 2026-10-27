.class public Landroid/hardware/camera2/impl/CameraExtImplXiaoMi;
.super Landroid/hardware/camera2/impl/CameraExtImplBase;
.source "CameraExtImplXiaoMi.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    const-class v0, Landroid/hardware/camera2/impl/CameraExtImplXiaoMi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/impl/CameraExtImplXiaoMi;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;)Z"
        }
    .end annotation

    .line 93
    .local p3, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p4, "minFrameDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    .local p5, "stallDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    invoke-static {p1, p2, p3, p4, p5}, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->addMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public blacklist cameraClosed(Ljava/lang/String;)V
    .registers 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 126
    invoke-static {p1}, Landroid/hardware/CameraInjector;->hideTipViewForCamera(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public blacklist cameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;

    .line 131
    invoke-static {p1, p2}, Landroid/hardware/CameraInjector;->showTipViewForCamera(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public blacklist getLimitedSensorIso(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Range;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->getLimitedSensorIso(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLimitedSensorSize(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Size;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cameraId"    # Ljava/lang/String;

    .line 100
    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->getLimitedSensorSize(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hideCamera()Z
    .registers 2

    .line 111
    invoke-static {}, Landroid/hardware/CameraInjector;->hideCamera()Z

    move-result v0

    return v0
.end method

.method public blacklist initCamera(Landroid/hardware/Camera;I)V
    .registers 3
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cameraId"    # I

    .line 52
    invoke-static {p1, p2}, Landroid/hardware/CameraInjector;->initCamera(Landroid/hardware/Camera;I)V

    .line 53
    return-void
.end method

.method public blacklist initCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .registers 6
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "cameraId"    # Ljava/lang/String;

    .line 62
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtImplXiaoMi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCameraDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->initCamera(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public blacklist isAuxCameraClient(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 31
    invoke-static {}, Landroid/hardware/CameraInjector;->isExposeAuxCamera()Z

    move-result v0

    .line 32
    .local v0, "expose":Z
    if-nez v0, :cond_a

    .line 33
    invoke-super {p0, p1}, Landroid/hardware/camera2/impl/CameraExtImplBase;->isAuxCameraClient(Ljava/lang/String;)Z

    move-result v0

    .line 35
    :cond_a
    return v0
.end method

.method public blacklist isCameraSoundEnforced()Z
    .registers 2

    .line 26
    invoke-static {}, Landroid/hardware/CameraInjector;->isCameraSoundEnforced()Z

    move-result v0

    return v0
.end method

.method public blacklist isCustomStreamConfigurationEnabled()Z
    .registers 2

    .line 74
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->isCustomCameraResolutionEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist isExposeCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 3
    .param p1, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 116
    invoke-static {p1}, Landroid/hardware/CameraInjector;->isExposeCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v0

    return v0
.end method

.method public blacklist isInputConfigurationFormatValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 4
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .line 41
    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->isInputConfigurationFormatValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v0

    return v0
.end method

.method public blacklist isInputConfigurationSizeValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 4
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .line 47
    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->isInputConfigurationSizeValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v0

    return v0
.end method

.method public blacklist isVirtualCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 3
    .param p1, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 121
    invoke-static {p1}, Landroid/hardware/CameraInjector;->isVirtualCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v0

    return v0
.end method

.method public blacklist limitMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;)Z"
        }
    .end annotation

    .line 83
    .local p3, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p4, "minFrameDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    .local p5, "stallDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    invoke-static {p1, p2, p3, p4, p5}, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->limitMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public blacklist releaseCamera(Landroid/hardware/Camera;)V
    .registers 2
    .param p1, "camera"    # Landroid/hardware/Camera;

    .line 57
    invoke-static {p1}, Landroid/hardware/CameraInjector;->releaseCamera(Landroid/hardware/Camera;)V

    .line 58
    return-void
.end method

.method public blacklist releaseCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .registers 6
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "cameraId"    # Ljava/lang/String;

    .line 68
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtImplXiaoMi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseCameraDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->releaseCamera(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V

    .line 70
    return-void
.end method
