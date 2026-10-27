.class public Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;
.super Lcom/xiaomi/camera/imagecodec/BaseReprocessor;
.source "VirtualCameraReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$ReprocessHandler;
    }
.end annotation


# static fields
.field private static blacklist BACK_VT_CAMERA_ID_DEFAULT:Ljava/lang/String; = null

.field private static blacklist FRONT_VT_CAMERA_ID_DEFAULT:Ljava/lang/String; = null

.field private static final blacklist MAX_IMAGE_BUFFER_SIZE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton<",
            "Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBackVtCameraId:Ljava/lang/String;

.field private final blacklist mCameraLock:Ljava/lang/Object;

.field private blacklist mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private blacklist mCameraOperationHandler:Landroid/os/Handler;

.field private blacklist mCameraOperationThread:Landroid/os/HandlerThread;

.field private volatile blacklist mCreatingReprocessSession:Z

.field private blacklist mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

.field private blacklist mCurrentSessionId:I

.field private final blacklist mDataLock:Ljava/lang/Object;

.field private blacklist mFrontVtCameraId:Ljava/lang/String;

.field private blacklist mInitialized:Z

.field private blacklist mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

.field private blacklist mNeedReopenCamera:Z

.field private blacklist mPicImageReader:Landroid/media/ImageReader;

.field private blacklist mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

.field private blacklist mReprocessHandler:Landroid/os/Handler;

.field private blacklist mReprocessImageWriter:Landroid/media/ImageWriter;

.field private blacklist mReprocessStartTime:J

.field private blacklist mReprocessThread:Landroid/os/HandlerThread;

.field private blacklist mSessionFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTaskDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaomi/camera/imagecodec/ReprocessData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private blacklist mVTCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private blacklist mYuvImageReader:Landroid/media/ImageReader;

.field private blacklist mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCameraLock(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentSessionId(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)I
    .registers 1

    iget p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataLock(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeedReopenCamera(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mNeedReopenCamera:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReprocessImageWriter(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/media/ImageWriter;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessImageWriter:Landroid/media/ImageWriter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReprocessStartTime(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTaskDataList(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/util/LinkedList;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVTCameraDevice(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/hardware/camera2/CameraDevice;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCreatingReprocessSession(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCreatingReprocessSession:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentSessionId(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;I)V
    .registers 2

    iput p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentSessionId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNeedReopenCamera(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mNeedReopenCamera:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReprocessImageWriter(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/media/ImageWriter;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessImageWriter:Landroid/media/ImageWriter;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVTCameraDevice(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVTCaptureSession(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckConditionIsReady(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->checkConditionIsReady()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleVTException(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;ILandroid/hardware/camera2/CameraDevice;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->handleVTException(ILandroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseWakeLock(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->releaseWakeLock()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreprocessImage(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->reprocessImage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendReprocessRequest(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->sendReprocessRequest()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSessionId(Landroid/hardware/camera2/CameraCaptureSession;)I
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->getSessionId(Landroid/hardware/camera2/CameraCaptureSession;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    const-class v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    .line 73
    const-string v0, "100"

    sput-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->BACK_VT_CAMERA_ID_DEFAULT:Ljava/lang/String;

    .line 74
    const-string v0, "101"

    sput-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->FRONT_VT_CAMERA_ID_DEFAULT:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 4

    .line 122
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;-><init>()V

    .line 77
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->BACK_VT_CAMERA_ID_DEFAULT:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mBackVtCameraId:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->FRONT_VT_CAMERA_ID_DEFAULT:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mFrontVtCameraId:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentSessionId:I

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    .line 123
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-direct {v0, v1, v1, v2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 124
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;-><init>()V

    return-void
.end method

.method private blacklist acquireWakeLock()V
    .registers 3

    .line 871
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_14

    .line 872
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 875
    :cond_14
    return-void
.end method

.method private blacklist checkConditionIsReady()Z
    .registers 6

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "reprocessData":Lcom/xiaomi/camera/imagecodec/ReprocessData;
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_4
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    .line 405
    sget-object v2, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v4, "checkConditionIsReady: processor is busy!"

    invoke-static {v2, v4}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    monitor-exit v1

    return v3

    .line 408
    :cond_12
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-object v0, v2

    .line 410
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_2d

    .line 411
    if-nez v0, :cond_26

    .line 412
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "checkConditionIsReady: ignore null request!"

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return v3

    .line 416
    :cond_26
    invoke-direct {p0, v0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->createCaptureSessionIfNeed(Lcom/xiaomi/camera/imagecodec/ReprocessData;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 410
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method private blacklist createCaptureSessionIfNeed(Lcom/xiaomi/camera/imagecodec/ReprocessData;)Z
    .registers 19
    .param p1, "reprocessData"    # Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 329
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 330
    :try_start_5
    iget-boolean v0, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCreatingReprocessSession:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_13

    .line 331
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v4, "creating reprocess session..."

    invoke-static {v0, v4}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    monitor-exit v2

    return v3

    .line 335
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    .line 336
    .local v0, "yuvImage":Landroid/media/Image;
    new-instance v5, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v6

    .line 337
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 338
    .local v5, "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    new-instance v6, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 339
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputWidth()I

    move-result v7

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputHeight()I

    move-result v8

    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    .line 342
    .local v6, "outputConfig":Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isFrontCamera()Z

    move-result v7

    if-eqz v7, :cond_49

    .line 343
    iget-object v7, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mFrontVtCameraId:Ljava/lang/String;

    goto :goto_4b

    :cond_49
    iget-object v7, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mBackVtCameraId:Ljava/lang/String;

    .line 346
    .local v7, "expectedDeviceId":Ljava/lang/String;
    :goto_4b
    iget-object v8, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v8, :cond_5c

    .line 347
    invoke-virtual {v8}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5a

    goto :goto_5c

    :cond_5a
    move v8, v4

    goto :goto_5d

    :cond_5c
    :goto_5c
    move v8, v3

    .line 348
    .local v8, "needOpenCamera":Z
    :goto_5d
    if-eqz v8, :cond_a7

    .line 349
    iput-boolean v3, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCreatingReprocessSession:Z

    .line 350
    iget-object v4, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v4, :cond_69

    .line 351
    invoke-direct {v1, v7}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->openVTCamera(Ljava/lang/String;)V

    goto :goto_a5

    .line 352
    :cond_69
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a5

    .line 353
    sget-object v4, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCaptureSessionIfNeed: expected device changed. oldId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 354
    invoke-virtual {v10}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " newId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 353
    invoke-static {v4, v9}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v4, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 357
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 358
    iput-boolean v3, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mNeedReopenCamera:Z

    .line 360
    :cond_a5
    :goto_a5
    monitor-exit v2

    return v3

    .line 365
    :cond_a7
    const/4 v9, 0x0

    .line 366
    .local v9, "needCreateSession":Z
    invoke-virtual {v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getFormat()I

    move-result v10

    .line 367
    .local v10, "outputFormat":I
    const/16 v11, 0x23

    if-eq v10, v11, :cond_b3

    iget-object v12, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    goto :goto_b5

    :cond_b3
    iget-object v12, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 369
    .local v12, "currentOutput":Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    :goto_b5
    iget-object v13, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v13, :cond_bc

    .line 370
    const/4 v9, 0x1

    goto/16 :goto_15b

    .line 371
    :cond_bc
    iget-object v13, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v5, v13}, Landroid/hardware/camera2/params/InputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ca

    invoke-virtual {v6, v12}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_15b

    .line 372
    :cond_ca
    sget-object v13, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v15, "recreate session. in: %dx%d->%dx%d %s out: %dx%d->%dx%d"

    const/16 v14, 0x9

    new-array v14, v14, [Ljava/lang/Object;

    .line 373
    iget-object v11, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    if-nez v11, :cond_d8

    move v11, v4

    goto :goto_dc

    :cond_d8
    invoke-virtual {v11}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v11

    :goto_dc
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v14, v4

    .line 374
    iget-object v11, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    if-nez v11, :cond_e8

    move v11, v4

    goto :goto_ec

    :cond_e8
    invoke-virtual {v11}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v11

    :goto_ec
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v14, v3

    const/4 v11, 0x2

    .line 375
    invoke-virtual {v5}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v11

    const/4 v11, 0x3

    invoke-virtual {v5}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v11

    const/4 v11, 0x4

    .line 376
    const/16 v4, 0x23

    if-ne v10, v4, :cond_110

    const-string v4, "yuv"

    goto :goto_119

    :cond_110
    const/16 v4, 0x100

    if-ne v10, v4, :cond_117

    const-string v4, "jpeg"

    goto :goto_119

    :cond_117
    const-string v4, "heic"

    :goto_119
    aput-object v4, v14, v11

    const/4 v4, 0x5

    .line 377
    if-nez v12, :cond_120

    const/4 v11, 0x0

    goto :goto_124

    :cond_120
    invoke-virtual {v12}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v11

    :goto_124
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v14, v4

    const/4 v4, 0x6

    .line 378
    if-nez v12, :cond_130

    const/16 v16, 0x0

    goto :goto_136

    :cond_130
    invoke-virtual {v12}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v11

    move/from16 v16, v11

    :goto_136
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v14, v4

    const/4 v4, 0x7

    .line 379
    invoke-virtual {v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v14, v4

    const/16 v4, 0x8

    invoke-virtual {v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v14, v4

    .line 372
    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v9, 0x1

    .line 383
    :cond_15b
    :goto_15b
    if-eqz v9, :cond_198

    .line 384
    iput-boolean v3, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCreatingReprocessSession:Z

    .line 385
    iput-object v5, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    .line 386
    const/16 v3, 0x23

    if-eq v10, v3, :cond_179

    .line 387
    iput-object v6, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 388
    new-instance v3, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v4

    invoke-virtual {v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v11

    const/16 v13, 0x23

    invoke-direct {v3, v4, v11, v13}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    iput-object v3, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    goto :goto_18c

    .line 390
    :cond_179
    iput-object v6, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 391
    new-instance v3, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v4

    invoke-virtual {v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v11

    const/16 v13, 0x100

    invoke-direct {v3, v4, v11, v13}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    iput-object v3, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 393
    :goto_18c
    iget-object v3, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v4, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    iget-object v11, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    :try_end_192
    .catchall {:try_start_5 .. :try_end_192} :catchall_19c

    move-object/from16 v13, p1

    :try_start_194
    invoke-direct {v1, v3, v4, v11, v13}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->createReprocessSession(Landroid/hardware/camera2/params/InputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    goto :goto_19a

    .line 383
    :cond_198
    move-object/from16 v13, p1

    .line 396
    :goto_19a
    monitor-exit v2

    return v9

    .line 397
    .end local v0    # "yuvImage":Landroid/media/Image;
    .end local v5    # "inputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v6    # "outputConfig":Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .end local v7    # "expectedDeviceId":Ljava/lang/String;
    .end local v8    # "needOpenCamera":Z
    .end local v9    # "needCreateSession":Z
    .end local v10    # "outputFormat":I
    .end local v12    # "currentOutput":Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    :catchall_19c
    move-exception v0

    move-object/from16 v13, p1

    :goto_19f
    monitor-exit v2
    :try_end_1a0
    .catchall {:try_start_194 .. :try_end_1a0} :catchall_1a1

    throw v0

    :catchall_1a1
    move-exception v0

    goto :goto_19f
.end method

.method public static blacklist createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 9
    .param p0, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p1, "inputConfiguration"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;
    .param p4, "stateCallback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 627
    .local p2, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 630
    if-nez p5, :cond_6

    const/4 v1, 0x0

    goto :goto_b

    :cond_6
    new-instance v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$4;

    invoke-direct {v1, p5}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$4;-><init>(Landroid/os/Handler;)V

    :goto_b
    const/4 v2, 0x0

    invoke-direct {v0, v2, p2, v1, p4}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 638
    .local v0, "sessionConfiguration":Landroid/hardware/camera2/params/SessionConfiguration;
    if-eqz p1, :cond_14

    .line 640
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/SessionConfiguration;->setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    .line 642
    :cond_14
    invoke-virtual {v0, p3}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 643
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    .line 644
    return-void
.end method

.method private blacklist createReprocessSession(Landroid/hardware/camera2/params/InputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .registers 20
    .param p1, "input"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p2, "yuvOutput"    # Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .param p3, "picOutput"    # Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .param p4, "reprocessData"    # Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 651
    move-object v1, p0

    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 652
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 653
    invoke-virtual/range {p3 .. p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual/range {p3 .. p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual/range {p3 .. p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getFormat()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v3, v8

    .line 651
    const-string v4, "createReprocessSession>>input[%dx%d] output[%dx%d@%d]"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->initYuvImageReader(II)V

    .line 656
    invoke-virtual/range {p3 .. p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getFormat()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->initPicImageReader(III)V

    .line 660
    :try_start_62
    invoke-virtual/range {p2 .. p2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v0

    if-lez v0, :cond_83

    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_83

    .line 661
    new-array v0, v7, [Landroid/view/Surface;

    iget-object v2, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .local v0, "outputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    goto :goto_91

    .line 663
    .end local v0    # "outputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :cond_83
    new-array v0, v6, [Landroid/view/Surface;

    iget-object v2, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 666
    .restart local v0    # "outputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :goto_91
    new-instance v2, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v6

    invoke-direct {v2, v3, v4, v6}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 667
    .local v2, "inputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    new-instance v3, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;

    invoke-direct {v3, p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;-><init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    .line 712
    .local v3, "sessionStateCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v4, v6, :cond_126

    .line 713
    new-instance v4, Ljava/util/ArrayList;

    .line 714
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 715
    .local v4, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_ba
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    .line 716
    .local v8, "surface":Landroid/view/Surface;
    new-instance v9, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v9, v8}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 718
    .local v9, "outputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    nop

    .end local v8    # "surface":Landroid/view/Surface;
    .end local v9    # "outputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_ba

    .line 720
    :cond_d0
    invoke-virtual/range {p4 .. p4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v6

    .line 721
    .local v6, "result":Lcom/xiaomi/protocol/ICustomCaptureResult;
    invoke-static {v6, v5}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v5

    .line 723
    .local v5, "captureResult":Landroid/hardware/camera2/TotalCaptureResult;
    if-nez v5, :cond_ec

    .line 724
    sget-object v8, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v9, "create CaptureRequest from template"

    invoke-static {v8, v9}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v8, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v8, v7}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    .local v7, "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_fd

    .line 727
    .end local v7    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :cond_ec
    sget-object v7, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v8, "create CaptureRequest from captureResult"

    invoke-static {v7, v8}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v7, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v7, v5}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    .line 730
    .restart local v7    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :goto_fd
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Range;

    move-object v14, v8

    .line 731
    .local v14, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v14, :cond_11a

    .line 732
    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-static {v8, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v8

    iput-object v8, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mSessionFpsRange:Landroid/util/Range;

    .line 734
    :cond_11a
    iget-object v8, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v13, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationHandler:Landroid/os/Handler;

    move-object v9, v2

    move-object v10, v4

    move-object v11, v7

    move-object v12, v3

    invoke-static/range {v8 .. v13}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 741
    .end local v4    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v5    # "captureResult":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v6    # "result":Lcom/xiaomi/protocol/ICustomCaptureResult;
    .end local v7    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    .end local v14    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto :goto_12d

    .line 742
    :cond_126
    iget-object v4, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v5, v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v0, v3, v5}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_12d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_62 .. :try_end_12d} :catch_12e

    .line 750
    .end local v0    # "outputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v2    # "inputConfiguration":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v3    # "sessionStateCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    :goto_12d
    goto :goto_132

    .line 748
    :catch_12e
    move-exception v0

    .line 749
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 751
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_132
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "createReprocessSession<<"

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return-void
.end method

.method private static blacklist getJpegData(Landroid/media/Image;)[B
    .registers 4
    .param p0, "image"    # Landroid/media/Image;

    .line 859
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 860
    .local v0, "planes":[Landroid/media/Image$Plane;
    array-length v1, v0

    if-lez v1, :cond_18

    .line 861
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 862
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 863
    .local v2, "data":[B
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 864
    return-object v2

    .line 866
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "data":[B
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getSessionId(Landroid/hardware/camera2/CameraCaptureSession;)I
    .registers 4
    .param p0, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 845
    if-eqz p0, :cond_1f

    .line 847
    :try_start_2
    const-string v0, "android.hardware.camera2.impl.CameraCaptureSessionImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 848
    .local v0, "clazz":Ljava/lang/Class;
    const-string v1, "mId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 849
    .local v1, "idFiled":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 850
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_16} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_16} :catch_17
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_16} :catch_17

    return v2

    .line 851
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "idFiled":Ljava/lang/reflect/Field;
    :catch_17
    move-exception v0

    .line 852
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "getSessionId: failed!"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist handleVTException(ILandroid/hardware/camera2/CameraDevice;)V
    .registers 11
    .param p1, "errorCode"    # I
    .param p2, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 595
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    move v1, v2

    .line 597
    .local v1, "deviceClosed":Z
    :goto_b
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 598
    iput-boolean v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCreatingReprocessSession:Z

    .line 599
    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    .line 600
    sget-object v3, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleVTException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 603
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_8a

    .line 605
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v3

    .line 606
    :try_start_33
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    if-eqz v0, :cond_85

    if-eqz v1, :cond_85

    .line 607
    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    .line 610
    .local v0, "result":Lcom/xiaomi/protocol/ICustomCaptureResult;
    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v6}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    sget-object v4, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleVTException: clear task with timestamp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v6

    goto :goto_75

    :cond_73
    const-wide/16 v6, 0x0

    :goto_75
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 613
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->sendReprocessRequest()V

    .line 615
    .end local v0    # "result":Lcom/xiaomi/protocol/ICustomCaptureResult;
    :cond_85
    monitor-exit v3

    .line 616
    return-void

    .line 615
    :catchall_87
    move-exception v0

    monitor-exit v3
    :try_end_89
    .catchall {:try_start_33 .. :try_end_89} :catchall_87

    throw v0

    .line 603
    .end local v1    # "deviceClosed":Z
    :catchall_8a
    move-exception v1

    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v1
.end method

.method private blacklist initPicImageReader(III)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 756
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPicImageReader>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_63

    .line 758
    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_46

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    .line 759
    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_46

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    .line 760
    invoke-virtual {v1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v1

    if-eq v1, p3, :cond_63

    .line 761
    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing obsolete reprocess reader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 764
    :cond_63
    const/4 v1, 0x2

    invoke-static {p1, p2, p3, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    .line 765
    sget-object v2, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->JPEG:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->setImageReaderNameDepends(Landroid/media/ImageReader;Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;Z)V

    .line 766
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    new-instance v2, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$6;

    invoke-direct {v2, p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$6;-><init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 790
    const-string v1, "initPicImageReader<<"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void
.end method

.method private blacklist initYuvImageReader(II)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 795
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initYuvImageReader>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_54

    .line 797
    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_34

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    .line 798
    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_54

    .line 799
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing obsolete yuv reader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 801
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    .line 804
    :cond_54
    if-lez p1, :cond_7a

    if-gtz p2, :cond_59

    goto :goto_7a

    .line 808
    :cond_59
    const/16 v1, 0x23

    const/4 v2, 0x2

    invoke-static {p1, p2, v1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    .line 809
    sget-object v2, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->YUV:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->setImageReaderNameDepends(Landroid/media/ImageReader;Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;Z)V

    .line 810
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    new-instance v2, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$7;

    invoke-direct {v2, p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$7;-><init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 841
    const-string v1, "initYuvImageReader<<"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-void

    .line 805
    :cond_7a
    :goto_7a
    return-void
.end method

.method private blacklist openVTCamera(Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 538
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openVTCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :try_start_18
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    new-instance v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;-><init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_24
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_18 .. :try_end_24} :catch_25

    .line 589
    goto :goto_2d

    .line 587
    :catch_25
    move-exception v0

    .line 588
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "openVTCamera: open camera failed! No permission Exception."

    invoke-static {v1, v2, v0}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_2d
    return-void
.end method

.method private blacklist releaseWakeLock()V
    .registers 3

    .line 878
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 879
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 882
    :cond_14
    return-void
.end method

.method private blacklist reprocessImage()V
    .registers 16

    .line 421
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage>>"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_a
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 431
    if-nez v2, :cond_1d

    .line 432
    const-string v2, "mCurrentProcessingData is null!"

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    monitor-exit v1

    return-void

    .line 435
    :cond_1d
    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v2

    .line 436
    .local v2, "result":Lcom/xiaomi/protocol/ICustomCaptureResult;
    iget v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentSessionId:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;IZ)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    .line 437
    .local v3, "captureResult":Landroid/hardware/camera2/TotalCaptureResult;
    if-nez v3, :cond_31

    .line 438
    const-string v4, "reprocessImage<<null metadata!"

    invoke-static {v0, v4}, Lcom/xiaomi/engine/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    monitor-exit v1

    return-void

    .line 441
    :cond_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reprocessImage: tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getJpegQuality()I

    move-result v4

    int-to-byte v4, v4

    .line 443
    .local v4, "jpegQuality":B
    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v5

    .line 444
    .local v5, "imageFormat":I
    iget-object v6, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v6}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isRotateOrientationToZero()Z

    move-result v6

    .line 445
    .local v6, "rotateToZeroDegree":Z
    iget-object v7, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v7}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/Image;

    .line 446
    .local v7, "yuvImage":Landroid/media/Image;
    iget-object v9, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v9}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageName()Ljava/lang/String;

    move-result-object v9

    .line 447
    .local v9, "imageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v10}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getSiqeType()B

    move-result v10

    move v2, v10

    .line 448
    .local v2, "siqeType":B
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_a .. :try_end_7b} :catchall_196

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessStartTime:J

    .line 451
    iget-object v10, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraLock:Ljava/lang/Object;

    monitor-enter v10

    .line 453
    :try_start_84
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 454
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 455
    .local v1, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v11, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mSessionFpsRange:Landroid/util/Range;

    if-eqz v11, :cond_95

    .line 456
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v12, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mSessionFpsRange:Landroid/util/Range;

    invoke-virtual {v1, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 458
    :cond_95
    const/16 v11, 0x23

    if-eq v11, v5, :cond_139

    .line 459
    iget-object v11, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 460
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 464
    if-eqz v6, :cond_10a

    .line 465
    sget-object v11, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v11}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 466
    .local v11, "jpegOrientation":Ljava/lang/Integer;
    const v12, 0x48454946

    if-ne v12, v5, :cond_10a

    if-eqz v11, :cond_10a

    .line 467
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12
    :try_end_c0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_84 .. :try_end_c0} :catch_187
    .catchall {:try_start_84 .. :try_end_c0} :catchall_185

    if-eqz v12, :cond_10a

    .line 469
    :try_start_c2
    sget-object v12, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->XIAOMI_JPEG_ORIENTATION:Lcom/xiaomi/camera/imagecodec/VendorTag;

    invoke-virtual {v12}, Lcom/xiaomi/camera/imagecodec/VendorTag;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v12, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 470
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reprocessImage: jpegOrientation="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_e3} :catch_e4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_c2 .. :try_end_e3} :catch_187
    .catchall {:try_start_c2 .. :try_end_e3} :catchall_185

    .line 473
    goto :goto_101

    .line 471
    :catch_e4
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    :try_start_e5
    sget-object v12, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reprocessImage: failed to set XIAOMI_JPEG_ORIENTATION. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_101
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v0, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 477
    .end local v11    # "jpegOrientation":Ljava/lang/Integer;
    :cond_10a
    if-eqz v9, :cond_117

    .line 478
    sget-object v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->XIAOMI_IMAGE_NAME:Lcom/xiaomi/camera/imagecodec/VendorTag;

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/VendorTag;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v0, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 481
    :cond_117
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reprocessImage: XIAOMI_SIQE_TYPE = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    sget-object v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->XIAOMI_SIQE_TYPE:Lcom/xiaomi/camera/imagecodec/VendorTag;

    .line 483
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    .line 482
    invoke-static {v1, v0, v8}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->setValueSafely(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/xiaomi/camera/imagecodec/VendorTag;Ljava/lang/Object;)V

    goto :goto_142

    .line 485
    :cond_139
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 489
    :goto_142
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reprocessImage: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " | "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0, v7}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 491
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 492
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$2;-><init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    .line 527
    .local v0, "captureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    iget-object v8, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11, v0, v12}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_184
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_e5 .. :try_end_184} :catch_187
    .catchall {:try_start_e5 .. :try_end_184} :catchall_185

    .line 530
    .end local v0    # "captureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .end local v1    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    goto :goto_18b

    .line 531
    :catchall_185
    move-exception v0

    goto :goto_194

    .line 528
    :catch_187
    move-exception v0

    .line 529
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_188
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 531
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_18b
    monitor-exit v10
    :try_end_18c
    .catchall {:try_start_188 .. :try_end_18c} :catchall_185

    .line 532
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage<<"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void

    .line 531
    :goto_194
    :try_start_194
    monitor-exit v10
    :try_end_195
    .catchall {:try_start_194 .. :try_end_195} :catchall_185

    throw v0

    .line 448
    .end local v2    # "siqeType":B
    .end local v3    # "captureResult":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v4    # "jpegQuality":B
    .end local v5    # "imageFormat":I
    .end local v6    # "rotateToZeroDegree":Z
    .end local v7    # "yuvImage":Landroid/media/Image;
    .end local v9    # "imageName":Ljava/lang/String;
    :catchall_196
    move-exception v0

    :try_start_197
    monitor-exit v1
    :try_end_198
    .catchall {:try_start_197 .. :try_end_198} :catchall_196

    throw v0
.end method

.method private blacklist sendReprocessRequest()V
    .registers 7

    .line 288
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "============================================================="

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInitialized:Z

    if-nez v1, :cond_11

    .line 291
    const-string v1, "sendReprocessRequest: NOT initialized!"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 294
    :cond_11
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_14
    iget-boolean v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCreatingReprocessSession:Z

    if-eqz v2, :cond_1f

    .line 296
    const-string v2, "sendReprocessRequest: creating session..."

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    monitor-exit v1

    return-void

    .line 299
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_67

    .line 301
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 302
    :try_start_23
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_3a

    .line 303
    const-string v1, "sendReprocessRequest: idle. Try to close device 30s later."

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 305
    monitor-exit v2

    return-void

    .line 307
    :cond_3a
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 308
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 311
    :cond_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_23 .. :try_end_48} :catchall_64

    .line 313
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 314
    const-string v1, "sendReprocessRequest: busy"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 316
    :cond_57
    const-string v1, "sendReprocessRequest: send MSG_REPROCESS_IMG"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 319
    :goto_63
    return-void

    .line 311
    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0

    .line 299
    :catchall_67
    move-exception v0

    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v0
.end method


# virtual methods
.method public blacklist deInit()V
    .registers 4

    .line 153
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit>>"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_a
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInitialized:Z

    if-nez v1, :cond_10

    .line 156
    monitor-exit v0

    return-void

    .line 158
    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInitialized:Z

    .line 159
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 160
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 161
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_6a

    .line 163
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 165
    :try_start_1c
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2b

    .line 166
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 167
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 168
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    .line 169
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    .line 170
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessImageWriter:Landroid/media/ImageWriter;

    .line 173
    :cond_2b
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_34

    .line 174
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 175
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 177
    :cond_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_67

    .line 179
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4a

    .line 180
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 182
    :try_start_3c
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 183
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationThread:Landroid/os/HandlerThread;

    .line 184
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationHandler:Landroid/os/Handler;
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_45} :catch_46

    .line 187
    goto :goto_4a

    .line 185
    :catch_46
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 190
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5f

    .line 191
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 193
    :try_start_51
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 194
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessThread:Landroid/os/HandlerThread;

    .line 195
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessHandler:Landroid/os/Handler;
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_5a} :catch_5b

    .line 198
    goto :goto_5f

    .line 196
    :catch_5b
    move-exception v0

    .line 197
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 200
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_5f
    :goto_5f
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit<<"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 177
    :catchall_67
    move-exception v0

    :try_start_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v0

    .line 161
    :catchall_6a
    move-exception v1

    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method public blacklist init(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "init>>"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_a
    iget-boolean v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInitialized:Z

    if-nez v2, :cond_5f

    .line 132
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 133
    .local v2, "powerManager":Landroid/os/PowerManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 134
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 136
    const-string v4, "camera"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager;

    iput-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 137
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "CameraOperationThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationThread:Landroid/os/HandlerThread;

    .line 138
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 139
    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationHandler:Landroid/os/Handler;

    .line 140
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "JpegEncoderThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessThread:Landroid/os/HandlerThread;

    .line 141
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 142
    new-instance v4, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$ReprocessHandler;

    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$ReprocessHandler;-><init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessHandler:Landroid/os/Handler;

    .line 144
    iput-boolean v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInitialized:Z

    .line 146
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_a .. :try_end_60} :catchall_66

    .line 147
    const-string v1, "init<<"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 146
    :catchall_66
    move-exception v0

    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v0
.end method

.method public blacklist setOutputPictureSpec(III)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 214
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    if-nez v0, :cond_3b

    .line 215
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputPictureSpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 218
    :cond_3b
    return-void
.end method

.method public blacklist setVirtualCameraIds(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "backCameraId"    # Ljava/lang/String;
    .param p2, "frontCameraId"    # Ljava/lang/String;

    .line 229
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "setVTCameraIds: backId=%s frontId=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mBackVtCameraId:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mFrontVtCameraId:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public blacklist submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .registers 12
    .param p1, "data"    # Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 237
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yuv = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fmt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v1

    if-nez v1, :cond_44

    .line 240
    const-string v1, "submit: drop this request due to no callback was provided!"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 243
    :cond_44
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInitialized:Z

    if-eqz v1, :cond_e3

    .line 247
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->acquireWakeLock()V

    .line 249
    const/4 v1, 0x2

    .line 250
    .local v1, "reserve":I
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isImageFromPool()Z

    move-result v2

    if-nez v2, :cond_d3

    .line 251
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    .line 252
    .local v2, "inputImage":Landroid/media/Image;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v4

    .line 253
    .local v4, "queueKey":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v4, v6}, Lcom/xiaomi/camera/imagecodec/ImagePool;->isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 254
    const-string v5, "submit: wait image pool>>"

    invoke-static {v0, v5}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v4, v6, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V

    .line 256
    const-string v3, "submit: wait image pool<<"

    invoke-static {v0, v3}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_80
    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    .line 261
    .local v5, "timestamp":J
    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v3

    .line 262
    .local v3, "imageFormat":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->queueImage(Landroid/media/Image;)V

    .line 263
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v7

    invoke-virtual {v7, v3, v5, v6}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImage(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;J)Landroid/media/Image;

    move-result-object v7

    .line 264
    .local v7, "image":Landroid/media/Image;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "submit: image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p1, v7}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setMainImage(Landroid/media/Image;)Ljava/util/ArrayList;

    .line 266
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/xiaomi/camera/imagecodec/ImagePool;->holdImage(Landroid/media/Image;)V

    .line 268
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getDataStatusCallback()Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    move-result-object v8

    .line 269
    .local v8, "cb":Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;
    if-eqz v8, :cond_d3

    .line 270
    const-string v9, "close original image"

    invoke-static {v0, v9}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;->onImageClosed(Ljava/util/List;)V

    .line 275
    .end local v2    # "inputImage":Landroid/media/Image;
    .end local v3    # "imageFormat":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .end local v4    # "queueKey":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .end local v5    # "timestamp":J
    .end local v7    # "image":Landroid/media/Image;
    .end local v8    # "cb":Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;
    :cond_d3
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_d6
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 277
    monitor-exit v0
    :try_end_dc
    .catchall {:try_start_d6 .. :try_end_dc} :catchall_e0

    .line 278
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->sendReprocessRequest()V

    .line 279
    return-void

    .line 277
    :catchall_e0
    move-exception v2

    :try_start_e1
    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    throw v2

    .line 244
    .end local v1    # "reserve":I
    :cond_e3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT initialized. Call init() first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
