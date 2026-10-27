.class public Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;
.super Landroid/os/Handler;
.source "SecCamServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;,
        Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;
    }
.end annotation


# static fields
.field public static final blacklist DESTINATION_MLVM:Ljava/lang/Integer;

.field public static final blacklist DESTINATION_QTEE:Ljava/lang/Integer;

.field public static final blacklist HAL1:Ljava/lang/Integer;

.field public static final blacklist HAL3:Ljava/lang/Integer;

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SECCAM-SERVICE-CLIENT"

.field private static final blacklist MSG_DATA_CAMERAID:Ljava/lang/String; = "cameraId"

.field private static final blacklist MSG_DATA_CSURFACEID:Ljava/lang/String; = "cSurfaceId"

.field private static final blacklist MSG_DATA_FORMAT:Ljava/lang/String; = "format"

.field private static final blacklist MSG_DATA_FRAMENUMBER:Ljava/lang/String; = "frameNumber"

.field private static final blacklist MSG_DATA_HEIGHT:Ljava/lang/String; = "height"

.field private static final blacklist MSG_DATA_NUMOFBUFFERS:Ljava/lang/String; = "numOfBuffers"

.field private static final blacklist MSG_DATA_PSURFACE:Ljava/lang/String; = "PSURFACE"

.field private static final blacklist MSG_DATA_RESULT:Ljava/lang/String; = "result"

.field private static final blacklist MSG_DATA_RETURNPARAMS:Ljava/lang/String; = "returnParams"

.field private static final blacklist MSG_DATA_RETURNPARAMSSIZE:Ljava/lang/String; = "returnParamsSize"

.field private static final blacklist MSG_DATA_ROTATION:Ljava/lang/String; = "rotation"

.field private static final blacklist MSG_DATA_STRIDE:Ljava/lang/String; = "stride"

.field private static final blacklist MSG_DATA_SURFACEID:Ljava/lang/String; = "surfaceId"

.field private static final blacklist MSG_DATA_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static final blacklist MSG_DATA_TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field private static final blacklist MSG_DATA_WIDTH:Ljava/lang/String; = "width"

.field private static final blacklist MSG_ENABLE_FRAME_CALLBACK:I = 0x3ed

.field private static final blacklist MSG_FRAME_CALLBACK:I = 0x3ee

.field private static final blacklist MSG_GET_CAPTURE_SURFACE:I = 0x3e9

.field private static final blacklist MSG_RELEASE_CAPTURE_SURFACE:I = 0x3eb

.field private static final blacklist MSG_RELEASE_PREVIEW_SURFACE:I = 0x3ec

.field private static final blacklist MSG_REPLAY_TIMEOUT:I = 0x2

.field private static final blacklist MSG_SET_PREVIEW_SURFACE:I = 0x3ea

.field private static final blacklist MSG_SEVICE_VERSION:I = 0x3e8

.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "SecCamService"

.field private static final blacklist SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.qualcomm.qti.seccamservice"

.field private static final blacklist SERVICE_READY_TIMEOUT:I = 0x2

.field private static blacklist handlerThread_:Landroid/os/HandlerThread;

.field private static blacklist instance_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;


# instance fields
.field private final blacklist accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist activityMessenger_:Landroid/os/Messenger;

.field private blacklist bundServiceMessenger_:Landroid/os/Messenger;

.field private blacklist callback_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

.field private blacklist captureSurface_:Landroid/view/Surface;

.field private blacklist context_:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist frameCallbacks_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

.field private blacklist result_:Z

.field private blacklist serviceConnected_:Z

.field private blacklist serviceConnecting_:Z

.field private blacklist serviceConnection_:Landroid/content/ServiceConnection;

.field private blacklist serviceDisonnecting_:Z

.field private blacklist serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

.field private blacklist serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

.field private blacklist surfaceId_:Ljava/lang/Long;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcallback_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->callback_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetserviceReadyLatch_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputbundServiceMessenger_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputserviceConnected_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnected_:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputserviceConnecting_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnecting_:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputserviceDisonnecting_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceDisonnecting_:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 69
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->HAL1:Ljava/lang/Integer;

    .line 70
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->HAL3:Ljava/lang/Integer;

    .line 73
    sput-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->DESTINATION_QTEE:Ljava/lang/Integer;

    .line 74
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->DESTINATION_MLVM:Ljava/lang/Integer;

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->instance_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    .line 109
    sput-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->handlerThread_:Landroid/os/HandlerThread;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 115
    sget-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->handlerThread_:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->callback_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnected_:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnecting_:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceDisonnecting_:Z

    .line 98
    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    .line 100
    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->captureSurface_:Landroid/view/Surface;

    .line 102
    iput-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    .line 104
    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 105
    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 108
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    .line 110
    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->frameCallbacks_:Ljava/util/HashMap;

    .line 111
    new-instance v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    invoke-direct {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;-><init>()V

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    .line 510
    new-instance v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;

    invoke-direct {v0, p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;-><init>(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)V

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnection_:Landroid/content/ServiceConnection;

    .line 116
    return-void
.end method

.method public static blacklist getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;
    .registers 3

    .line 120
    sget-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->instance_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    if-nez v0, :cond_18

    .line 121
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, -0x2

    const-string v2, "SecCamServiceClientThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->handlerThread_:Landroid/os/HandlerThread;

    .line 122
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-direct {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;-><init>()V

    sput-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->instance_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    .line 125
    :cond_18
    sget-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->instance_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    return-object v0
.end method

.method public static blacklist getMinSupportedHAL()Ljava/lang/Integer;
    .registers 1

    .line 130
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getMinSupportedHAL(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMinSupportedHAL(Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 6
    .param p0, "cameraId"    # Ljava/lang/Integer;

    .line 135
    sget-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->HAL3:Ljava/lang/Integer;

    .line 137
    .local v0, "minHAL":Ljava/lang/Integer;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Landroid/hardware/Camera;->openLegacy(II)Landroid/hardware/Camera;

    move-result-object v1

    .line 138
    .local v1, "camera":Landroid/hardware/Camera;
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 139
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    const-string v3, "secure-mode"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "param":Ljava/lang/String;
    if-eqz v3, :cond_1b

    .line 141
    sget-object v4, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->HAL1:Ljava/lang/Integer;

    move-object v0, v4

    .line 143
    :cond_1b
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1f

    .line 147
    .end local v1    # "camera":Landroid/hardware/Camera;
    .end local v2    # "params":Landroid/hardware/Camera$Parameters;
    .end local v3    # "param":Ljava/lang/String;
    goto :goto_42

    .line 145
    :catch_1f
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinSupportedHAL - HAL1 probe failed (Camera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "),"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SECCAM-SERVICE-CLIENT"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_42
    return-object v0
.end method


# virtual methods
.method public blacklist dispatchVendorCommand(ILandroid/os/Bundle;)V
    .registers 10
    .param p1, "commandId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 476
    const-string v0, "dispatchVendorCommand - ERROR: "

    const-string v1, "SECCAM-SERVICE-CLIENT"

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 477
    invoke-virtual {p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->isSeviceConnected()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 479
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send MSG: dispatchVendorCommand "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 481
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->what:I

    .line 482
    if-eqz p2, :cond_30

    .line 483
    invoke-virtual {v2, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 485
    :cond_30
    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 486
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 487
    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_41} :catch_72

    .line 489
    :try_start_41
    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 490
    const-string v3, "dispatchVendorCommand - ERROR: timeout!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    goto :goto_71

    .line 493
    :cond_53
    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_58} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_58} :catch_72

    .line 494
    return-void

    .line 496
    :catch_59
    move-exception v3

    .line 497
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_5a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_71} :catch_72

    .line 504
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :goto_71
    goto :goto_8a

    .line 501
    :catch_72
    move-exception v2

    .line 502
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 506
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 507
    return-void
.end method

.method public blacklist enableFrameCallback(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;I)Z
    .registers 12
    .param p1, "captureSurface"    # Lcom/android/qualcomm/qti/seccamapi/SecureSurface;
    .param p2, "callback"    # Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;
    .param p3, "returnParamsSize"    # I

    .line 428
    const-string v0, "enableFrameCallback - ERROR: "

    const-string v1, "SECCAM-SERVICE-CLIENT"

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 429
    invoke-virtual {p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->isSeviceConnected()Z

    move-result v2

    if-eqz v2, :cond_e4

    if-eqz p1, :cond_e4

    .line 430
    invoke-virtual {p1}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->getCaptureSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_e4

    if-eqz p2, :cond_e4

    .line 433
    :try_start_19
    const-string v2, "Send MSG: enableFrameCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 435
    .local v2, "out_bundle":Landroid/os/Bundle;
    const-string v3, "timeout"

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    const-string v3, "cSurfaceId"

    invoke-virtual {p1}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->getCaptureSurfaceId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 437
    const-string v3, "returnParamsSize"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 439
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0x3ed

    iput v4, v3, Landroid/os/Message;->what:I

    .line 440
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 441
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    iput-object v4, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 442
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 443
    iput-boolean v5, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    .line 444
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_5a} :catch_cc

    .line 446
    :try_start_5a
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 447
    const-string v4, "enableFrameCallback - ERROR: timeout!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    goto :goto_cb

    .line 450
    :cond_6c
    iget-boolean v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    if-eqz v4, :cond_93

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableFrameCallback - Register callback, surfaceId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 452
    invoke-virtual {p1}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->getCaptureSurfaceId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 451
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->frameCallbacks_:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->getCaptureSurfaceId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_93
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableFrameCallback return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-boolean v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z
    :try_end_b2
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_b2} :catch_b3
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_b2} :catch_cc

    return v0

    .line 459
    :catch_b3
    move-exception v4

    .line 460
    .local v4, "ex":Ljava/lang/InterruptedException;
    :try_start_b4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_cb} :catch_cc

    .line 467
    .end local v2    # "out_bundle":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "ex":Ljava/lang/InterruptedException;
    :goto_cb
    goto :goto_e4

    .line 464
    :catch_cc
    move-exception v2

    .line 465
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 469
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_e4
    :goto_e4
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSecureCameraSurface(IIIII)Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;
    .registers 22
    .param p1, "cameraId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I
    .param p5, "numOfBuffers"    # I

    .line 229
    move-object/from16 v1, p0

    const-string v2, "getSecureCameraSurface - ERROR: "

    const-string v3, "SECCAM-SERVICE-CLIENT"

    iget-object v0, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->isSeviceConnected()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_d8

    .line 232
    :try_start_12
    const-string v0, "Send MSG: getSecureCameraSurface"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    .line 234
    .local v5, "out_bundle":Landroid/os/Bundle;
    const-string v0, "cameraId"
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1f} :catch_b5

    move/from16 v6, p1

    :try_start_21
    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    const-string v0, "width"
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_b3

    move/from16 v7, p2

    :try_start_28
    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v0, "height"
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_b1

    move/from16 v8, p3

    :try_start_2f
    invoke-virtual {v5, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const-string v0, "format"
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_34} :catch_af

    move/from16 v9, p4

    :try_start_36
    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    const-string v0, "numOfBuffers"
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_ad

    move/from16 v10, p5

    :try_start_3d
    invoke-virtual {v5, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    move-object v11, v0

    .line 240
    .local v11, "msg":Landroid/os/Message;
    const/16 v0, 0x3e9

    iput v0, v11, Landroid/os/Message;->what:I

    .line 241
    invoke-virtual {v11, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 242
    iget-object v0, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    iput-object v0, v11, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 243
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v12, 0x1

    invoke-direct {v0, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 244
    iput-object v4, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->captureSurface_:Landroid/view/Surface;

    .line 245
    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->surfaceId_:Ljava/lang/Long;

    .line 246
    iget-object v0, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    invoke-virtual {v0, v11}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_67} :catch_ab

    .line 248
    :try_start_67
    iget-object v0, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v14, 0x2

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v14, v15, v12}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 249
    const-string v0, "getSecureCameraSurface - ERROR: tmeout!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    goto :goto_aa

    .line 252
    :cond_79
    new-instance v0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    iget-object v12, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->captureSurface_:Landroid/view/Surface;

    iget-object v13, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->surfaceId_:Ljava/lang/Long;

    invoke-direct {v0, v12, v13}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;-><init>(Landroid/view/Surface;Ljava/lang/Long;)V

    .line 254
    .local v0, "surfaceInfo":Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;
    iput-object v4, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->captureSurface_:Landroid/view/Surface;

    .line 255
    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->surfaceId_:Ljava/lang/Long;

    .line 256
    iget-object v12, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_91} :catch_92
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_91} :catch_ab

    .line 257
    return-object v0

    .line 259
    .end local v0    # "surfaceInfo":Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;
    :catch_92
    move-exception v0

    .line 260
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_93
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_aa} :catch_ab

    .line 267
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    .end local v5    # "out_bundle":Landroid/os/Bundle;
    .end local v11    # "msg":Landroid/os/Message;
    :goto_aa
    goto :goto_e2

    .line 264
    :catch_ab
    move-exception v0

    goto :goto_c0

    :catch_ad
    move-exception v0

    goto :goto_be

    :catch_af
    move-exception v0

    goto :goto_bc

    :catch_b1
    move-exception v0

    goto :goto_ba

    :catch_b3
    move-exception v0

    goto :goto_b8

    :catch_b5
    move-exception v0

    move/from16 v6, p1

    :goto_b8
    move/from16 v7, p2

    :goto_ba
    move/from16 v8, p3

    :goto_bc
    move/from16 v9, p4

    :goto_be
    move/from16 v10, p5

    .line 265
    .local v0, "ex":Landroid/os/RemoteException;
    :goto_c0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e2

    .line 230
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_d8
    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 269
    :goto_e2
    iget-object v0, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 270
    return-object v4
.end method

.method public blacklist getServiceVersion()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;
    .registers 8

    .line 397
    const-string v0, "SECCAM-SERVICE-CLIENT"

    iget-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 398
    invoke-virtual {p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->isSeviceConnected()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_64

    .line 400
    :try_start_e
    const-string v1, "Send MSG: getServiceVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/16 v1, 0x3e8

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 402
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 403
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 404
    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2b} :catch_60

    .line 406
    :try_start_2b
    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 407
    const-string v3, "getServiceVersion - ERROR: timeout!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    goto :goto_5f

    .line 410
    :cond_3d
    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 411
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_44} :catch_45
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_44} :catch_60

    return-object v0

    .line 413
    :catch_45
    move-exception v3

    .line 414
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getServiceVersion - ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_5f} :catch_60

    .line 419
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :goto_5f
    goto :goto_64

    .line 417
    :catch_60
    move-exception v0

    .line 418
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 421
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 422
    return-object v2
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 539
    const-string v0, "SECCAM-SERVICE-CLIENT"

    const-string v1, "handleMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "surfaceId"

    const-string v3, "result"

    packed-switch v1, :pswitch_data_1fa

    .line 611
    new-instance v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceVendorClient;

    invoke-direct {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceVendorClient;-><init>()V

    .line 612
    .local v0, "vendorClient":Lcom/android/qualcomm/qti/seccamapi/SecCamServiceVendorClient;
    invoke-static {p1}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceVendorClient;->handleVendorMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_1f8

    .line 613
    iget-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1f8

    .line 586
    .end local v0    # "vendorClient":Lcom/android/qualcomm/qti/seccamapi/SecCamServiceVendorClient;
    :pswitch_22
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 587
    .local v1, "in_bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 589
    .local v3, "result":Z
    if-eqz v3, :cond_1f8

    .line 590
    new-instance v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;

    invoke-direct {v4}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;-><init>()V

    .line 591
    .local v4, "frameInfo":Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 592
    .local v5, "surfaceId":J
    const-string v2, "frameNumber"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->frameNumber_:J

    .line 593
    const-string v2, "timeStamp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->timeStamp_:J

    .line 594
    const-string v2, "width"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->width_:I

    .line 595
    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->height_:I

    .line 596
    const-string v2, "stride"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->stride_:I

    .line 597
    const-string v2, "format"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->format_:I

    .line 598
    const-string v2, "returnParams"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 599
    .local v2, "returnParams":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage - MSG_FRAME_CALLBACK: SurfaceId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FrameId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->frameNumber_:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->frameCallbacks_:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;

    .line 602
    .local v0, "callback":Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;
    if-eqz v0, :cond_9e

    .line 603
    invoke-interface {v0, v4, v2}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;->onSecureFrameAvalable(Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;[B)V

    .line 605
    .end local v0    # "callback":Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;
    .end local v2    # "returnParams":[B
    .end local v4    # "frameInfo":Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;
    .end local v5    # "surfaceId":J
    :cond_9e
    goto/16 :goto_1f8

    .line 579
    .end local v1    # "in_bundle":Landroid/os/Bundle;
    .end local v3    # "result":Z
    :pswitch_a0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 580
    .restart local v1    # "in_bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage - 1005:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 583
    goto/16 :goto_1f8

    .line 572
    .end local v1    # "in_bundle":Landroid/os/Bundle;
    :pswitch_c9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 573
    .restart local v1    # "in_bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 576
    goto/16 :goto_1f8

    .line 557
    .end local v1    # "in_bundle":Landroid/os/Bundle;
    :pswitch_100
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 558
    .restart local v1    # "in_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 559
    const-string v3, "SURFACE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 560
    .local v3, "parcelable":Landroid/os/Parcelable;
    instance-of v4, v3, Landroid/view/Surface;

    if-eqz v4, :cond_150

    .line 561
    move-object v4, v3

    check-cast v4, Landroid/view/Surface;

    iput-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->captureSurface_:Landroid/view/Surface;

    .line 562
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->surfaceId_:Ljava/lang/Long;

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage - MSG_GET_CAPTURE_SURFACE:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->captureSurface_:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", surfaceId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->surfaceId_:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_150
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 567
    goto/16 :goto_1f8

    .line 542
    .end local v1    # "in_bundle":Landroid/os/Bundle;
    .end local v3    # "parcelable":Landroid/os/Parcelable;
    :pswitch_157
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 543
    .restart local v1    # "in_bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    const-string v3, "svc_ver_maj"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->serviceVerMaj_:I

    .line 544
    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    const-string v3, "svc_ver_min"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->serviceVerMin_:I

    .line 545
    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    const-string v3, "jni_ver_maj"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->jniVerMaj_:I

    .line 546
    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    const-string v3, "jni_ver_min"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->jniVerMin_:I

    .line 547
    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    const-string v3, "ta_ver_maj"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->taVerMaj_:I

    .line 548
    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    const-string v3, "ta_ver_min"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->taVerMin_:I

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage - MSG_SEVICE_VERSION:SVC: v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    iget v3, v3, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->serviceVerMaj_:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    iget v4, v4, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->serviceVerMin_:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", JNI: v"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    iget v4, v4, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->jniVerMaj_:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    iget v4, v4, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->jniVerMin_:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", TA: v"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    iget v4, v4, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->taVerMaj_:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    iget v3, v3, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->taVerMin_:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 617
    .end local v1    # "in_bundle":Landroid/os/Bundle;
    :cond_1f8
    :goto_1f8
    return-void

    nop

    :pswitch_data_1fa
    .packed-switch 0x3e8
        :pswitch_157
        :pswitch_100
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_a0
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist isSeviceConnected()Z
    .registers 7

    .line 211
    const-string v0, "SECCAM-SERVICE-CLIENT"

    iget-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnecting_:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceDisonnecting_:Z

    if-eqz v1, :cond_1e

    .line 213
    :cond_a
    const/4 v1, 0x0

    :try_start_b
    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 214
    const-string v2, "isSeviceConnected - ERROR: tmeout!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_1c} :catch_21

    .line 215
    return v1

    .line 221
    :cond_1d
    nop

    .line 223
    :cond_1e
    iget-boolean v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnected_:Z

    return v0

    .line 217
    :catch_21
    move-exception v2

    .line 218
    .local v2, "ex":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSeviceConnected - ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 220
    return v1
.end method

.method public blacklist release()V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 195
    iget-boolean v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnected_:Z

    if-eqz v0, :cond_3f

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qualcomm.qti.seccamservice.SecCamService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.qti.seccamservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceDisonnecting_:Z

    .line 199
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 200
    const-string v1, "SECCAM-SERVICE-CLIENT"

    const-string v2, "unbindService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->context_:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnection_:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 202
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnected_:Z

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->context_:Ljava/lang/ref/WeakReference;

    .line 204
    iput-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->callback_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    .line 206
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3f
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 207
    return-void
.end method

.method public blacklist releaseCaptureSurface(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;)Z
    .registers 10
    .param p1, "secureSurface"    # Lcom/android/qualcomm/qti/seccamapi/SecureSurface;

    .line 320
    const-string v0, "releaseCaptureSurface - ERROR: "

    const-string v1, "SECCAM-SERVICE-CLIENT"

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 321
    invoke-virtual {p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->isSeviceConnected()Z

    move-result v2

    if-eqz v2, :cond_af

    if-eqz p1, :cond_af

    .line 322
    invoke-virtual {p1}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->getCaptureSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_af

    .line 324
    :try_start_17
    const-string v2, "Send MSG: releaseCaptureSurface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v2, "out_bundle":Landroid/os/Bundle;
    const-string v3, "cSurfaceId"

    invoke-virtual {p1}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->getCaptureSurfaceId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 327
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 328
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0x3eb

    iput v4, v3, Landroid/os/Message;->what:I

    .line 329
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 330
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    iput-object v4, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 331
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 332
    iput-boolean v5, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    .line 333
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_4c} :catch_97

    .line 335
    :try_start_4c
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 336
    const-string v4, "releaseCaptureSurface - ERROR: timeout!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    goto :goto_96

    .line 339
    :cond_5e
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseCaptureSurface - return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-boolean v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z
    :try_end_7d
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_7d} :catch_7e
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_7d} :catch_97

    return v0

    .line 343
    :catch_7e
    move-exception v4

    .line 344
    .local v4, "ex":Ljava/lang/InterruptedException;
    :try_start_7f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_96} :catch_97

    .line 351
    .end local v2    # "out_bundle":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "ex":Ljava/lang/InterruptedException;
    :goto_96
    goto :goto_af

    .line 348
    :catch_97
    move-exception v2

    .line 349
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 353
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_af
    :goto_af
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist releasePreviewSurface(Landroid/view/Surface;Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;)Z
    .registers 11
    .param p1, "previewSurface"    # Landroid/view/Surface;
    .param p2, "captureSurfaceInfo"    # Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    .line 359
    const-string v0, "releasePreviewSurface - ERROR: "

    const-string v1, "SECCAM-SERVICE-CLIENT"

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 360
    invoke-virtual {p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->isSeviceConnected()Z

    move-result v2

    if-eqz v2, :cond_98

    if-eqz p2, :cond_98

    if-eqz p1, :cond_98

    .line 362
    :try_start_13
    const-string v2, "Send MSG: releasePreviewSurface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 364
    .local v2, "out_bundle":Landroid/os/Bundle;
    const-string v3, "PSURFACE"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 365
    const-string v3, "cSurfaceId"

    invoke-virtual {p2}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->getSurfaceId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 366
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 367
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0x3ec

    iput v4, v3, Landroid/os/Message;->what:I

    .line 368
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 369
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    iput-object v4, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 370
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 371
    iput-boolean v5, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    .line 372
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4d} :catch_80

    .line 374
    :try_start_4d
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 375
    const-string v4, "releasePreviewSurface - ERROR: timeout!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    goto :goto_7f

    .line 378
    :cond_5f
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 379
    iget-boolean v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_66} :catch_67
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_66} :catch_80

    return v0

    .line 381
    :catch_67
    move-exception v4

    .line 382
    .local v4, "ex":Ljava/lang/InterruptedException;
    :try_start_68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_7f} :catch_80

    .line 389
    .end local v2    # "out_bundle":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "ex":Ljava/lang/InterruptedException;
    :goto_7f
    goto :goto_98

    .line 386
    :catch_80
    move-exception v2

    .line 387
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 391
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_98
    :goto_98
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSecurePreviewSurface(Landroid/view/Surface;Lcom/android/qualcomm/qti/seccamapi/SecureSurface;IIIII)Z
    .registers 16
    .param p1, "previewSurface"    # Landroid/view/Surface;
    .param p2, "captureSurface"    # Lcom/android/qualcomm/qti/seccamapi/SecureSurface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I
    .param p6, "rotation"    # I
    .param p7, "numOfBuffers"    # I

    .line 276
    const-string v0, "setSecurePreviewSurface - ERROR: "

    const-string v1, "SECCAM-SERVICE-CLIENT"

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 277
    invoke-virtual {p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->isSeviceConnected()Z

    move-result v2

    if-eqz v2, :cond_b1

    if-eqz p1, :cond_b1

    if-eqz p2, :cond_b1

    .line 280
    :try_start_13
    const-string v2, "Send MSG: setSecurePreviewSurface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v2, "out_bundle":Landroid/os/Bundle;
    const-string v3, "PSURFACE"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 283
    const-string v3, "cSurfaceId"

    invoke-virtual {p2}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->getCaptureSurfaceId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 284
    const-string v3, "width"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v3, "height"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    const-string v3, "format"

    invoke-virtual {v2, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    const-string v3, "rotation"

    invoke-virtual {v2, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    const-string v3, "numOfBuffers"

    invoke-virtual {v2, v3, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 290
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0x3ea

    iput v4, v3, Landroid/os/Message;->what:I

    .line 291
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 292
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    iput-object v4, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 293
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 294
    iput-boolean v5, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    .line 295
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_66} :catch_99

    .line 297
    :try_start_66
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_78

    .line 298
    const-string v4, "setSecurePreviewSurface - ERROR: timeout!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    goto :goto_98

    .line 301
    :cond_78
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 302
    iget-boolean v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z
    :try_end_7f
    .catch Ljava/lang/InterruptedException; {:try_start_66 .. :try_end_7f} :catch_80
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_7f} :catch_99

    return v0

    .line 304
    :catch_80
    move-exception v4

    .line 305
    .local v4, "ex":Ljava/lang/InterruptedException;
    :try_start_81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_98} :catch_99

    .line 312
    .end local v2    # "out_bundle":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "ex":Ljava/lang/InterruptedException;
    :goto_98
    goto :goto_b1

    .line 309
    :catch_99
    move-exception v2

    .line 310
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 314
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_b1
    :goto_b1
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;)Z
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    .line 154
    sget-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->DESTINATION_QTEE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public blacklist start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;Ljava/lang/String;I)Z
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;
    .param p3, "taName"    # Ljava/lang/String;
    .param p4, "taBufferSize"    # I

    .line 159
    sget-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->DESTINATION_QTEE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public blacklist start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;Ljava/lang/String;II)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;
    .param p3, "taName"    # Ljava/lang/String;
    .param p4, "taBufferSize"    # I
    .param p5, "destination"    # I

    .line 165
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 166
    iget-boolean v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnected_:Z

    const/4 v1, 0x1

    if-nez v0, :cond_80

    .line 167
    iput-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnecting_:Z

    .line 168
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->frameCallbacks_:Ljava/util/HashMap;

    .line 170
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->context_:Ljava/lang/ref/WeakReference;

    .line 171
    iput-object p2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->callback_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    .line 172
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.qualcomm.qti.seccamservice.SecCamService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.qualcomm.qti.seccamservice"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v2, "SECCAM-SERVICE-CLIENT"

    if-eqz p3, :cond_6a

    .line 177
    const-string v3, "TANAME"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v3, "TABUFFERSIZE"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v3, "DESTINATION"

    invoke-virtual {v0, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start service, TA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DESTINATION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 183
    :cond_6a
    const-string v3, "Start service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_6f
    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->context_:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 188
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_80
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 189
    return v1
.end method
