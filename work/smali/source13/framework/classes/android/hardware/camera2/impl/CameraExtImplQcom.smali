.class public Landroid/hardware/camera2/impl/CameraExtImplQcom;
.super Landroid/hardware/camera2/impl/CameraExtImplBase;
.source "CameraExtImplQcom.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
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

    .line 73
    .local p3, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p4, "minFrameDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    .local p5, "stallDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    const/4 v0, 0x0

    return v0
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

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLimitedSensorSize(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Size;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cameraId"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hideCamera()Z
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initCamera(Landroid/hardware/Camera;I)V
    .registers 3
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cameraId"    # I

    .line 34
    return-void
.end method

.method public blacklist initCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "cameraId"    # Ljava/lang/String;

    .line 45
    return-void
.end method

.method public blacklist isCustomStreamConfigurationEnabled()Z
    .registers 2

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isExposeCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 3
    .param p1, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInputConfigurationFormatValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 4
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInputConfigurationSizeValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 4
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVirtualCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 3
    .param p1, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 100
    const/4 v0, 0x0

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

    .line 64
    .local p3, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p4, "minFrameDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    .local p5, "stallDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist releaseCamera(Landroid/hardware/Camera;)V
    .registers 2
    .param p1, "camera"    # Landroid/hardware/Camera;

    .line 39
    return-void
.end method

.method public blacklist releaseCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "cameraId"    # Ljava/lang/String;

    .line 51
    return-void
.end method
