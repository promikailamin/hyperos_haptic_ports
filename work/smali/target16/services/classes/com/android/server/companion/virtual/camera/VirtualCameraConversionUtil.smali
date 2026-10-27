.class public abstract Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;
.super Ljava/lang/Object;
.source "VirtualCameraConversionUtil.java"


# direct methods
.method public static synthetic $r8$lambda$GbsuBtfWboD1INdCSSvZK_JsSko(Landroid/companion/virtual/camera/VirtualCameraStreamConfig;)Landroid/companion/virtualcamera/SupportedStreamConfiguration;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->convertSupportedStreamConfiguration(Landroid/companion/virtual/camera/VirtualCameraStreamConfig;)Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LzWQiZNxN_C1LzNLgPdGNS9yANs(I)[Landroid/companion/virtualcamera/SupportedStreamConfiguration;
    .registers 1

    .line 63
    new-array p0, p0, [Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smconvertToCaptureRequest(Landroid/companion/virtualcamera/VirtualCameraMetadata;)Landroid/hardware/camera2/CaptureRequest;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->convertToCaptureRequest(Landroid/companion/virtualcamera/VirtualCameraMetadata;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smconvertToJavaFormat(I)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->convertToJavaFormat(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smconvertToVdmCaptureResultConsumer(Landroid/companion/virtualcamera/ICaptureResultConsumer;)Landroid/companion/virtual/camera/ICaptureResultConsumer;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->convertToVdmCaptureResultConsumer(Landroid/companion/virtualcamera/ICaptureResultConsumer;)Landroid/companion/virtual/camera/ICaptureResultConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smconvertToVirtualCameraMetadata(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/companion/virtualcamera/VirtualCameraMetadata;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->convertToVirtualCameraMetadata(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/companion/virtualcamera/VirtualCameraMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static convertCallback(Landroid/companion/virtual/camera/IVirtualCameraCallback;)Landroid/companion/virtualcamera/IVirtualCameraCallback;
    .registers 2

    .line 79
    new-instance v0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;-><init>(Landroid/companion/virtual/camera/IVirtualCameraCallback;)V

    return-object v0
.end method

.method public static convertSupportedStreamConfiguration(Landroid/companion/virtual/camera/VirtualCameraStreamConfig;)Landroid/companion/virtualcamera/SupportedStreamConfiguration;
    .registers 3

    .line 129
    new-instance v0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    invoke-direct {v0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration;-><init>()V

    .line 130
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->height:I

    .line 131
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->width:I

    .line 132
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getFormat()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->convertToHalFormat(I)I

    move-result v1

    iput v1, v0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->pixelFormat:I

    .line 133
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getMaximumFramesPerSecond()I

    move-result p0

    iput p0, v0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->maxFps:I

    return-object v0
.end method

.method public static convertToCameraMetadataNative(Landroid/companion/virtualcamera/VirtualCameraMetadata;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 4

    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 188
    :try_start_4
    iget-object p0, p0, Landroid/companion/virtualcamera/VirtualCameraMetadata;->metadata:[B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 190
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 191
    sget-object p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_1c
    .catchall {:try_start_4 .. :try_end_16} :catchall_1a

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_1a
    move-exception p0

    goto :goto_28

    .line 193
    :catch_1c
    :try_start_1c
    const-string p0, "VirtualCameraConversionUtil"

    const-string v1, "Failed to convert VirtualCameraMetadata to CameraMetadataNative."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_1a

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :goto_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    throw p0
.end method

.method public static convertToCaptureRequest(Landroid/companion/virtualcamera/VirtualCameraMetadata;)Landroid/hardware/camera2/CaptureRequest;
    .registers 7

    .line 202
    invoke-static {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->convertToCameraMetadataNative(Landroid/companion/virtualcamera/VirtualCameraMetadata;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 205
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V

    .line 207
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertToHalFormat(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/16 v0, 0x23

    if-eq p0, v0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    return v0
.end method

.method public static convertToJavaFormat(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/16 v0, 0x23

    if-eq p0, v0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    return v0
.end method

.method public static convertToVdmCaptureResultConsumer(Landroid/companion/virtualcamera/ICaptureResultConsumer;)Landroid/companion/virtual/camera/ICaptureResultConsumer;
    .registers 2

    if-eqz p0, :cond_8

    .line 217
    new-instance v0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$2;-><init>(Landroid/companion/virtualcamera/ICaptureResultConsumer;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertToVirtualCameraMetadata(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/companion/virtualcamera/VirtualCameraMetadata;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 159
    :cond_4
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->convertToVirtualCameraMetadata(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/companion/virtualcamera/VirtualCameraMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static convertToVirtualCameraMetadata(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/companion/virtualcamera/VirtualCameraMetadata;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 168
    :cond_4
    new-instance v1, Landroid/companion/virtualcamera/VirtualCameraMetadata;

    invoke-direct {v1}, Landroid/companion/virtualcamera/VirtualCameraMetadata;-><init>()V

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    .line 171
    :try_start_e
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    .line 172
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 173
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    iput-object p0, v1, Landroid/companion/virtualcamera/VirtualCameraMetadata;->metadata:[B
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_20
    .catchall {:try_start_e .. :try_end_1a} :catchall_1e

    .line 178
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_1e
    move-exception p0

    goto :goto_2b

    .line 175
    :catch_20
    :try_start_20
    const-string p0, "VirtualCameraConversionUtil"

    const-string v1, "Failed to convert CameraMetadataNative to VirtualCameraMetadata."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1e

    .line 178
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :goto_2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 179
    throw p0
.end method

.method public static getServiceCameraConfiguration(Landroid/companion/virtual/camera/VirtualCameraConfig;)Landroid/companion/virtualcamera/VirtualCameraConfiguration;
    .registers 4

    .line 59
    new-instance v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;

    invoke-direct {v0}, Landroid/companion/virtualcamera/VirtualCameraConfiguration;-><init>()V

    .line 61
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getStreamConfigs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 62
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 63
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    iput-object v1, v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->supportedStreamConfigs:[Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    .line 64
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getSensorOrientation()I

    move-result v1

    iput v1, v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->sensorOrientation:I

    .line 65
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result v1

    iput v1, v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->lensFacing:I

    .line 66
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->convertCallback(Landroid/companion/virtual/camera/IVirtualCameraCallback;)Landroid/companion/virtualcamera/IVirtualCameraCallback;

    move-result-object v1

    iput-object v1, v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->virtualCameraCallback:Landroid/companion/virtualcamera/IVirtualCameraCallback;

    .line 69
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraConfig;->isPerFrameCameraMetadataEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->perFrameCameraMetadataEnabled:Z

    .line 71
    invoke-virtual {p0}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 70
    invoke-static {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->convertToVirtualCameraMetadata(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/companion/virtualcamera/VirtualCameraMetadata;

    move-result-object p0

    iput-object p0, v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->cameraCharacteristics:Landroid/companion/virtualcamera/VirtualCameraMetadata;

    return-object v0
.end method
