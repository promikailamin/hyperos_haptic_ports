.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$Coordinate;,
        Landroid/hardware/Camera$CameraMetaDataCallback;,
        Landroid/hardware/Camera$CameraDataCallback;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$IAppOpsCallbackWrapper;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$CameraInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final whitelist ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final greylist-max-o CAMERA_ERROR_DISABLED:I = 0x3

.field public static final whitelist CAMERA_ERROR_EVICTED:I = 0x2

.field public static final whitelist CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final whitelist CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final greylist-max-o CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final greylist-max-o CAMERA_FACE_DETECTION_SW:I = 0x1

.field public static final greylist-max-r CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field public static final blacklist CAMERA_HAL_API_VERSION_3_0:I = 0x300

.field private static final greylist-max-o CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final greylist-max-o CAMERA_MSG_ERROR:I = 0x1

.field private static final greylist-max-o CAMERA_MSG_FOCUS:I = 0x4

.field private static final greylist-max-o CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final blacklist CAMERA_MSG_META_DATA:I = 0x2000

.field private static final greylist-max-o CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final greylist-max-o CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final greylist-max-o CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final greylist-max-o CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final greylist-max-o CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final greylist-max-o CAMERA_MSG_SHUTTER:I = 0x2

.field private static final blacklist CAMERA_MSG_STATS_DATA:I = 0x1000

.field private static final greylist-max-o CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final greylist-max-o CAMERA_MSG_ZOOM:I = 0x8

.field private static final blacklist EACCESS:I = -0xd

.field private static final blacklist EBUSY:I = -0x10

.field private static final blacklist EINVAL:I = -0x16

.field private static final blacklist ENODEV:I = -0x13

.field private static final blacklist ENOSYS:I = -0x26

.field private static final blacklist EOPNOTSUPP:I = -0x5f

.field private static final blacklist EUSERS:I = -0x57

.field private static final greylist-max-o NO_ERROR:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Camera"


# instance fields
.field private greylist-max-o mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private greylist-max-o mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private greylist-max-o mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final greylist-max-o mAutoFocusCallbackLock:Ljava/lang/Object;

.field private greylist-max-o mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private blacklist mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

.field private blacklist mCameraId:I

.field private blacklist mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

.field private greylist-max-o mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private greylist-max-o mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private greylist-max-o mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private blacklist mExposeFrontFlashListValid:Z

.field private greylist-max-o mFaceDetectionRunning:Z

.field private greylist-max-o mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private blacklist mFlashMode:Ljava/lang/String;

.field private greylist-max-o mHasAppOpsPlayAudio:Z

.field private greylist-max-o mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private greylist-max-p mNativeContext:J

.field private greylist-max-o mOneShot:Z

.field private greylist-max-o mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private greylist-max-o mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private greylist-max-o mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private greylist-max-o mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private greylist-max-o mShutterSoundEnabledFromApp:Z

.field private final greylist-max-o mShutterSoundLock:Ljava/lang/Object;

.field private greylist-max-o mUsingPreviewAllocation:Z

.field private greylist-max-o mWithBuffer:Z

.field private greylist-max-o mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAutoFocusCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutoFocusCallbackLock(Landroid/hardware/Camera;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutoFocusMoveCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraDataCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraMetaDataCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDetailedErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmErrorCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFaceListener(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJpegCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOneShot(Landroid/hardware/Camera;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPostviewCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRawImageCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShutterCallback(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWithBuffer(Landroid/hardware/Camera;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmZoomListener(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreviewCallback(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetHasPreviewCallback(Landroid/hardware/Camera;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateAppOpsPlayAudio(Landroid/hardware/Camera;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/Camera;->updateAppOpsPlayAudio()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smbyteToInt([BI)I
    .registers 2

    invoke-static {p0, p1}, Landroid/hardware/Camera;->byteToInt([BI)I

    move-result p0

    return p0
.end method

.method constructor greylist-max-o <init>()V
    .registers 3

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 207
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 209
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 215
    iput-boolean v1, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    .line 234
    iput-boolean v0, p0, Landroid/hardware/Camera;->mExposeFrontFlashListValid:Z

    .line 633
    return-void
.end method

.method constructor greylist-max-o <init>(I)V
    .registers 5
    .param p1, "cameraId"    # I

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 207
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 209
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 215
    iput-boolean v1, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    .line 234
    iput-boolean v0, p0, Landroid/hardware/Camera;->mExposeFrontFlashListValid:Z

    .line 593
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/RestrictionsHelper;->isCameraRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ep not allow open Camera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ep"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void

    .line 599
    :cond_3e
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-ge p1, v0, :cond_73

    .line 603
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->cameraInit(I)I

    move-result v0

    .line 604
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 605
    sget v1, Landroid/system/OsConstants;->EACCES:I

    neg-int v1, v1

    if-eq v0, v1, :cond_67

    .line 607
    const/16 v1, 0x13

    if-ne v0, v1, :cond_5f

    .line 608
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 611
    :cond_5f
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 606
    :cond_67
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 613
    :cond_6f
    invoke-direct {p0}, Landroid/hardware/Camera;->initAppOps()V

    .line 614
    return-void

    .line 600
    .end local v0    # "err":I
    :cond_73
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown camera ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final native greylist-max-o _addCallbackBuffer([BI)V
.end method

.method private final native greylist-max-o _enableShutterSound(Z)Z
.end method

.method private static native greylist-max-o _getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method public static native blacklist _getNumberOfCameras()I
.end method

.method private final native greylist-max-o _startFaceDetection(I)V
.end method

.method private final native greylist-max-o _stopFaceDetection()V
.end method

.method private final native greylist-max-o _stopPreview()V
.end method

.method private final greylist addCallbackBuffer([BI)V
    .registers 6
    .param p1, "callbackBuffer"    # [B
    .param p2, "msgType"    # I

    .line 1102
    const/16 v0, 0x10

    if-eq p2, v0, :cond_22

    const/16 v0, 0x80

    if-ne p2, v0, :cond_9

    goto :goto_22

    .line 1104
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1108
    :cond_22
    :goto_22
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1109
    return-void
.end method

.method private static blacklist byteToInt([BI)I
    .registers 6
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .line 2305
    const/4 v0, 0x0

    .line 2306
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_15

    .line 2307
    rsub-int/lit8 v2, v1, 0x3

    mul-int/lit8 v2, v2, 0x8

    .line 2308
    .local v2, "shift":I
    rsub-int/lit8 v3, v1, 0x3

    add-int/2addr v3, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 2306
    .end local v2    # "shift":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2310
    .end local v1    # "i":I
    :cond_15
    return v0
.end method

.method private blacklist cameraInit(I)I
    .registers 10
    .param p1, "cameraId"    # I

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 546
    iput-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 547
    iput-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 548
    iput-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 549
    iput-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 550
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 551
    iput-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 553
    iput-object v0, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    .line 554
    iput-object v0, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    .line 558
    iput p1, p0, Landroid/hardware/Camera;->mCameraId:I

    .line 559
    const-string/jumbo v2, "off"

    iput-object v2, p0, Landroid/hardware/Camera;->mFlashMode:Ljava/lang/String;

    .line 560
    const-string v2, "camera_front_flash_package_list"

    invoke-static {v2}, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->isWhiteListValid(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/Camera;->mExposeFrontFlashListValid:Z

    .line 564
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    .local v3, "looper":Landroid/os/Looper;
    if-eqz v2, :cond_32

    .line 565
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, v3}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_43

    .line 566
    :cond_32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_41

    .line 567
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, v3}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_43

    .line 569
    :cond_41
    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 573
    :goto_43
    invoke-static {p0, p1}, Landroid/hardware/camera2/impl/CameraExtStub;->initCamera(Landroid/hardware/Camera;I)V

    .line 576
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 577
    .local v0, "context":Landroid/content/Context;
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 578
    .local v2, "manager":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 579
    .local v4, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v5, "default"

    .line 580
    .local v5, "activityName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8d

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8d

    .line 581
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Open camera top activityName is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Camera"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_8d
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 585
    invoke-direct {p0, v1, p1, v6}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static greylist-max-o checkInitErrors(I)Z
    .registers 2
    .param p0, "err"    # I

    .line 620
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private native greylist-max-o enableFocusMoveCallback(I)V
.end method

.method public static whitelist getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .registers 7
    .param p0, "cameraId"    # I
    .param p1, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;

    .line 345
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-ge p0, v0, :cond_38

    .line 349
    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 350
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 351
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 353
    .local v1, "audioService":Landroid/media/IAudioService;
    :try_start_13
    invoke-interface {v1}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 360
    const-string v2, "android.camera.cts"

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 361
    invoke-static {}, Landroid/hardware/camera2/impl/CameraExtStub;->isCameraSoundEnforced()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 362
    :cond_2b
    const/4 v2, 0x0

    iput-boolean v2, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2e} :catch_2f

    .line 368
    :cond_2e
    goto :goto_37

    .line 366
    :catch_2f
    move-exception v2

    .line 367
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void

    .line 346
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "audioService":Landroid/media/IAudioService;
    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown camera ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .registers 3

    .line 2299
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    .line 2300
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters-IA;)V

    return-object v1
.end method

.method public static whitelist getNumberOfCameras()I
    .registers 4

    .line 319
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtStub;->isAuxCameraClient(Ljava/lang/String;)Z

    move-result v1

    .line 321
    .local v1, "exposeAuxCamera":Z
    invoke-static {}, Landroid/hardware/Camera;->_getNumberOfCameras()I

    move-result v2

    .line 322
    .local v2, "numberOfCameras":I
    if-nez v1, :cond_12

    const/4 v3, 0x2

    if-le v2, v3, :cond_12

    .line 323
    const/4 v2, 0x2

    .line 325
    :cond_12
    return v2
.end method

.method public static greylist-max-o getParametersCopy(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .registers 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 2464
    if-eqz p0, :cond_13

    .line 2468
    invoke-static {p0}, Landroid/hardware/Camera$Parameters;->-$$Nest$mgetOuter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;

    move-result-object v0

    .line 2469
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters-IA;)V

    .line 2470
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    .line 2472
    return-object v1

    .line 2465
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v1    # "p":Landroid/hardware/Camera$Parameters;
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o initAppOps()V
    .registers 6

    .line 636
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 637
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 639
    invoke-direct {p0}, Landroid/hardware/Camera;->updateAppOpsPlayAudio()V

    .line 641
    new-instance v1, Landroid/hardware/Camera$IAppOpsCallbackWrapper;

    invoke-direct {v1, p0}, Landroid/hardware/Camera$IAppOpsCallbackWrapper;-><init>(Landroid/hardware/Camera;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 643
    :try_start_16
    iget-object v1, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v2, 0x1c

    .line 644
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 643
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_24

    .line 648
    goto :goto_2f

    .line 645
    :catch_24
    move-exception v1

    .line 646
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Camera"

    const-string v3, "Error registering appOps callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 649
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method private final native greylist-max-o native_autoFocus()V
.end method

.method private final native greylist-max-o native_cancelAutoFocus()V
.end method

.method private final native greylist native_getParameters()Ljava/lang/String;
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private final native blacklist native_sendHistogramData()V
.end method

.method private final native blacklist native_sendMetaData()V
.end method

.method private final native blacklist native_setHistogramMode(Z)V
.end method

.method private final native blacklist native_setLongshot(Z)V
.end method

.method private final native blacklist native_setMetadataCb(Z)V
.end method

.method private final native greylist native_setParameters(Ljava/lang/String;)V
.end method

.method private native greylist native_setup(Ljava/lang/Object;ILjava/lang/String;)I
.end method

.method private final native greylist-max-o native_takePicture(I)V
.end method

.method public static whitelist open()Landroid/hardware/Camera;
    .registers 4

    .line 486
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 487
    .local v0, "numberOfCameras":I
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 488
    .local v1, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1c

    .line 489
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 490
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_19

    .line 491
    new-instance v3, Landroid/hardware/Camera;

    invoke-direct {v3, v2}, Landroid/hardware/Camera;-><init>(I)V

    return-object v3

    .line 488
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 494
    .end local v2    # "i":I
    :cond_1c
    const/4 v2, 0x0

    return-object v2
.end method

.method public static whitelist open(I)Landroid/hardware/Camera;
    .registers 2
    .param p0, "cameraId"    # I

    .line 473
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0}, Landroid/hardware/Camera;-><init>(I)V

    return-object v0
.end method

.method public static greylist openLegacy(II)Landroid/hardware/Camera;
    .registers 5
    .param p0, "cameraId"    # I
    .param p1, "halVersion"    # I

    .line 537
    const/16 v0, 0x300

    if-lt p1, v0, :cond_a

    .line 541
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0}, Landroid/hardware/Camera;-><init>(I)V

    return-object v0

    .line 538
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported HAL version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o openUninitialized()Landroid/hardware/Camera;
    .registers 1

    .line 627
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    return-object v0
.end method

.method private static greylist-max-r postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1366
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 1367
    .local v0, "c":Landroid/hardware/Camera;
    if-nez v0, :cond_c

    .line 1368
    return-void

    .line 1370
    :cond_c
    iget-object v1, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v1, :cond_19

    .line 1371
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1372
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1374
    .end local v1    # "m":Landroid/os/Message;
    :cond_19
    return-void
.end method

.method private greylist-max-o releaseAppOps()V
    .registers 3

    .line 653
    :try_start_0
    iget-object v0, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v0, :cond_9

    .line 654
    iget-object v1, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 658
    :cond_9
    goto :goto_b

    .line 656
    :catch_a
    move-exception v0

    .line 659
    :goto_b
    return-void
.end method

.method private final native greylist-max-o setHasPreviewCallback(ZZ)V
.end method

.method private final native greylist-max-o setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method

.method private greylist-max-o updateAppOpsPlayAudio()V
    .registers 10

    .line 1850
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1851
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_5b

    .line 1853
    .local v1, "oldHasAppOpsPlayAudio":Z
    const/4 v2, 0x1

    .line 1854
    .local v2, "mode":I
    const/4 v3, 0x0

    :try_start_7
    iget-object v4, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v4, :cond_1c

    .line 1855
    const/16 v5, 0x1c

    const/16 v6, 0xd

    .line 1857
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1855
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v4

    move v2, v4

    .line 1859
    :cond_1c
    if-nez v2, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    move v4, v3

    :goto_21
    iput-boolean v4, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_23} :catch_24
    .catchall {:try_start_7 .. :try_end_23} :catchall_5b

    .line 1863
    .end local v2    # "mode":I
    goto :goto_2e

    .line 1860
    :catch_24
    move-exception v2

    .line 1861
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_25
    const-string v4, "Camera"

    const-string v5, "AppOpsService check audio operation failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iput-boolean v3, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 1864
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2e
    iget-boolean v2, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    if-eq v1, v2, :cond_59

    .line 1865
    if-nez v2, :cond_54

    .line 1866
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1867
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v4
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_5b

    .line 1869
    .local v4, "audioService":Landroid/media/IAudioService;
    :try_start_3e
    invoke-interface {v4}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v5
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_42} :catch_47
    .catchall {:try_start_3e .. :try_end_42} :catchall_5b

    if-eqz v5, :cond_46

    .line 1870
    :try_start_44
    monitor-exit v0

    return-void

    .line 1874
    :cond_46
    goto :goto_4f

    .line 1872
    :catch_47
    move-exception v5

    .line 1873
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "Camera"

    const-string v7, "Audio service is unavailable for queries"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_4f
    invoke-direct {p0, v3}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    .line 1876
    nop

    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "audioService":Landroid/media/IAudioService;
    goto :goto_59

    .line 1877
    :cond_54
    iget-boolean v2, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 1880
    .end local v1    # "oldHasAppOpsPlayAudio":Z
    :cond_59
    :goto_59
    monitor-exit v0

    .line 1881
    return-void

    .line 1880
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_44 .. :try_end_5d} :catchall_5b

    throw v1
.end method


# virtual methods
.method public final whitelist addCallbackBuffer([B)V
    .registers 3
    .param p1, "callbackBuffer"    # [B

    .line 1051
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1052
    return-void
.end method

.method public final greylist addRawImageCallbackBuffer([B)V
    .registers 3
    .param p1, "callbackBuffer"    # [B

    .line 1095
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 1096
    return-void
.end method

.method public final whitelist autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .line 1458
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1459
    :try_start_3
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1460
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 1461
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    .line 1462
    return-void

    .line 1460
    :catchall_a
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final whitelist cancelAutoFocus()V
    .registers 3

    .line 1478
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1480
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_11

    .line 1481
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 1497
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    .line 1498
    return-void

    .line 1480
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final greylist-max-o createPreviewAllocation(Landroid/renderscript/RenderScript;I)Landroid/renderscript/Allocation;
    .registers 8
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "usage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSIllegalArgumentException;
        }
    .end annotation

    .line 1141
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1142
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1143
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    new-instance v2, Landroid/renderscript/Type$Builder;

    sget-object v3, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    .line 1144
    invoke-static {p1, v3, v4}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1149
    .local v2, "yuvBuilder":Landroid/renderscript/Type$Builder;
    const v3, 0x32315659

    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 1150
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1151
    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1153
    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v3

    or-int/lit8 v4, p2, 0x20

    invoke-static {p1, v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 1156
    .local v3, "a":Landroid/renderscript/Allocation;
    return-object v3
.end method

.method public final greylist-max-o disableShutterSound()Z
    .registers 2

    .line 1826
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v0

    return v0
.end method

.method public final whitelist enableShutterSound(Z)Z
    .registers 10
    .param p1, "enabled"    # Z

    .line 1773
    const/4 v0, 0x1

    .line 1774
    .local v0, "canDisableShutterSound":Z
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1775
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    .line 1777
    .local v2, "audioService":Landroid/media/IAudioService;
    :try_start_b
    invoke-interface {v2}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1782
    const-string v3, "android.camera.cts"

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1783
    invoke-static {}, Landroid/hardware/camera2/impl/CameraExtStub;->isCameraSoundEnforced()Z

    move-result v3
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_21} :catch_25

    if-eqz v3, :cond_24

    .line 1784
    :cond_23
    const/4 v0, 0x0

    .line 1790
    :cond_24
    goto :goto_2d

    .line 1788
    :catch_25
    move-exception v3

    .line 1789
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Camera"

    const-string v5, "Audio service is unavailable for queries"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2d
    const/4 v3, 0x0

    if-nez p1, :cond_33

    if-nez v0, :cond_33

    .line 1792
    return v3

    .line 1794
    :cond_33
    iget-object v4, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1795
    :try_start_36
    iput-boolean p1, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    .line 1798
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v5

    .line 1799
    .local v5, "ret":Z
    if-eqz p1, :cond_4e

    iget-boolean v6, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    if-nez v6, :cond_4e

    .line 1800
    const-string v6, "Camera"

    const-string v7, "Shutter sound is not allowed by AppOpsManager"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    if-eqz v0, :cond_4e

    .line 1802
    invoke-direct {p0, v3}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    .line 1805
    :cond_4e
    monitor-exit v4

    return v5

    .line 1806
    .end local v5    # "ret":Z
    :catchall_50
    move-exception v3

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_36 .. :try_end_52} :catchall_50

    throw v3
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 663
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 664
    return-void
.end method

.method public final native blacklist getAudioRestriction()I
.end method

.method public blacklist getCurrentFocusPosition()I
    .registers 5

    .line 2442
    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters-IA;)V

    .line 2443
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 2444
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2446
    const/4 v2, -0x1

    .line 2447
    .local v2, "focus_pos":I
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 2448
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2450
    :cond_1c
    return v2
.end method

.method public whitelist getParameters()Landroid/hardware/Camera$Parameters;
    .registers 7

    .line 2252
    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters-IA;)V

    .line 2253
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 2254
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2257
    iget v2, p0, Landroid/hardware/Camera;->mCameraId:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_28

    .line 2258
    invoke-static {}, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->isExposeFrontFlash()Z

    move-result v2

    .line 2259
    .local v2, "exposeFrontFlash":Z
    const-string v4, "camera_front_flash_package_list"

    invoke-static {v4}, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->isWhiteListValid(Ljava/lang/String;)Z

    move-result v4

    .line 2260
    .local v4, "exposeFrontFlashListValid":Z
    if-ne v3, v4, :cond_28

    if-nez v2, :cond_28

    .line 2261
    const-string v3, "flash-mode-values"

    const-string/jumbo v5, "off"

    invoke-virtual {v0, v3, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    .end local v2    # "exposeFrontFlash":Z
    .end local v4    # "exposeFrontFlashListValid":Z
    :cond_28
    return-object v0
.end method

.method public blacklist getWBCurrentCCT()I
    .registers 5

    .line 2278
    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters-IA;)V

    .line 2279
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 2280
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2282
    const/4 v2, 0x0

    .line 2283
    .local v2, "cct":I
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 2284
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2287
    :cond_1c
    return v2
.end method

.method public final native whitelist lock()V
.end method

.method public final native greylist previewEnabled()Z
.end method

.method public final native whitelist reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist release()V
    .registers 4

    .line 679
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraExtStub;->releaseCamera(Landroid/hardware/Camera;)V

    .line 682
    iget-boolean v0, p0, Landroid/hardware/Camera;->mExposeFrontFlashListValid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    iget v2, p0, Landroid/hardware/Camera;->mCameraId:I

    if-ne v0, v2, :cond_1d

    iget-object v0, p0, Landroid/hardware/Camera;->mFlashMode:Ljava/lang/String;

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 683
    iput-object v2, p0, Landroid/hardware/Camera;->mFlashMode:Ljava/lang/String;

    .line 684
    invoke-static {v1}, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->boostScreenBrightness(Z)V

    .line 688
    :cond_1d
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 689
    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 690
    invoke-direct {p0}, Landroid/hardware/Camera;->releaseAppOps()V

    .line 691
    return-void
.end method

.method public final blacklist sendHistogramData()V
    .registers 1

    .line 2345
    invoke-direct {p0}, Landroid/hardware/Camera;->native_sendHistogramData()V

    .line 2346
    return-void
.end method

.method public final blacklist sendMetaData()V
    .registers 1

    .line 2381
    invoke-direct {p0}, Landroid/hardware/Camera;->native_sendMetaData()V

    .line 2382
    return-void
.end method

.method public final native blacklist setAudioRestriction(I)V
.end method

.method public whitelist setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1533
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1534
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    .line 1535
    return-void
.end method

.method public final greylist-max-o setDetailedErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .registers 2
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .line 2199
    iput-object p1, p0, Landroid/hardware/Camera;->mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 2200
    return-void
.end method

.method public final native whitelist setDisplayOrientation(I)V
.end method

.method public final whitelist setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .registers 2
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .line 2181
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 2182
    return-void
.end method

.method public final whitelist setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .line 1946
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 1947
    return-void
.end method

.method public final blacklist setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/hardware/Camera$CameraDataCallback;

    .line 2334
    iput-object p1, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    .line 2335
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setHistogramMode(Z)V

    .line 2336
    return-void
.end method

.method public final blacklist setLongshot(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 2392
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->native_setLongshot(Z)V

    .line 2393
    return-void
.end method

.method public final blacklist setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/hardware/Camera$CameraMetaDataCallback;

    .line 2371
    iput-object p1, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    .line 2372
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setMetadataCb(Z)V

    .line 2373
    return-void
.end method

.method public final whitelist setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .line 965
    const/16 v0, 0x44

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 966
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 967
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 968
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 969
    if-eqz p1, :cond_11

    .line 970
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 972
    :cond_11
    if-eqz p1, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 973
    return-void
.end method

.method public whitelist setParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .line 2216
    iget-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    if-eqz v0, :cond_25

    .line 2217
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2218
    .local v0, "newPreviewSize":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2219
    .local v1, "currentPreviewSize":Landroid/hardware/Camera$Size;
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_1d

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne v2, v3, :cond_1d

    goto :goto_25

    .line 2221
    :cond_1d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot change preview size while a preview allocation is configured."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2227
    .end local v0    # "newPreviewSize":Landroid/hardware/Camera$Size;
    .end local v1    # "currentPreviewSize":Landroid/hardware/Camera$Size;
    :cond_25
    :goto_25
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2228
    .local v0, "flashMode":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/hardware/Camera;->mExposeFrontFlashListValid:Z

    if-eqz v1, :cond_4d

    iget v1, p0, Landroid/hardware/Camera;->mCameraId:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_4d

    iget-object v1, p0, Landroid/hardware/Camera;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 2229
    iput-object v0, p0, Landroid/hardware/Camera;->mFlashMode:Ljava/lang/String;

    .line 2230
    const-string/jumbo v1, "torch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2231
    invoke-static {v2}, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->boostScreenBrightness(Z)V

    goto :goto_4d

    .line 2233
    :cond_49
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->boostScreenBrightness(Z)V

    .line 2238
    :cond_4d
    :goto_4d
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 2239
    return-void
.end method

.method public final whitelist setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .line 936
    const/16 v0, 0x42

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 937
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 938
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 939
    iput-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 940
    if-eqz p1, :cond_10

    .line 941
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 945
    :cond_10
    if-eqz p1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    move v1, v0

    :goto_15
    invoke-direct {p0, v1, v0}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 946
    return-void
.end method

.method public final greylist-max-o setPreviewCallbackAllocation(Landroid/renderscript/Allocation;)V
    .registers 9
    .param p1, "previewAllocation"    # Landroid/renderscript/Allocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1207
    const/4 v0, 0x0

    .line 1208
    .local v0, "previewSurface":Landroid/view/Surface;
    if-eqz p1, :cond_9c

    .line 1209
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1210
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1211
    .local v2, "previewSize":Landroid/hardware/Camera$Size;
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-ne v3, v4, :cond_53

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    .line 1212
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-ne v3, v4, :cond_53

    .line 1222
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_4b

    .line 1227
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getDataKind()Landroid/renderscript/Element$DataKind;

    move-result-object v3

    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    if-ne v3, v4, :cond_43

    .line 1232
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 1233
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1234
    .end local v1    # "p":Landroid/hardware/Camera$Parameters;
    .end local v2    # "previewSize":Landroid/hardware/Camera$Size;
    goto :goto_9f

    .line 1229
    .restart local v1    # "p":Landroid/hardware/Camera$Parameters;
    .restart local v2    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_43
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation is not of a YUV type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1224
    :cond_4b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation usage does not include USAGE_IO_INPUT"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1213
    :cond_53
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Allocation dimensions don\'t match preview dimensions: Allocation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1216
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1218
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ". Preview is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1235
    .end local v1    # "p":Landroid/hardware/Camera$Parameters;
    .end local v2    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_9c
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1237
    :goto_9f
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->setPreviewCallbackSurface(Landroid/view/Surface;)V

    .line 1238
    return-void
.end method

.method public final whitelist setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .line 1006
    const/16 v0, 0x43

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1007
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 1008
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 1009
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 1010
    if-eqz p1, :cond_11

    .line 1011
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1013
    :cond_11
    if-eqz p1, :cond_14

    move v0, v1

    :cond_14
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 1014
    return-void
.end method

.method public final whitelist setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 778
    if-eqz p1, :cond_a

    .line 779
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_11

    .line 781
    :cond_a
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    .line 783
    :goto_11
    return-void
.end method

.method public final native greylist-max-p setPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native whitelist setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .line 1916
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 1917
    return-void
.end method

.method public final whitelist startFaceDetection()V
    .registers 3

    .line 1982
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-nez v0, :cond_c

    .line 1985
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 1986
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1987
    return-void

    .line 1983
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final native whitelist startPreview()V
.end method

.method public final native whitelist startSmoothZoom(I)V
.end method

.method public final whitelist stopFaceDetection()V
    .registers 2

    .line 1995
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 1996
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1997
    return-void
.end method

.method public final whitelist stopPreview()V
    .registers 3

    .line 894
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 895
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 897
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 898
    iput-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 899
    iput-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 900
    iput-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 901
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 902
    :try_start_12
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 903
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_18

    .line 904
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 905
    return-void

    .line 903
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public final native whitelist stopSmoothZoom()V
.end method

.method public final whitelist takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .registers 5
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .line 1588
    const/16 v0, 0x41

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1589
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1590
    return-void
.end method

.method public final whitelist takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .registers 7
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postview"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .line 1627
    const/16 v0, 0x41

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1628
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 1629
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1630
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1631
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1634
    const/4 v0, 0x0

    .line 1635
    .local v0, "msgType":I
    if-eqz p1, :cond_12

    .line 1636
    or-int/lit8 v0, v0, 0x2

    .line 1638
    :cond_12
    if-eqz p2, :cond_16

    .line 1639
    or-int/lit16 v0, v0, 0x80

    .line 1641
    :cond_16
    if-eqz p3, :cond_1a

    .line 1642
    or-int/lit8 v0, v0, 0x40

    .line 1644
    :cond_1a
    if-eqz p4, :cond_1e

    .line 1645
    or-int/lit16 v0, v0, 0x100

    .line 1648
    :cond_1e
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 1649
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1650
    return-void
.end method

.method public final native whitelist unlock()V
.end method
