.class final Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;
.super Ljava/lang/Object;
.source "CameraAdvancedExtensionSessionImpl.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageReaderHandler"
.end annotation


# instance fields
.field private final blacklist mIImageProcessor:Landroid/hardware/camera2/extension/IImageProcessorImpl;

.field private final blacklist mOutputConfigId:Landroid/hardware/camera2/extension/OutputConfigId;

.field private final blacklist mPhysicalCameraId:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(ILandroid/hardware/camera2/extension/IImageProcessorImpl;Ljava/lang/String;)V
    .registers 5

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    new-instance v0, Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/OutputConfigId;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mOutputConfigId:Landroid/hardware/camera2/extension/OutputConfigId;

    .line 1074
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mOutputConfigId:Landroid/hardware/camera2/extension/OutputConfigId;

    iput p1, v0, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    .line 1075
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mIImageProcessor:Landroid/hardware/camera2/extension/IImageProcessorImpl;

    .line 1076
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mPhysicalCameraId:Ljava/lang/String;

    .line 1077
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/hardware/camera2/extension/IImageProcessorImpl;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;-><init>(ILandroid/hardware/camera2/extension/IImageProcessorImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist onImageAvailable(Landroid/media/ImageReader;)V
    .registers 7

    .line 1081
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mIImageProcessor:Landroid/hardware/camera2/extension/IImageProcessorImpl;

    if-nez v1, :cond_7

    .line 1082
    return-void

    .line 1087
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_b} :catch_b2

    .line 1091
    nop

    .line 1092
    if-nez v1, :cond_14

    .line 1093
    const-string p1, "Invalid image!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    return-void

    .line 1098
    :cond_14
    :try_start_14
    invoke-virtual {p1, v1}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_a8

    .line 1103
    nop

    .line 1105
    new-instance p1, Landroid/hardware/camera2/extension/ParcelImage;

    invoke-direct {p1}, Landroid/hardware/camera2/extension/ParcelImage;-><init>()V

    .line 1106
    invoke-virtual {v1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    iput-object v2, p1, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    .line 1108
    :try_start_23
    invoke-virtual {v1}, Landroid/media/Image;->getFence()Landroid/hardware/SyncFence;

    move-result-object v2

    .line 1109
    invoke-virtual {v2}, Landroid/hardware/SyncFence;->isValid()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1110
    invoke-virtual {v2}, Landroid/hardware/SyncFence;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p1, Landroid/hardware/camera2/extension/ParcelImage;->fence:Landroid/os/ParcelFileDescriptor;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_33} :catch_34

    .line 1114
    :cond_33
    goto :goto_3a

    .line 1112
    :catch_34
    move-exception v2

    .line 1113
    const-string v2, "Failed to parcel buffer fence!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :goto_3a
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v2

    iput v2, p1, Landroid/hardware/camera2/extension/ParcelImage;->width:I

    .line 1116
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v2

    iput v2, p1, Landroid/hardware/camera2/extension/ParcelImage;->height:I

    .line 1117
    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v2

    iput v2, p1, Landroid/hardware/camera2/extension/ParcelImage;->format:I

    .line 1118
    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, p1, Landroid/hardware/camera2/extension/ParcelImage;->timestamp:J

    .line 1119
    invoke-virtual {v1}, Landroid/media/Image;->getTransform()I

    move-result v2

    iput v2, p1, Landroid/hardware/camera2/extension/ParcelImage;->transform:I

    .line 1120
    invoke-virtual {v1}, Landroid/media/Image;->getScalingMode()I

    move-result v2

    iput v2, p1, Landroid/hardware/camera2/extension/ParcelImage;->scalingMode:I

    .line 1121
    invoke-virtual {v1}, Landroid/media/Image;->getPlaneCount()I

    move-result v2

    iput v2, p1, Landroid/hardware/camera2/extension/ParcelImage;->planeCount:I

    .line 1122
    invoke-virtual {v1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p1, Landroid/hardware/camera2/extension/ParcelImage;->crop:Landroid/graphics/Rect;

    .line 1125
    :try_start_6a
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mIImageProcessor:Landroid/hardware/camera2/extension/IImageProcessorImpl;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mOutputConfigId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mPhysicalCameraId:Ljava/lang/String;

    invoke-interface {v2, v3, p1, v4}, Landroid/hardware/camera2/extension/IImageProcessorImpl;->onNextImageAvailable(Landroid/hardware/camera2/extension/OutputConfigId;Landroid/hardware/camera2/extension/ParcelImage;Ljava/lang/String;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_73} :catch_7e
    .catchall {:try_start_6a .. :try_end_73} :catchall_7c

    .line 1131
    :goto_73
    iget-object p1, p1, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1132
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 1133
    goto :goto_9e

    .line 1131
    :catchall_7c
    move-exception v0

    goto :goto_9f

    .line 1127
    :catch_7e
    move-exception v2

    .line 1128
    :try_start_7f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to propagate image buffer on output surface id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mOutputConfigId:Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extension service does not respond!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_7f .. :try_end_9d} :catchall_7c

    goto :goto_73

    .line 1134
    :goto_9e
    return-void

    .line 1131
    :goto_9f
    iget-object p1, p1, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1132
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 1133
    throw v0

    .line 1099
    :catch_a8
    move-exception p1

    .line 1100
    const-string p1, "Failed to detach image"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 1102
    return-void

    .line 1088
    :catch_b2
    move-exception p1

    .line 1089
    const-string p1, "Failed to acquire image, too many images pending!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return-void
.end method
