.class public Lorg/ifaa/android/manager/face/IFAASecureCamera2API;
.super Ljava/lang/Object;
.source "IFAASecureCamera2API.java"


# static fields
.field private static final blacklist SESSION_REGULAR:I = 0x0

.field private static final blacklist SESSION_SECCAM:I = 0x80f6

.field private static final blacklist TAG:Ljava/lang/String; = "IFAASecureCamera2API"

.field private static blacklist is_2dfa:Z

.field private static blacklist mContext:Landroid/content/Context;


# instance fields
.field private final blacklist DEFAULT_REGION_WEIGHT:I

.field private blacklist backgroundHandler_:Landroid/os/Handler;

.field private blacklist backgroundThread_:Landroid/os/HandlerThread;

.field protected blacklist cameraDevice_:Landroid/hardware/camera2/CameraDevice;

.field private blacklist cameraId_:Ljava/lang/Integer;

.field protected blacklist cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

.field protected blacklist cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

.field protected blacklist cameraStarted_:Z

.field protected blacklist cameraStopedLatch_:Ljava/util/concurrent/CountDownLatch;

.field protected blacklist captureBuilder_:Landroid/hardware/camera2/CaptureRequest$Builder;

.field protected blacklist captureCallback_:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field protected blacklist captureSessionClosedLatch_:Ljava/util/concurrent/CountDownLatch;

.field protected blacklist captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

.field private blacklist format_:Ljava/lang/Integer;

.field private blacklist height_:Ljava/lang/Integer;

.field private blacklist ifaafacemgrimpl_:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

.field protected final blacklist mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private blacklist numOfBuffers_:Ljava/lang/Integer;

.field private blacklist previewRotation_:Ljava/lang/Integer;

.field private blacklist previewSurfaceNumOfBuffers_:Ljava/lang/Integer;

.field private blacklist previewSurfaceView_:Landroid/view/SurfaceView;

.field protected blacklist secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

.field protected blacklist surfaceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

.field private blacklist width_:Ljava/lang/Integer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcameraId_(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 90
    const/4 v0, 0x1

    sput-boolean v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->is_2dfa:Z

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifaafacemgrimpl"    # Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->previewSurfaceView_:Landroid/view/SurfaceView;

    .line 64
    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->ifaafacemgrimpl_:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    .line 66
    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    .line 70
    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    .line 71
    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureBuilder_:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 72
    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureCallback_:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 74
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->surfaceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 75
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 76
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStopedLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 77
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSessionClosedLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 79
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

    .line 81
    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStarted_:Z

    .line 84
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->numOfBuffers_:Ljava/lang/Integer;

    .line 85
    const/16 v1, 0x500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->width_:Ljava/lang/Integer;

    .line 86
    const/16 v1, 0x2d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->height_:Ljava/lang/Integer;

    .line 87
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->format_:Ljava/lang/Integer;

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->previewRotation_:Ljava/lang/Integer;

    .line 89
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->previewSurfaceNumOfBuffers_:Ljava/lang/Integer;

    .line 94
    const/16 v0, 0x1e

    iput v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->DEFAULT_REGION_WEIGHT:I

    .line 97
    new-instance v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;

    invoke-direct {v0, p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;-><init>(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)V

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 131
    sput-object p1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mContext:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->ifaafacemgrimpl_:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    .line 133
    return-void
.end method


# virtual methods
.method protected blacklist createCameraSessionCommon()V
    .registers 10

    .line 305
    const-string v0, "IFAASecureCamera2API"

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    .line 306
    new-instance v1, Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->width_:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->height_:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->format_:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->numOfBuffers_:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;-><init>(IIIII)V

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCameraSessionCommon - numOfBuffers_ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->numOfBuffers_:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->ifaafacemgrimpl_:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    iget v3, v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->frameCallbackReturnParamsSize_:I

    invoke-virtual {v1, v2, v3}, Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;->enableFrameCallback(Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;I)Z

    .line 324
    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    invoke-virtual {v1}, Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;->getCaptureSurface()Landroid/view/Surface;

    move-result-object v1

    .line 325
    .local v1, "surface":Landroid/view/Surface;
    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iput-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureBuilder_:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 327
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v2, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x0

    const v6, 0x80f6

    new-instance v7, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;

    invoke-direct {v7, p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;-><init>(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)V

    const/4 v8, 0x0

    move-object v5, v2

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/camera2/CameraDevice;->createCustomCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_7b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_7b} :catch_7c

    .line 439
    .end local v1    # "surface":Landroid/view/Surface;
    .end local v2    # "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    goto :goto_93

    .line 437
    :catch_7c
    move-exception v1

    .line 438
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureCamera2API::createCameraSession ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_93
    return-void
.end method

.method protected blacklist getActivityArray()Landroid/graphics/Rect;
    .registers 9

    .line 180
    const-string v0, "IFAASecureCamera2API"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mContext:Landroid/content/Context;

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 181
    .local v2, "manager":Landroid/hardware/camera2/CameraManager;
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 182
    .local v3, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 183
    .local v4, "activeArray":Landroid/graphics/Rect;
    if-eqz v4, :cond_27

    move-object v5, v4

    goto :goto_2d

    :cond_27
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 185
    .local v5, "activeArraySize":Landroid/graphics/Rect;
    :goto_2d
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-nez v6, :cond_3a

    goto :goto_3b

    .line 189
    :cond_3a
    return-object v5

    .line 186
    :cond_3b
    :goto_3b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Face AE: error active array size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_63} :catch_64

    .line 187
    return-object v1

    .line 191
    .end local v2    # "manager":Landroid/hardware/camera2/CameraManager;
    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "activeArray":Landroid/graphics/Rect;
    .end local v5    # "activeArraySize":Landroid/graphics/Rect;
    :catch_64
    move-exception v2

    .line 192
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActivityArray - Camera - ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    return-object v1
.end method

.method protected blacklist getBackgroundHandler()Landroid/os/Handler;
    .registers 2

    .line 155
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundHandler_:Landroid/os/Handler;

    return-object v0
.end method

.method public blacklist getCameraRotation(I)I
    .registers 6
    .param p1, "cameraId"    # I

    .line 270
    const/4 v0, 0x0

    .line 273
    .local v0, "rotation":I
    :try_start_1
    sget-object v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 274
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 275
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 277
    .local v2, "orientation":I
    rem-int/lit16 v3, v2, 0x168
    :try_end_21
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_21} :catch_2f

    .line 278
    .local v3, "defaultRotation":I
    sparse-switch v3, :sswitch_data_4a

    .line 292
    const/4 v0, 0x0

    goto :goto_2e

    .line 289
    :sswitch_26
    const/4 v0, 0x5

    .line 290
    goto :goto_2e

    .line 286
    :sswitch_28
    const/4 v0, 0x2

    .line 287
    goto :goto_2e

    .line 283
    :sswitch_2a
    const/4 v0, 0x6

    .line 284
    goto :goto_2e

    .line 280
    :sswitch_2c
    const/4 v0, 0x1

    .line 281
    nop

    .line 297
    .end local v1    # "manager":Landroid/hardware/camera2/CameraManager;
    .end local v2    # "orientation":I
    .end local v3    # "defaultRotation":I
    :goto_2e
    goto :goto_48

    .line 295
    :catch_2f
    move-exception v1

    .line 296
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureCamera2API::getCameraRotation - ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IFAASecureCamera2API"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_48
    return v0

    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_2c
        0x5a -> :sswitch_2a
        0xb4 -> :sswitch_28
        0x10e -> :sswitch_26
    .end sparse-switch
.end method

.method protected blacklist isSupportAERegion()Ljava/lang/Boolean;
    .registers 7

    .line 160
    const-string v0, "IFAASecureCamera2API"

    :try_start_2
    sget-object v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 161
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 162
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 164
    .local v3, "regionCount":Ljava/lang/Integer;
    if-eqz v3, :cond_29

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2a

    :cond_29
    const/4 v4, 0x0

    .line 165
    .local v4, "maxRegions":I
    :goto_2a
    if-gtz v4, :cond_32

    .line 166
    const-string v5, "Face AE: don\'t have AE region capability."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v1    # "manager":Landroid/hardware/camera2/CameraManager;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v3    # "regionCount":Ljava/lang/Integer;
    .end local v4    # "maxRegions":I
    goto :goto_4c

    .line 169
    .restart local v1    # "manager":Landroid/hardware/camera2/CameraManager;
    .restart local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v3    # "regionCount":Ljava/lang/Integer;
    .restart local v4    # "maxRegions":I
    :cond_32
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_34
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_34} :catch_35

    return-object v0

    .line 171
    .end local v1    # "manager":Landroid/hardware/camera2/CameraManager;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v3    # "regionCount":Ljava/lang/Integer;
    .end local v4    # "maxRegions":I
    :catch_35
    move-exception v1

    .line 172
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportAERegion - Camera - ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_4c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist rectFromTEECallback(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 23
    .param p1, "topLeft"    # Landroid/graphics/Point;
    .param p2, "rightBottom"    # Landroid/graphics/Point;

    .line 200
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_18e

    invoke-virtual/range {p0 .. p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->isSupportAERegion()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v4, :cond_18e

    iget v0, v2, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_24

    iget v0, v2, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_24

    iget v0, v3, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_24

    iget v0, v3, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_24

    goto/16 :goto_18e

    .line 204
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->getActivityArray()Landroid/graphics/Rect;

    move-result-object v4

    .line 205
    .local v4, "activeArray":Landroid/graphics/Rect;
    if-nez v4, :cond_2b

    .line 206
    return-void

    .line 208
    :cond_2b
    const/4 v0, 0x0

    .line 209
    .local v0, "width":I
    const/4 v5, 0x0

    .line 212
    .local v5, "height":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Face AE: getting rect topLeft:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", rightBottom:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "IFAASecureCamera2API"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Face AE: arraySize:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit16 v6, v6, 0x280

    int-to-float v6, v6

    .line 217
    .local v6, "scaleRatioX":F
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit16 v9, v9, 0x1e0

    int-to-float v9, v9

    .line 218
    .local v9, "scaleRatioY":F
    iget v10, v3, Landroid/graphics/Point;->y:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v0, v10

    .line 219
    iget v10, v3, Landroid/graphics/Point;->x:I

    iget v11, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v5, v10

    .line 222
    iget v10, v2, Landroid/graphics/Point;->x:I

    iput v10, v2, Landroid/graphics/Point;->y:I

    .line 223
    iget v10, v3, Landroid/graphics/Point;->y:I

    rsub-int v10, v10, 0x280

    iput v10, v2, Landroid/graphics/Point;->x:I

    .line 226
    iget v10, v2, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v10, v10

    iput v10, v2, Landroid/graphics/Point;->x:I

    .line 227
    iget v10, v2, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v2, Landroid/graphics/Point;->y:I

    .line 229
    iget v10, v2, Landroid/graphics/Point;->x:I

    const/4 v11, 0x0

    if-gez v10, :cond_d6

    .line 231
    iput v11, v2, Landroid/graphics/Point;->x:I

    .line 234
    :cond_d6
    iget v10, v2, Landroid/graphics/Point;->y:I

    if-gez v10, :cond_dc

    .line 236
    iput v11, v2, Landroid/graphics/Point;->y:I

    .line 239
    :cond_dc
    iget v10, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v10, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-le v10, v12, :cond_f2

    .line 241
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget v12, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v12

    add-int/lit8 v0, v10, -0x1

    move v10, v0

    goto :goto_f3

    .line 239
    :cond_f2
    move v10, v0

    .line 244
    .end local v0    # "width":I
    .local v10, "width":I
    :goto_f3
    iget v0, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v12, v13

    if-le v0, v12, :cond_106

    .line 246
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v12, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v12

    add-int/lit8 v5, v0, -0x1

    .line 249
    :cond_106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Face AE: metering region topLeft="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v12, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v12, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " widthxheight="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-array v0, v13, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    iget v15, v2, Landroid/graphics/Point;->x:I

    iget v12, v2, Landroid/graphics/Point;->y:I

    const/16 v19, 0x1e

    move-object v14, v8

    move/from16 v16, v12

    move/from16 v17, v10

    move/from16 v18, v5

    invoke-direct/range {v14 .. v19}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v8, v0, v11

    move-object v8, v0

    .line 258
    .local v8, "faceRegion":[Landroid/hardware/camera2/params/MeteringRectangle;
    iget-object v0, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureBuilder_:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v11, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 261
    :try_start_158
    iget-object v0, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v11, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureBuilder_:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureCallback_:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual/range {p0 .. p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v13

    invoke-virtual {v0, v11, v12, v13}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_169
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_158 .. :try_end_169} :catch_16a

    .line 265
    goto :goto_18d

    .line 262
    :catch_16a
    move-exception v0

    .line 263
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecureCamera2API::CameraCaptureSession.StateCallback:onConfigured - Camera #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - setRepeatingRequest for face AE failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_18d
    return-void

    .line 202
    .end local v4    # "activeArray":Landroid/graphics/Rect;
    .end local v5    # "height":I
    .end local v6    # "scaleRatioX":F
    .end local v8    # "faceRegion":[Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v9    # "scaleRatioY":F
    .end local v10    # "width":I
    :cond_18e
    :goto_18e
    return-void
.end method

.method public blacklist start(ILandroid/view/SurfaceView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 16
    .param p1, "cameraId"    # I
    .param p2, "previewSurfaceView"    # Landroid/view/SurfaceView;
    .param p3, "width"    # Ljava/lang/Integer;
    .param p4, "height"    # Ljava/lang/Integer;
    .param p5, "format"    # Ljava/lang/Integer;
    .param p6, "numOfBuffers"    # Ljava/lang/Integer;
    .param p7, "previewSurfaceNumOfBuffers"    # Ljava/lang/Integer;

    .line 446
    iput-object p2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->previewSurfaceView_:Landroid/view/SurfaceView;

    .line 447
    iput-object p7, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->previewSurfaceNumOfBuffers_:Ljava/lang/Integer;

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::start - previewSurfaceView_ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->previewSurfaceView_:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->start(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist start(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 14
    .param p1, "cameraId"    # Ljava/lang/Integer;
    .param p2, "width"    # Ljava/lang/Integer;
    .param p3, "height"    # Ljava/lang/Integer;
    .param p4, "format"    # Ljava/lang/Integer;
    .param p5, "numOfBuffers"    # Ljava/lang/Integer;

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::start+++ - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 457
    .local v0, "result":Ljava/lang/Boolean;
    iput-object p1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    .line 458
    iput-object p2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->width_:Ljava/lang/Integer;

    .line 459
    iput-object p3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->height_:Ljava/lang/Integer;

    .line 460
    iput-object p4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->format_:Ljava/lang/Integer;

    .line 461
    iput-object p5, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->numOfBuffers_:Ljava/lang/Integer;

    .line 463
    invoke-virtual {p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->startBackgroundThread()V

    .line 466
    :try_start_29
    sget-object v2, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mContext:Landroid/content/Context;

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_33} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_33} :catch_b7

    .line 468
    .local v2, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_33
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x9c4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 469
    const-string v3, "SecureCamera2API::start ERROR: Camera Lock TimeOut"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 472
    :cond_45
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 473
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 474
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_72

    .line 475
    const-string v3, "SecureCamera2API::start - ERROR: Camera Open TimeOut"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 478
    :cond_72
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    if-nez v3, :cond_7c

    .line 479
    const-string v3, "SecureCamera2API::start FAILED"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 482
    :cond_7c
    const-string v3, "SecureCamera2API::start OK"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v3

    const/16 v5, 0x7d3

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->dispatchVendorCommand(ILandroid/os/Bundle;)V

    .line 484
    iput-boolean v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStarted_:Z

    .line 485
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_8f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_33 .. :try_end_8f} :catch_a4
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_8f} :catch_98
    .catchall {:try_start_33 .. :try_end_8f} :catchall_96

    move-object v0, v3

    .line 499
    :goto_90
    :try_start_90
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_95
    .catch Ljava/lang/RuntimeException; {:try_start_90 .. :try_end_95} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_95} :catch_b7

    .line 500
    goto :goto_e6

    .line 499
    :catchall_96
    move-exception v3

    goto :goto_b0

    .line 494
    :catch_98
    move-exception v3

    .line 495
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_99
    const-string v4, "SecureCamera2API::start ERROR: Interrupted while trying to lock camera for opening - "

    invoke-static {v1, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    .end local v0    # "result":Ljava/lang/Boolean;
    .end local v2    # "manager":Landroid/hardware/camera2/CameraManager;
    .end local p0    # "this":Lorg/ifaa/android/manager/face/IFAASecureCamera2API;
    .end local p1    # "cameraId":Ljava/lang/Integer;
    .end local p2    # "width":Ljava/lang/Integer;
    .end local p3    # "height":Ljava/lang/Integer;
    .end local p4    # "format":Ljava/lang/Integer;
    .end local p5    # "numOfBuffers":Ljava/lang/Integer;
    throw v4

    .line 490
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "result":Ljava/lang/Boolean;
    .restart local v2    # "manager":Landroid/hardware/camera2/CameraManager;
    .restart local p0    # "this":Lorg/ifaa/android/manager/face/IFAASecureCamera2API;
    .restart local p1    # "cameraId":Ljava/lang/Integer;
    .restart local p2    # "width":Ljava/lang/Integer;
    .restart local p3    # "height":Ljava/lang/Integer;
    .restart local p4    # "format":Ljava/lang/Integer;
    .restart local p5    # "numOfBuffers":Ljava/lang/Integer;
    :catch_a4
    move-exception v3

    .line 491
    .local v3, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v4, "SecureCamera2API::start ERROR: Not accesible"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    .end local v0    # "result":Ljava/lang/Boolean;
    .end local v2    # "manager":Landroid/hardware/camera2/CameraManager;
    .end local p0    # "this":Lorg/ifaa/android/manager/face/IFAASecureCamera2API;
    .end local p1    # "cameraId":Ljava/lang/Integer;
    .end local p2    # "width":Ljava/lang/Integer;
    .end local p3    # "height":Ljava/lang/Integer;
    .end local p4    # "format":Ljava/lang/Integer;
    .end local p5    # "numOfBuffers":Ljava/lang/Integer;
    throw v4
    :try_end_b0
    .catchall {:try_start_99 .. :try_end_b0} :catchall_96

    .line 499
    .end local v3    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v0    # "result":Ljava/lang/Boolean;
    .restart local v2    # "manager":Landroid/hardware/camera2/CameraManager;
    .restart local p0    # "this":Lorg/ifaa/android/manager/face/IFAASecureCamera2API;
    .restart local p1    # "cameraId":Ljava/lang/Integer;
    .restart local p2    # "width":Ljava/lang/Integer;
    .restart local p3    # "height":Ljava/lang/Integer;
    .restart local p4    # "format":Ljava/lang/Integer;
    .restart local p5    # "numOfBuffers":Ljava/lang/Integer;
    :goto_b0
    :try_start_b0
    iget-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 500
    nop

    .end local v0    # "result":Ljava/lang/Boolean;
    .end local p0    # "this":Lorg/ifaa/android/manager/face/IFAASecureCamera2API;
    .end local p1    # "cameraId":Ljava/lang/Integer;
    .end local p2    # "width":Ljava/lang/Integer;
    .end local p3    # "height":Ljava/lang/Integer;
    .end local p4    # "format":Ljava/lang/Integer;
    .end local p5    # "numOfBuffers":Ljava/lang/Integer;
    throw v3
    :try_end_b7
    .catch Ljava/lang/RuntimeException; {:try_start_b0 .. :try_end_b7} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b7} :catch_b7

    .line 505
    .end local v2    # "manager":Landroid/hardware/camera2/CameraManager;
    .restart local v0    # "result":Ljava/lang/Boolean;
    .restart local p0    # "this":Lorg/ifaa/android/manager/face/IFAASecureCamera2API;
    .restart local p1    # "cameraId":Ljava/lang/Integer;
    .restart local p2    # "width":Ljava/lang/Integer;
    .restart local p3    # "height":Ljava/lang/Integer;
    .restart local p4    # "format":Ljava/lang/Integer;
    .restart local p5    # "numOfBuffers":Ljava/lang/Integer;
    :catch_b7
    move-exception v2

    .line 506
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecureCamera2API::start Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    .line 502
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_cf
    move-exception v2

    .line 503
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecureCamera2API::start ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_e6
    nop

    .line 508
    :goto_e7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureCamera2API::start--- - Camera #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Done"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-object v0
.end method

.method protected blacklist startBackgroundThread()V
    .registers 3

    .line 136
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundThread_:Landroid/os/HandlerThread;

    .line 137
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 138
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundThread_:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundHandler_:Landroid/os/Handler;

    .line 139
    return-void
.end method

.method public blacklist stop()Ljava/lang/Boolean;
    .registers 10

    .line 514
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 515
    .local v0, "result":Ljava/lang/Boolean;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecureCamera2API::stop+++ - Camera #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IFAASecureCamera2API"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v1

    const/16 v3, 0x7d4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->dispatchVendorCommand(ILandroid/os/Bundle;)V

    .line 520
    const/4 v1, 0x0

    :try_start_27
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

    const-wide/16 v5, 0x9c4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 521
    const-string v3, "stop Camera - ERROR: Camera Lock TimeOut"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_38
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    const-wide/16 v5, 0x7d0

    const/4 v7, 0x1

    if-eqz v3, :cond_7a

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SecureCamera2APIPreview::stop - Camera #"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ": Close Capture Session"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSessionClosedLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 527
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 528
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSessionClosedLatch_:Ljava/util/concurrent/CountDownLatch;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_78

    .line 529
    const-string v3, "stop Camera - ERROR: Close Capture Session TimeOut"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_78
    iput-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    .line 533
    :cond_7a
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    if-eqz v3, :cond_a0

    .line 534
    const-string v3, "SecureCamera2API::stop - Camera : Close Camera"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStopedLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 536
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 537
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStopedLatch_:Ljava/util/concurrent/CountDownLatch;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 538
    const-string v3, "SecureCamera2API::stop - Camera - ERROR: Close Camera TimeOut"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_9e
    iput-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    .line 542
    :cond_a0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_a2
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_a2} :catch_a6
    .catchall {:try_start_27 .. :try_end_a2} :catchall_a4

    move-object v0, v3

    .line 546
    goto :goto_ad

    :catchall_a4
    move-exception v2

    goto :goto_e7

    .line 543
    :catch_a6
    move-exception v3

    .line 544
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_a7
    const-string v5, "SecureCamera2API::stop - ERROR: Interrupted while trying to lock camera closing."

    invoke-static {v2, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_a4

    .line 546
    nop

    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_ad
    iput-boolean v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStarted_:Z

    .line 547
    invoke-virtual {p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->stopBackgroundThread()V

    .line 548
    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 549
    nop

    .line 551
    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    if-eqz v1, :cond_c8

    .line 552
    const-string v1, "SecureCamera2API::stop - Camera Release Secure Camera Surface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    invoke-virtual {v1}, Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;->release()Z

    .line 554
    iput-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    .line 556
    :cond_c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureCamera2API::stop--- - Camera #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": Done"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-object v0

    .line 546
    :goto_e7
    iput-boolean v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStarted_:Z

    .line 547
    invoke-virtual {p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->stopBackgroundThread()V

    .line 548
    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 549
    throw v2
.end method

.method protected blacklist stopBackgroundThread()V
    .registers 4

    .line 142
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundThread_:Landroid/os/HandlerThread;

    if-eqz v0, :cond_18

    .line 143
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 145
    :try_start_7
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundThread_:Landroid/os/HandlerThread;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundThread_:Landroid/os/HandlerThread;

    .line 147
    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundHandler_:Landroid/os/Handler;
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_13} :catch_14

    .line 150
    goto :goto_18

    .line 148
    :catch_14
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 152
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_18
    :goto_18
    return-void
.end method
