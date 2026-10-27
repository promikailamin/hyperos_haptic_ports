.class public Lcom/android/server/camera/CameraServiceProxy;
.super Lcom/android/server/SystemService;
.source "CameraServiceProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;,
        Lcom/android/server/camera/CameraServiceProxy$TaskInfo;,
        Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;,
        Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;,
        Lcom/android/server/camera/CameraServiceProxy$DeviceStateFlags;
    }
.end annotation


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final CAMERA_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "media.camera.proxy"

.field private static final DEBUG:Z = false

.field public static final DISABLE_POLLING_FLAGS:I = 0x1000

.field public static final ENABLE_POLLING_FLAGS:I = 0x0

.field private static final MAX_PREVIEW_FPS:F = 60.0f

.field private static final MAX_STREAM_STATISTICS:I = 0x5

.field private static final MAX_USAGE_HISTORY:I = 0x14

.field private static final MIN_PREVIEW_FPS:F = 30.0f

.field private static final MSG_NOTIFY_DEVICE_STATE:I = 0x2

.field private static final MSG_SWITCH_USER:I = 0x1

.field private static final NFC_NOTIFICATION_PROP:Ljava/lang/String; = "ro.camera.notify_nfc"

.field private static final NFC_SERVICE_BINDER_NAME:Ljava/lang/String; = "nfc"

.field public static final OVERRIDE_CAMERA_RESIZABLE_AND_SDK_CHECK:J = 0xb6a427eL

.field public static final OVERRIDE_CAMERA_ROTATE_AND_CROP_DEFAULTS:J = 0xb476b84L

.field private static final RETRY_DELAY_TIME:I = 0x14

.field private static final RETRY_TIMES:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "CameraService_proxy"

.field private static final nfcInterfaceToken:Landroid/os/IBinder;


# instance fields
.field private final mActiveCameraUsage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

.field private mCameraServiceRaw:Landroid/hardware/ICameraService;

.field private final mCameraUsageHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeviceState:I

.field private final mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

.field private mEnabledCameraUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastReportedDeviceState:I

.field private mLastUser:I

.field private final mLock:Ljava/lang/Object;

.field private mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final mNotifyNfc:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/camera/CameraServiceProxy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnabledCameraUsers(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastUser(Lcom/android/server/camera/CameraServiceProxy;)I
    .registers 1

    iget p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCameraServiceRawLocked(Lcom/android/server/camera/CameraServiceProxy;)Landroid/hardware/ICameraService;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyDeviceStateWithRetries(Lcom/android/server/camera/CameraServiceProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetries(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySwitchWithRetries(Lcom/android/server/camera/CameraServiceProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyUsbDeviceHotplugLocked(Lcom/android/server/camera/CameraServiceProxy;Landroid/hardware/usb/UsbDevice;Z)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/camera/CameraServiceProxy;->notifyUsbDeviceHotplugLocked(Landroid/hardware/usb/UsbDevice;Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mswitchUserLocked(Lcom/android/server/camera/CameraServiceProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateActivityCount(Lcom/android/server/camera/CameraServiceProxy;Landroid/hardware/CameraSessionStats;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->updateActivityCount(Landroid/hardware/CameraSessionStats;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smcameraFacingToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraFacingToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcameraStateToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 220
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 604
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 215
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 329
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;-><init>(Lcom/android/server/camera/CameraServiceProxy;Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener-IA;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    .line 340
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$1;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 470
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$2;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$2;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    .line 605
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 606
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v2, "CameraService_proxy"

    const/4 v3, -0x4

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 607
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 608
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    .line 610
    const-string/jumbo v0, "ro.camera.notify_nfc"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_5b

    move v4, v1

    :cond_5b
    iput-boolean v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    .line 613
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 614
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 616
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance v1, Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    invoke-direct {v0, p1, v1}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 623
    return-void
.end method

.method private static cameraFacingToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "cameraFacing"    # I

    .line 1216
    packed-switch p0, :pswitch_data_10

    .line 1222
    const-string v0, "CAMERA_FACING_UNKNOWN"

    return-object v0

    .line 1219
    :pswitch_6
    const-string v0, "CAMERA_FACING_EXTERNAL"

    return-object v0

    .line 1218
    :pswitch_9
    const-string v0, "CAMERA_FACING_FRONT"

    return-object v0

    .line 1217
    :pswitch_c
    const-string v0, "CAMERA_FACING_BACK"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static cameraHistogramTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "cameraHistogramType"    # I

    .line 1226
    packed-switch p0, :pswitch_data_a

    .line 1232
    const-string v0, "HISTOGRAM_TYPE_UNKNOWN"

    return-object v0

    .line 1228
    :pswitch_6
    const-string v0, "HISTOGRAM_TYPE_CAPTURE_LATENCY"

    return-object v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method private static cameraStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "newCameraState"    # I

    .line 1205
    packed-switch p0, :pswitch_data_12

    .line 1212
    const-string v0, "CAMERA_STATE_UNKNOWN"

    return-object v0

    .line 1209
    :pswitch_6
    const-string v0, "CAMERA_STATE_CLOSED"

    return-object v0

    .line 1208
    :pswitch_9
    const-string v0, "CAMERA_STATE_IDLE"

    return-object v0

    .line 1207
    :pswitch_c
    const-string v0, "CAMERA_STATE_ACTIVE"

    return-object v0

    .line 1206
    :pswitch_f
    const-string v0, "CAMERA_STATE_OPEN"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private clearDeviceStateFlags(I)V
    .registers 5
    .param p1, "deviceStateFlags"    # I

    .line 656
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 657
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 658
    iget v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    .line 659
    iget v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastReportedDeviceState:I

    if-eq v1, v2, :cond_18

    .line 660
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    .line 662
    :cond_18
    monitor-exit v0

    .line 663
    return-void

    .line 662
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private getCameraServiceRawLocked()Landroid/hardware/ICameraService;
    .registers 6

    .line 908
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    if-nez v0, :cond_24

    .line 909
    const-string/jumbo v0, "media.camera"

    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 910
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 911
    return-object v1

    .line 914
    :cond_f
    const/4 v2, 0x0

    :try_start_10
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_1b

    .line 918
    nop

    .line 920
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    goto :goto_24

    .line 915
    :catch_1b
    move-exception v2

    .line 916
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CameraService_proxy"

    const-string v4, "Could not link to death of native camera service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return-object v1

    .line 922
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    return-object v0
.end method

.method public static getCropRotateScale(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/camera/CameraServiceProxy$TaskInfo;IIZ)I
    .registers 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskInfo"    # Lcom/android/server/camera/CameraServiceProxy$TaskInfo;
    .param p3, "displayRotation"    # I
    .param p4, "lensFacing"    # I
    .param p5, "ignoreResizableAndSdkCheck"    # Z

    .line 391
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 392
    return v0

    .line 396
    :cond_4
    const/4 v1, 0x1

    const-string v2, "CameraService_proxy"

    if-eqz p4, :cond_29

    if-eq p4, v1, :cond_29

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lensFacing="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Crop-rotate-scale is disabled."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return v0

    .line 405
    :cond_29
    if-nez p5, :cond_3b

    invoke-static {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->isMOrBelow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3b

    iget-boolean v3, p2, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isResizeable:Z

    if-eqz v3, :cond_3b

    .line 407
    const-string v1, "The activity is N or above and claims to support resizeable-activity. Crop-rotate-scale is disabled."

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return v0

    .line 413
    :cond_3b
    iget-boolean v3, p2, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    if-nez v3, :cond_49

    iget-boolean v3, p2, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    if-nez v3, :cond_49

    .line 414
    const-string v1, "Non-fixed orientation activity. Crop-rotate-scale is disabled."

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return v0

    .line 419
    :cond_49
    packed-switch p3, :pswitch_data_ac

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported display rotation: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return v0

    .line 430
    :pswitch_63
    const/16 v3, 0x10e

    .line 431
    .local v3, "rotationDegree":I
    goto :goto_6e

    .line 427
    .end local v3    # "rotationDegree":I
    :pswitch_66
    const/16 v3, 0xb4

    .line 428
    .restart local v3    # "rotationDegree":I
    goto :goto_6e

    .line 424
    .end local v3    # "rotationDegree":I
    :pswitch_69
    const/16 v3, 0x5a

    .line 425
    .restart local v3    # "rotationDegree":I
    goto :goto_6e

    .line 421
    .end local v3    # "rotationDegree":I
    :pswitch_6c
    const/4 v3, 0x0

    .line 422
    .restart local v3    # "rotationDegree":I
    nop

    .line 437
    :goto_6e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display.getRotation()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isFixedOrientationPortrait="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p2, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isFixedOrientationLandscape="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p2, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-nez v3, :cond_9f

    .line 450
    return v0

    .line 452
    :cond_9f
    if-nez p4, :cond_a3

    .line 454
    rsub-int v3, v3, 0x168

    .line 457
    :cond_a3
    sparse-switch v3, :sswitch_data_b8

    .line 466
    return v0

    .line 461
    :sswitch_a7
    const/4 v0, 0x3

    return v0

    .line 463
    :sswitch_a9
    const/4 v0, 0x2

    return v0

    .line 459
    :sswitch_ab
    return v1

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
    .end packed-switch

    :sswitch_data_b8
    .sparse-switch
        0x5a -> :sswitch_ab
        0xb4 -> :sswitch_a9
        0x10e -> :sswitch_a7
    .end sparse-switch
.end method

.method private getEnabledUserHandles(I)Ljava/util/Set;
    .registers 8
    .param p1, "currentUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 937
    .local v0, "userProfiles":[I
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 939
    .local v1, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1c

    aget v4, v0, v3

    .line 940
    .local v4, "id":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 939
    .end local v4    # "id":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 943
    :cond_1c
    return-object v1
.end method

.method private getMinFps(Landroid/hardware/CameraSessionStats;)F
    .registers 5
    .param p1, "cameraState"    # Landroid/hardware/CameraSessionStats;

    .line 1050
    invoke-virtual {p1}, Landroid/hardware/CameraSessionStats;->getMaxPreviewFps()F

    move-result v0

    .line 1051
    .local v0, "maxFps":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method private static isMOrBelow(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 377
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_13

    const/16 v2, 0x17

    if-gt v1, v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 379
    :catch_13
    move-exception v1

    .line 380
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "CameraService_proxy"

    const-string v3, "Package name not found!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private notifyCameraserverLocked(ILjava/util/Set;)Z
    .registers 9
    .param p1, "eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 970
    .local p2, "updatedUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 971
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    const/4 v1, 0x0

    const-string v2, "CameraService_proxy"

    if-nez v0, :cond_f

    .line 972
    const-string v3, "Could not notify cameraserver, camera service not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return v1

    .line 977
    :cond_f
    :try_start_f
    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    invoke-static {p2}, Lcom/android/server/camera/CameraServiceProxy;->toArray(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-interface {v3, p1, v4}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_1b

    .line 982
    nop

    .line 983
    const/4 v1, 0x1

    return v1

    .line 978
    :catch_1b
    move-exception v3

    .line 979
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not notify cameraserver, remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return v1
.end method

.method private notifyDeviceStateChangeLocked(I)Z
    .registers 8
    .param p1, "deviceState"    # I

    .line 1006
    invoke-direct {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 1007
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    const/4 v1, 0x0

    const-string v2, "CameraService_proxy"

    if-nez v0, :cond_f

    .line 1008
    const-string v3, "Could not notify cameraserver, camera service not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return v1

    .line 1013
    :cond_f
    :try_start_f
    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    int-to-long v4, p1

    invoke-interface {v3, v4, v5}, Landroid/hardware/ICameraService;->notifyDeviceStateChange(J)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_1a

    .line 1018
    nop

    .line 1019
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastReportedDeviceState:I

    .line 1020
    const/4 v1, 0x1

    return v1

    .line 1014
    :catch_1a
    move-exception v3

    .line 1015
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not notify cameraserver, remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return v1
.end method

.method private notifyDeviceStateWithRetries(I)V
    .registers 4
    .param p1, "retries"    # I

    .line 987
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 988
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    .line 989
    monitor-exit v0

    .line 990
    return-void

    .line 989
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private notifyDeviceStateWithRetriesLocked(I)V
    .registers 7
    .param p1, "retries"    # I

    .line 993
    iget v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateChangeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 994
    return-void

    .line 996
    :cond_9
    if-gtz p1, :cond_c

    .line 997
    return-void

    .line 999
    :cond_c
    const-string v0, "CameraService_proxy"

    const-string v1, "Could not notify camera service of device state change, retrying..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1002
    return-void
.end method

.method private notifyNfcService(Z)V
    .registers 9
    .param p1, "enablePolling"    # Z

    .line 1179
    const-string/jumbo v0, "nfc"

    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1180
    .local v0, "nfcServiceBinder":Landroid/os/IBinder;
    const-string v1, "CameraService_proxy"

    if-nez v0, :cond_11

    .line 1181
    const-string v2, "Could not connect to NFC service to notify it of camera state"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return-void

    .line 1184
    :cond_11
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v2

    .line 1185
    .local v2, "nfcAdapterRaw":Landroid/nfc/INfcAdapter;
    if-eqz p1, :cond_19

    const/4 v3, 0x0

    goto :goto_1b

    :cond_19
    const/16 v3, 0x1000

    .line 1188
    .local v3, "flags":I
    :goto_1b
    :try_start_1b
    sget-object v4, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5, v3, v5}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    .line 1191
    goto :goto_39

    .line 1189
    :catch_22
    move-exception v4

    .line 1190
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not notify NFC service, remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_39
    return-void
.end method

.method private notifySwitchWithRetries(I)V
    .registers 4
    .param p1, "retries"    # I

    .line 947
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 949
    monitor-exit v0

    .line 950
    return-void

    .line 949
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private notifySwitchWithRetriesLocked(I)V
    .registers 7
    .param p1, "retries"    # I

    .line 953
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v0, :cond_5

    .line 954
    return-void

    .line 956
    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyCameraserverLocked(ILjava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 957
    const/4 p1, 0x0

    .line 959
    :cond_d
    if-gtz p1, :cond_10

    .line 960
    return-void

    .line 962
    :cond_10
    const-string v0, "CameraService_proxy"

    const-string v2, "Could not notify camera service of user switch, retrying..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 965
    return-void
.end method

.method private notifyUsbDeviceHotplugLocked(Landroid/hardware/usb/UsbDevice;Z)Z
    .registers 11
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "attached"    # Z

    .line 1025
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasVideoCapture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 1029
    invoke-direct {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 1030
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    const-string v2, "CameraService_proxy"

    if-nez v0, :cond_15

    .line 1031
    const-string v3, "Could not notify cameraserver, camera service not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    return v1

    .line 1036
    :cond_15
    if-eqz p2, :cond_19

    const/4 v3, 0x2

    goto :goto_1a

    .line 1037
    :cond_19
    const/4 v3, 0x3

    :goto_1a
    nop

    .line 1038
    .local v3, "eventType":I
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    const/4 v5, 0x1

    new-array v6, v5, [I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v7

    aput v7, v6, v1

    invoke-interface {v4, v3, v6}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_29} :catch_2b

    .line 1043
    .end local v3    # "eventType":I
    nop

    .line 1044
    return v5

    .line 1039
    :catch_2b
    move-exception v3

    .line 1040
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not notify cameraserver, remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    return v1

    .line 1046
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_43
    return v1
.end method

.method private setDeviceStateFlags(I)V
    .registers 5
    .param p1, "deviceStateFlags"    # I

    .line 636
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 638
    iget v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    .line 639
    iget v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastReportedDeviceState:I

    if-eq v1, v2, :cond_17

    .line 640
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    .line 642
    :cond_17
    monitor-exit v0

    .line 643
    return-void

    .line 642
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private switchUserLocked(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 926
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->getEnabledUserHandles(I)Ljava/util/Set;

    move-result-object v0

    .line 927
    .local v0, "currentUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    .line 928
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-eqz v1, :cond_10

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 930
    :cond_10
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    .line 931
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 933
    :cond_17
    return-void
.end method

.method private static toArray(Ljava/util/Collection;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1195
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1196
    .local v0, "len":I
    new-array v1, v0, [I

    .line 1197
    .local v1, "ret":[I
    const/4 v2, 0x0

    .line 1198
    .local v2, "idx":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1199
    .local v4, "i":Ljava/lang/Integer;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "idx":I
    .local v5, "idx":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2

    .line 1200
    .end local v4    # "i":Ljava/lang/Integer;
    move v2, v5

    goto :goto_b

    .line 1201
    .end local v5    # "idx":I
    .restart local v2    # "idx":I
    :cond_21
    return-object v1
.end method

.method private updateActivityCount(Landroid/hardware/CameraSessionStats;)V
    .registers 42
    .param p1, "cameraState"    # Landroid/hardware/CameraSessionStats;

    .line 1055
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getCameraId()Ljava/lang/String;

    move-result-object v11

    .line 1056
    .local v11, "cameraId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getNewCameraState()I

    move-result v12

    .line 1057
    .local v12, "newCameraState":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getFacing()I

    move-result v13

    .line 1058
    .local v13, "facing":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getClientName()Ljava/lang/String;

    move-result-object v14

    .line 1059
    .local v14, "clientName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getApiLevel()I

    move-result v15

    .line 1060
    .local v15, "apiLevel":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->isNdk()Z

    move-result v16

    .line 1061
    .local v16, "isNdk":Z
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getSessionType()I

    move-result v17

    .line 1062
    .local v17, "sessionType":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getInternalReconfigureCount()I

    move-result v28

    .line 1063
    .local v28, "internalReconfigureCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getLatencyMs()I

    move-result v29

    .line 1064
    .local v29, "latencyMs":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getRequestCount()J

    move-result-wide v30

    .line 1065
    .local v30, "requestCount":J
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getResultErrorCount()J

    move-result-wide v32

    .line 1066
    .local v32, "resultErrorCount":J
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getDeviceErrorFlag()Z

    move-result v34

    .line 1067
    .local v34, "deviceError":Z
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getStreamStats()Ljava/util/List;

    move-result-object v35

    .line 1068
    .local v35, "streamStats":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/CameraStreamStats;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getUserTag()Ljava/lang/String;

    move-result-object v36

    .line 1069
    .local v36, "userTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getVideoStabilizationMode()I

    move-result v37

    .line 1070
    .local v37, "videoStabilizationMode":I
    iget-object v10, v1, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1072
    :try_start_41
    iget-object v0, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    .line 1073
    .local v0, "wasEmpty":Z
    packed-switch v12, :pswitch_data_1c0

    move-object/from16 v38, v10

    goto/16 :goto_1a8

    .line 1130
    :pswitch_4e
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    move-object v9, v2

    .line 1131
    .local v9, "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    if-eqz v9, :cond_9d

    .line 1133
    move-object/from16 v18, v9

    move/from16 v19, v28

    move-wide/from16 v20, v30

    move-wide/from16 v22, v32

    move/from16 v24, v34

    move-object/from16 v25, v35

    move-object/from16 v26, v36

    move/from16 v27, v37

    invoke-virtual/range {v18 .. v27}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted(IJJZLjava/util/List;Ljava/lang/String;I)V

    .line 1136
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    const/4 v2, 0x0

    .line 1141
    .local v2, "stillActivePackage":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_73
    iget-object v4, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_90

    .line 1142
    iget-object v4, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object v4, v4, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 1143
    const/4 v2, 0x1

    .line 1144
    goto :goto_90

    .line 1141
    :cond_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 1149
    .end local v3    # "i":I
    :cond_90
    :goto_90
    if-nez v2, :cond_9d

    .line 1150
    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    .line 1151
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    .line 1152
    .local v3, "wmi":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v3, v14}, Lcom/android/server/wm/WindowManagerInternal;->removeRefreshRateRangeForPackage(Ljava/lang/String;)V

    .line 1156
    .end local v2    # "stillActivePackage":Z
    .end local v3    # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    :cond_9d
    const/4 v2, 0x3

    if-ne v12, v2, :cond_be

    .line 1157
    new-instance v18, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :try_end_a2
    .catchall {:try_start_41 .. :try_end_a2} :catchall_1b9

    const/4 v8, 0x2

    move-object/from16 v2, v18

    move-object v3, v11

    move v4, v13

    move-object v5, v14

    move v6, v15

    move/from16 v7, v16

    move-object/from16 v19, v9

    .end local v9    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .local v19, "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    move/from16 v9, v29

    move-object/from16 v38, v10

    move/from16 v10, v17

    :try_start_b3
    invoke-direct/range {v2 .. v10}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIII)V

    move-object/from16 v2, v18

    .line 1161
    .local v2, "closeEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c2

    .line 1156
    .end local v2    # "closeEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v19    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .restart local v9    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :cond_be
    move-object/from16 v19, v9

    move-object/from16 v38, v10

    .line 1164
    .end local v9    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .restart local v19    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :goto_c2
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_1a8

    .line 1165
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpUsageEvents()V

    goto/16 :goto_1a8

    .line 1097
    .end local v19    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :pswitch_d1
    move-object/from16 v38, v10

    const/4 v2, 0x0

    .line 1098
    .local v2, "alreadyActivePackage":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d5
    iget-object v4, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_f4

    .line 1099
    iget-object v4, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object v4, v4, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f1

    .line 1100
    const/4 v2, 0x1

    .line 1101
    move/from16 v39, v2

    goto :goto_f6

    .line 1098
    :cond_f1
    add-int/lit8 v3, v3, 0x1

    goto :goto_d5

    :cond_f4
    move/from16 v39, v2

    .line 1106
    .end local v2    # "alreadyActivePackage":Z
    .end local v3    # "i":I
    .local v39, "alreadyActivePackage":Z
    :goto_f6
    if-nez v39, :cond_109

    .line 1107
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 1108
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 1109
    .local v2, "wmi":Lcom/android/server/wm/WindowManagerInternal;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/camera/CameraServiceProxy;->getMinFps(Landroid/hardware/CameraSessionStats;)F

    move-result v3

    .line 1110
    .local v3, "minFps":F
    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {v2, v14, v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->addRefreshRateRangeForPackage(Ljava/lang/String;FF)V

    .line 1115
    .end local v2    # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    .end local v3    # "minFps":F
    :cond_109
    new-instance v18, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    const/4 v8, 0x3

    move-object/from16 v2, v18

    move-object v3, v11

    move v4, v13

    move-object v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v9, v29

    move/from16 v10, v17

    invoke-direct/range {v2 .. v10}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIII)V

    move-object/from16 v2, v18

    .line 1119
    .local v2, "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 1120
    .local v3, "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    if-eqz v3, :cond_1a8

    .line 1121
    const-string v4, "CameraService_proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was already marked as active"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const-string v26, ""

    const/16 v27, -0x1

    move-object/from16 v18, v3

    move-object/from16 v25, v35

    invoke-virtual/range {v18 .. v27}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted(IJJZLjava/util/List;Ljava/lang/String;I)V

    .line 1125
    iget-object v4, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a8

    .line 1080
    .end local v2    # "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v3    # "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v39    # "alreadyActivePackage":Z
    :pswitch_15e
    move-object/from16 v38, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/camera/CameraServiceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object v10, v2

    .line 1081
    .local v10, "audioManager":Landroid/media/AudioManager;
    if-eqz v10, :cond_18c

    .line 1083
    if-nez v13, :cond_174

    .line 1084
    const-string v2, "back"

    goto :goto_176

    :cond_174
    const-string v2, "front"

    .line 1085
    .local v2, "facingStr":Ljava/lang/String;
    :goto_176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cameraFacing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1086
    .local v3, "facingParameter":Ljava/lang/String;
    invoke-virtual {v10, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1088
    .end local v2    # "facingStr":Ljava/lang/String;
    .end local v3    # "facingParameter":Ljava/lang/String;
    :cond_18c
    new-instance v18, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    const/4 v8, 0x1

    move-object/from16 v2, v18

    move-object v3, v11

    move v4, v13

    move-object v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v9, v29

    move-object/from16 v19, v10

    .end local v10    # "audioManager":Landroid/media/AudioManager;
    .local v19, "audioManager":Landroid/media/AudioManager;
    move/from16 v10, v17

    invoke-direct/range {v2 .. v10}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIII)V

    move-object/from16 v2, v18

    .line 1092
    .local v2, "openEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    nop

    .line 1170
    .end local v2    # "openEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v19    # "audioManager":Landroid/media/AudioManager;
    :cond_1a8
    :goto_1a8
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    .line 1171
    .local v2, "isEmpty":Z
    iget-boolean v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v3, :cond_1b7

    if-eq v0, v2, :cond_1b7

    .line 1172
    invoke-direct {v1, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 1174
    .end local v0    # "wasEmpty":Z
    .end local v2    # "isEmpty":Z
    :cond_1b7
    monitor-exit v38

    .line 1175
    return-void

    .line 1174
    :catchall_1b9
    move-exception v0

    move-object/from16 v38, v10

    :goto_1bc
    monitor-exit v38
    :try_end_1bd
    .catchall {:try_start_b3 .. :try_end_1bd} :catchall_1be

    throw v0

    :catchall_1be
    move-exception v0

    goto :goto_1bc

    :pswitch_data_1c0
    .packed-switch 0x0
        :pswitch_15e
        :pswitch_d1
        :pswitch_4e
        :pswitch_4e
    .end packed-switch
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 749
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 750
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 753
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 754
    .local v1, "wasEmpty":Z
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 756
    iget-boolean v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v2, :cond_1b

    if-nez v1, :cond_1b

    .line 757
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 759
    .end local v1    # "wasEmpty":Z
    :cond_1b
    monitor-exit v0

    .line 760
    return-void

    .line 759
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method dumpUsageEvents()V
    .registers 6

    .line 890
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 892
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 893
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v3}, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;-><init>(Lcom/android/server/camera/CameraServiceProxy;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 896
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 897
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_32

    .line 898
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 900
    .local v0, "ident":J
    :try_start_23
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2d

    .line 902
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 903
    nop

    .line 904
    return-void

    .line 902
    :catchall_2d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 903
    throw v2

    .line 897
    .end local v0    # "ident":J
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 667
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraServiceProxy error, invalid message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_proxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 672
    :pswitch_20
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetries(I)V

    .line 673
    goto :goto_2c

    .line 669
    :pswitch_26
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    .line 670
    nop

    .line 678
    :goto_2c
    const/4 v0, 0x1

    return v0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_26
        :pswitch_20
    .end packed-switch
.end method

.method synthetic lambda$new$0$com-android-server-camera-CameraServiceProxy(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "folded"    # Ljava/lang/Boolean;

    .line 617
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_b

    .line 618
    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->setDeviceStateFlags(I)V

    goto :goto_e

    .line 620
    :cond_b
    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->clearDeviceStateFlags(I)V

    .line 622
    :goto_e
    return-void
.end method

.method public onBootPhase(I)V
    .registers 6
    .param p1, "phase"    # I

    .line 706
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_47

    .line 707
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V

    .line 710
    :try_start_9
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    .line 711
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object v0

    .line 712
    .local v0, "displayIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_21

    .line 713
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;->onDisplayAdded(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_22

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 717
    .end local v0    # "displayIds":[I
    .end local v1    # "i":I
    :cond_21
    goto :goto_2a

    .line 715
    :catch_22
    move-exception v0

    .line 716
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraService_proxy"

    const-string v2, "Failed to register display window listener!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    invoke-static {}, Lcom/android/server/camera/CameraActivitySceneStub;->getInstance()Lcom/android/server/camera/CameraActivitySceneStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/camera/CameraActivitySceneStub;->initSystemBooted()V

    .line 720
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 721
    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 723
    :cond_47
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 683
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 684
    if-eqz v0, :cond_47

    .line 690
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 691
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 694
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 697
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 700
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    const-string/jumbo v2, "media.camera.proxy"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/camera/CameraServiceProxy;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 701
    const-class v1, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {p0, v1, p0}, Lcom/android/server/camera/CameraServiceProxy;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 702
    return-void

    .line 686
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UserManagerService must start before CameraServiceProxy!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 727
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 728
    :try_start_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v1, :cond_e

    .line 731
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 733
    :cond_e
    monitor-exit v0

    .line 734
    return-void

    .line 733
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 738
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    :try_start_3
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 740
    monitor-exit v0

    .line 741
    return-void

    .line 740
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
