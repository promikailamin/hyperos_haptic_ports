.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$CameraInfo;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$IAppOpsCallbackWrapper;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Face;
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

.field private static final greylist-max-o CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final greylist-max-o CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final greylist-max-o CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final greylist-max-o CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final greylist-max-o CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final greylist-max-o CAMERA_MSG_SHUTTER:I = 0x2

.field private static final greylist-max-o CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final greylist-max-o CAMERA_MSG_ZOOM:I = 0x8

.field private static final greylist-max-o NO_ERROR:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Camera"


# instance fields
.field private greylist-max-o mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private greylist-max-o mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private greylist-max-o mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final greylist-max-o mAutoFocusCallbackLock:Ljava/lang/Object;

.field private greylist-max-o mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private greylist-max-o mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private greylist-max-o mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private greylist-max-o mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private greylist-max-o mFaceDetectionRunning:Z

.field private greylist-max-o mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

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

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 208
    iput-boolean v0, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    .line 662
    return-void
.end method

.method constructor blacklist <init>(ILandroid/content/Context;Landroid/content/res/CameraCompatibilityInfo;)V
    .registers 5

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 208
    iput-boolean v0, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    .line 626
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-ge p1, v0, :cond_5f

    .line 629
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/Camera;->cameraInit(ILandroid/content/Context;Landroid/content/res/CameraCompatibilityInfo;)I

    move-result p1

    .line 631
    invoke-static {p1}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 632
    sget p2, Landroid/system/OsConstants;->EINVAL:I

    neg-int p2, p2

    if-eq p1, p2, :cond_53

    .line 634
    sget p2, Landroid/system/OsConstants;->EACCES:I

    neg-int p2, p2

    if-eq p1, p2, :cond_4b

    .line 636
    sget p2, Landroid/system/OsConstants;->ENODEV:I

    neg-int p2, p2

    if-ne p1, p2, :cond_43

    .line 637
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Camera initialization failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 640
    :cond_43
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unknown camera error"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 635
    :cond_4b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Fail to connect to camera service"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 633
    :cond_53
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Parsing arguments failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 642
    :cond_5b
    invoke-direct {p0}, Landroid/hardware/Camera;->initAppOps()V

    .line 643
    return-void

    .line 627
    :cond_5f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unknown camera ID"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final native greylist-max-o _addCallbackBuffer([BI)V
.end method

.method private final native greylist-max-o _enableShutterSound(Z)Z
.end method

.method private static native blacklist _getCameraInfo(ILandroid/content/res/CameraCompatibilityInfo;Landroid/os/Parcel;ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method private static native blacklist _getNumberOfCameras(Landroid/os/Parcel;I)I
.end method

.method private final native greylist-max-o _startFaceDetection(I)V
.end method

.method private final native greylist-max-o _stopFaceDetection()V
.end method

.method private final native greylist-max-o _stopPreview()V
.end method

.method private final greylist addCallbackBuffer([BI)V
    .registers 5

    .line 1125
    const/16 v0, 0x10

    if-eq p2, v0, :cond_22

    const/16 v0, 0x80

    if-ne p2, v0, :cond_9

    goto :goto_22

    .line 1127
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported message type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1131
    :cond_22
    :goto_22
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1132
    return-void
.end method

.method private blacklist cameraInit(ILandroid/content/Context;Landroid/content/res/CameraCompatibilityInfo;)I
    .registers 13

    .line 580
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 581
    iput-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 582
    iput-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 583
    iput-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 584
    iput-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 585
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 586
    iput-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 589
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 590
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_2e

    .line 591
    :cond_1e
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 592
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_2e

    .line 594
    :cond_2c
    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 597
    :goto_2e
    invoke-direct {p0}, Landroid/hardware/Camera;->shouldForceSlowJpegMode()Z

    move-result v6

    .line 599
    nop

    .line 600
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v1

    .line 601
    :try_start_3b
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 606
    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v7

    .line 607
    invoke-static {p2}, Landroid/hardware/Camera;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v8

    .line 601
    move-object v2, p0

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;ILandroid/content/res/CameraCompatibilityInfo;ZLandroid/os/Parcel;I)I

    move-result p1
    :try_end_4f
    .catchall {:try_start_3b .. :try_end_4f} :catchall_55

    .line 608
    if-eqz v1, :cond_54

    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 601
    :cond_54
    return p1

    .line 599
    :catchall_55
    move-exception v0

    move-object p1, v0

    if-eqz v1, :cond_62

    :try_start_59
    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_62

    :catchall_5d
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    throw p1
.end method

.method public static greylist-max-o checkInitErrors(I)Z
    .registers 1

    .line 649
    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private native greylist-max-o enableFocusMoveCallback(I)V
.end method

.method public static blacklist getCameraInfo(ILandroid/content/Context;Landroid/content/res/CameraCompatibilityInfo;Landroid/hardware/Camera$CameraInfo;)V
    .registers 6

    .line 362
    nop

    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v0

    .line 364
    nop

    .line 367
    :try_start_a
    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v1

    .line 368
    invoke-static {p1}, Landroid/hardware/Camera;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result p1

    .line 364
    invoke-static {p0, p2, v1, p1, p3}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/content/res/CameraCompatibilityInfo;Landroid/os/Parcel;ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_37

    .line 370
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 372
    :cond_1a
    const-string p0, "audio"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 373
    invoke-static {p0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object p0

    .line 375
    :try_start_24
    invoke-interface {p0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 378
    const/4 p0, 0x0

    iput-boolean p0, p3, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2d} :catch_2e

    .line 382
    :cond_2d
    goto :goto_36

    .line 380
    :catch_2e
    move-exception p0

    .line 381
    const-string p0, "Camera"

    const-string p1, "Audio service is unavailable for queries"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_36
    return-void

    .line 362
    :catchall_37
    move-exception p0

    if-eqz v0, :cond_42

    :try_start_3a
    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    throw p0
.end method

.method public static whitelist getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .registers 4

    .line 345
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-ge p0, v0, :cond_16

    .line 348
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 349
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v1

    .line 350
    invoke-static {p0, v0, v1, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/content/Context;Landroid/content/res/CameraCompatibilityInfo;Landroid/hardware/Camera$CameraInfo;)V

    .line 351
    return-void

    .line 346
    :cond_16
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown camera ID"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getDevicePolicyFromContext(Landroid/content/Context;)I
    .registers 3

    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    if-nez v0, :cond_8

    .line 394
    const/4 p0, 0x0

    return p0

    .line 397
    :cond_8
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 398
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 399
    if-nez v0, :cond_14

    .line 400
    const/4 p0, -0x1

    goto :goto_1d

    .line 401
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result p0

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Landroid/companion/virtual/VirtualDeviceManager;->getDevicePolicy(II)I

    move-result p0

    .line 399
    :goto_1d
    return p0
.end method

.method public static greylist getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .registers 3

    .line 2109
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    .line 2110
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera-IA;)V

    return-object v1
.end method

.method public static whitelist getNumberOfCameras()I
    .registers 2

    .line 310
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/Camera;->getNumberOfCameras(Landroid/content/Context;)I

    move-result v0

    .line 311
    invoke-static {}, Landroid/hardware/Camera;->shouldExposeAuxCamera()Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x2

    if-le v0, v1, :cond_16

    .line 312
    move v0, v1

    .line 314
    :cond_16
    return v0
.end method

.method public static blacklist getNumberOfCameras(Landroid/content/Context;)I
    .registers 3

    .line 327
    nop

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v0

    .line 329
    nop

    .line 330
    :try_start_a
    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {p0}, Landroid/hardware/Camera;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result p0

    .line 329
    invoke-static {v1, p0}, Landroid/hardware/Camera;->_getNumberOfCameras(Landroid/os/Parcel;I)I

    move-result p0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1c

    .line 331
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 329
    :cond_1b
    return p0

    .line 327
    :catchall_1c
    move-exception p0

    if-eqz v0, :cond_27

    :try_start_1f
    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    throw p0
.end method

.method public static greylist-max-o getParametersCopy(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .registers 4

    .line 2123
    if-eqz p0, :cond_13

    .line 2127
    invoke-static {p0}, Landroid/hardware/Camera$Parameters;->-$$Nest$mgetOuter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;

    move-result-object v0

    .line 2128
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera-IA;)V

    .line 2129
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    .line 2131
    return-object v1

    .line 2124
    :cond_13
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "parameters must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o initAppOps()V
    .registers 5

    .line 665
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 666
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 668
    invoke-direct {p0}, Landroid/hardware/Camera;->updateAppOpsPlayAudio()V

    .line 670
    new-instance v0, Landroid/hardware/Camera$IAppOpsCallbackWrapper;

    invoke-direct {v0, p0}, Landroid/hardware/Camera$IAppOpsCallbackWrapper;-><init>(Landroid/hardware/Camera;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 672
    :try_start_16
    iget-object v0, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 673
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 672
    const/16 v3, 0x1c

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_24

    .line 677
    goto :goto_2f

    .line 674
    :catch_24
    move-exception v0

    .line 675
    const-string v1, "Camera"

    const-string v2, "Error registering appOps callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 678
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

.method private final native greylist native_setParameters(Ljava/lang/String;)V
.end method

.method private native greylist native_setup(Ljava/lang/Object;ILandroid/content/res/CameraCompatibilityInfo;ZLandroid/os/Parcel;I)I
.end method

.method private final native greylist-max-o native_takePicture(I)V
.end method

.method public static whitelist open()Landroid/hardware/Camera;
    .registers 4

    .line 521
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 522
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 523
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1b

    .line 524
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 525
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_18

    .line 526
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0

    .line 523
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 529
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist open(I)Landroid/hardware/Camera;
    .registers 3

    .line 494
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 495
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v1

    .line 496
    invoke-static {p0, v0, v1}, Landroid/hardware/Camera;->open(ILandroid/content/Context;Landroid/content/res/CameraCompatibilityInfo;)Landroid/hardware/Camera;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist open(ILandroid/content/Context;Landroid/content/res/CameraCompatibilityInfo;)Landroid/hardware/Camera;
    .registers 4

    .line 508
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/Camera;-><init>(ILandroid/content/Context;Landroid/content/res/CameraCompatibilityInfo;)V

    return-object v0
.end method

.method public static greylist openLegacy(II)Landroid/hardware/Camera;
    .registers 4

    .line 572
    const/16 v0, 0x300

    if-lt p1, v0, :cond_9

    .line 576
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0

    return-object p0

    .line 573
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported HAL version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o openUninitialized()Landroid/hardware/Camera;
    .registers 1

    .line 656
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    return-object v0
.end method

.method private static greylist-max-r postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 6

    .line 1247
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/Camera;

    .line 1248
    if-nez p0, :cond_b

    .line 1249
    return-void

    .line 1251
    :cond_b
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v0, :cond_1a

    .line 1252
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1253
    iget-object p0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1255
    :cond_1a
    return-void
.end method

.method private greylist-max-o releaseAppOps()V
    .registers 3

    .line 682
    :try_start_0
    iget-object v0, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v0, :cond_b

    .line 683
    iget-object v0, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 687
    :cond_b
    goto :goto_d

    .line 685
    :catch_c
    move-exception v0

    .line 688
    :goto_d
    return-void
.end method

.method private final native greylist-max-o setHasPreviewCallback(ZZ)V
.end method

.method private final native greylist-max-o setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method

.method public static blacklist shouldExposeAuxCamera()Z
    .registers 6

    .line 282
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 283
    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 284
    return v1

    .line 285
    :cond_8
    nop

    .line 286
    const-string/jumbo v2, "vendor.camera.aux.packagelist"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 287
    nop

    .line 288
    const-string/jumbo v4, "vendor.camera.aux.packageexcludelist"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 290
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    return v1
.end method

.method private blacklist shouldForceSlowJpegMode()Z
    .registers 7

    .line 612
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 616
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_29

    aget-object v5, v1, v4

    .line 617
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 618
    const/4 v0, 0x1

    return v0

    .line 616
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 621
    :cond_29
    return v3
.end method

.method private greylist-max-o updateAppOpsPlayAudio()V
    .registers 10

    .line 1721
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1722
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_5f

    .line 1724
    nop

    .line 1725
    const/4 v2, 0x0

    :try_start_7
    iget-object v3, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/4 v4, 0x1

    if-eqz v3, :cond_1f

    .line 1726
    iget-object v3, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 1728
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1726
    const/16 v7, 0x1c

    const/16 v8, 0xd

    invoke-interface {v3, v7, v8, v5, v6}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v3

    goto :goto_20

    .line 1725
    :cond_1f
    move v3, v4

    .line 1730
    :goto_20
    if-nez v3, :cond_23

    goto :goto_24

    :cond_23
    move v4, v2

    :goto_24
    iput-boolean v4, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_26} :catch_27
    .catchall {:try_start_7 .. :try_end_26} :catchall_5f

    .line 1734
    goto :goto_31

    .line 1731
    :catch_27
    move-exception v3

    .line 1732
    :try_start_28
    const-string v3, "Camera"

    const-string v4, "AppOpsService check audio operation failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iput-boolean v2, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 1735
    :goto_31
    iget-boolean v3, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    if-eq v1, v3, :cond_5d

    .line 1736
    iget-boolean v1, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    if-nez v1, :cond_58

    .line 1737
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1738
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_5f

    .line 1740
    :try_start_43
    invoke-interface {v1}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v1
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_47} :catch_4c
    .catchall {:try_start_43 .. :try_end_47} :catchall_5f

    if-eqz v1, :cond_4b

    .line 1741
    :try_start_49
    monitor-exit v0

    return-void

    .line 1745
    :cond_4b
    goto :goto_54

    .line 1743
    :catch_4c
    move-exception v1

    .line 1744
    const-string v1, "Camera"

    const-string v3, "Audio service is unavailable for queries"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :goto_54
    invoke-direct {p0, v2}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    .line 1747
    goto :goto_5d

    .line 1748
    :cond_58
    iget-boolean v1, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    invoke-virtual {p0, v1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 1751
    :cond_5d
    :goto_5d
    monitor-exit v0

    .line 1752
    return-void

    .line 1751
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_5f

    throw v1
.end method


# virtual methods
.method public final whitelist addCallbackBuffer([B)V
    .registers 3

    .line 1074
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1075
    return-void
.end method

.method public final greylist addRawImageCallbackBuffer([B)V
    .registers 3

    .line 1118
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 1119
    return-void
.end method

.method public final whitelist autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .registers 3

    .line 1339
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1340
    :try_start_3
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1341
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 1342
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    .line 1343
    return-void

    .line 1341
    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final whitelist cancelAutoFocus()V
    .registers 3

    .line 1359
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1360
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1361
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_11

    .line 1362
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 1378
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    .line 1379
    return-void

    .line 1361
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final greylist-max-o disableShutterSound()Z
    .registers 2

    .line 1697
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v0

    return v0
.end method

.method public final whitelist enableShutterSound(Z)Z
    .registers 7

    .line 1652
    nop

    .line 1653
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1654
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 1656
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_d
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_15

    if-eqz v0, :cond_14

    .line 1657
    move v2, v1

    .line 1661
    :cond_14
    goto :goto_1d

    .line 1659
    :catch_15
    move-exception v0

    .line 1660
    const-string v0, "Camera"

    const-string v3, "Audio service is unavailable for queries"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    :goto_1d
    if-nez p1, :cond_22

    if-nez v2, :cond_22

    .line 1663
    return v1

    .line 1665
    :cond_22
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1666
    :try_start_25
    iput-boolean p1, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    .line 1669
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v3

    .line 1670
    if-eqz p1, :cond_3d

    iget-boolean p1, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    if-nez p1, :cond_3d

    .line 1671
    const-string p1, "Camera"

    const-string v4, "Shutter sound is not allowed by AppOpsManager"

    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    if-eqz v2, :cond_3d

    .line 1673
    invoke-direct {p0, v1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    .line 1676
    :cond_3d
    monitor-exit v0

    return v3

    .line 1677
    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 692
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 693
    return-void
.end method

.method public final native blacklist getAudioRestriction()I
.end method

.method public whitelist getParameters()Landroid/hardware/Camera$Parameters;
    .registers 3

    .line 2094
    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera-IA;)V

    .line 2095
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 2096
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2097
    return-object v0
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
    .registers 2

    .line 712
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 714
    invoke-direct {p0}, Landroid/hardware/Camera;->releaseAppOps()V

    .line 715
    return-void
.end method

.method public final native blacklist setAudioRestriction(I)V
.end method

.method public whitelist setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .registers 2

    .line 1414
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1415
    iget-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    .line 1416
    return-void
.end method

.method public final greylist-max-o setDetailedErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .registers 2

    .line 2053
    iput-object p1, p0, Landroid/hardware/Camera;->mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 2054
    return-void
.end method

.method public final native whitelist setDisplayOrientation(I)V
.end method

.method public final whitelist setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .registers 2

    .line 2035
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 2036
    return-void
.end method

.method public final whitelist setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .registers 2

    .line 1817
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 1818
    return-void
.end method

.method public final whitelist setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4

    .line 990
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 991
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 992
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 993
    if-eqz p1, :cond_c

    .line 994
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 996
    :cond_c
    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 997
    return-void
.end method

.method public whitelist setParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 6

    .line 2070
    iget-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    if-eqz v0, :cond_25

    .line 2071
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2072
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2073
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_1d

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne v0, v1, :cond_1d

    goto :goto_25

    .line 2075
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change preview size while a preview allocation is configured."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2080
    :cond_25
    :goto_25
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 2081
    return-void
.end method

.method public final whitelist setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 3

    .line 962
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 963
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 964
    iput-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 965
    if-eqz p1, :cond_b

    .line 966
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 970
    :cond_b
    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    move p1, v0

    :goto_10
    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 971
    return-void
.end method

.method public final whitelist setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4

    .line 1030
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 1031
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 1032
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 1033
    if-eqz p1, :cond_c

    .line 1034
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1036
    :cond_c
    if-eqz p1, :cond_f

    move v0, v1

    :cond_f
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 1037
    return-void
.end method

.method public final whitelist setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    if-eqz p1, :cond_a

    .line 803
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_e

    .line 805
    :cond_a
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    .line 807
    :goto_e
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

    .line 1787
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 1788
    return-void
.end method

.method public final whitelist startFaceDetection()V
    .registers 3

    .line 1853
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-nez v0, :cond_c

    .line 1856
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 1857
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1858
    return-void

    .line 1854
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

    .line 1866
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 1867
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1868
    return-void
.end method

.method public final whitelist stopPreview()V
    .registers 3

    .line 920
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 921
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 924
    iput-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 925
    iput-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 926
    iput-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 927
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 928
    :try_start_12
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 929
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_18

    .line 930
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 931
    return-void

    .line 929
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

    .line 1469
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1470
    return-void
.end method

.method public final whitelist takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .registers 5

    .line 1507
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 1508
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1509
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1510
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1513
    nop

    .line 1514
    iget-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    const/4 p2, 0x0

    if-eqz p1, :cond_10

    .line 1515
    const/4 p1, 0x2

    goto :goto_11

    .line 1514
    :cond_10
    move p1, p2

    .line 1517
    :goto_11
    iget-object p3, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz p3, :cond_17

    .line 1518
    or-int/lit16 p1, p1, 0x80

    .line 1520
    :cond_17
    iget-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz p3, :cond_1d

    .line 1521
    or-int/lit8 p1, p1, 0x40

    .line 1523
    :cond_1d
    iget-object p3, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz p3, :cond_23

    .line 1524
    or-int/lit16 p1, p1, 0x100

    .line 1527
    :cond_23
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 1528
    iput-boolean p2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1529
    return-void
.end method

.method public final native whitelist unlock()V
.end method
