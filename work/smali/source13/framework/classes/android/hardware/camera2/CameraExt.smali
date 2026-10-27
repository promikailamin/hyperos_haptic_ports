.class public interface abstract Landroid/hardware/camera2/CameraExt;
.super Ljava/lang/Object;
.source "CameraExt.java"


# virtual methods
.method public abstract blacklist addMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
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
.end method

.method public abstract blacklist cameraClosed(Ljava/lang/String;)V
.end method

.method public abstract blacklist cameraOpened(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist getLimitedSensorIso(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Range;
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
.end method

.method public abstract blacklist getLimitedSensorSize(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Size;
.end method

.method public abstract blacklist hideCamera()Z
.end method

.method public abstract blacklist initCamera(Landroid/hardware/Camera;I)V
.end method

.method public abstract blacklist initCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
.end method

.method public abstract blacklist isAuxCameraClient(Ljava/lang/String;)Z
.end method

.method public blacklist isCameraSoundEnforced()Z
    .registers 2

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist isCustomStreamConfigurationEnabled()Z
.end method

.method public abstract blacklist isExposeCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
.end method

.method public abstract blacklist isInputConfigurationFormatValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
.end method

.method public abstract blacklist isInputConfigurationSizeValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
.end method

.method public abstract blacklist isPrivilegedApp(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isVirtualCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
.end method

.method public abstract blacklist limitMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
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
.end method

.method public abstract blacklist releaseCamera(Landroid/hardware/Camera;)V
.end method

.method public abstract blacklist releaseCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
.end method
