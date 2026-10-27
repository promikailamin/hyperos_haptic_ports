.class Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "IFAASecureCamera2API.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->createCameraSessionCommon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;


# direct methods
.method constructor blacklist <init>(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    .line 334
    iput-object p1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.StateCallback::onActive - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->-$$Nest$fgetcameraId_(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method public whitelist onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.StateCallback::onClosed - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->-$$Nest$fgetcameraId_(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSessionClosedLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 345
    return-void
.end method

.method public whitelist onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.StateCallback::onConfigureFailed - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->-$$Nest$fgetcameraId_(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 351
    return-void
.end method

.method public whitelist onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 7
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.StateCallback::onConfigured - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-static {v2}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->-$$Nest$fgetcameraId_(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IFAASecureCamera2API"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_2c

    .line 359
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 360
    return-void

    .line 364
    :cond_2c
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iput-object p1, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    .line 366
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    new-instance v3, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2$1;

    invoke-direct {v3, p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2$1;-><init>(Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;)V

    iput-object v3, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureCallback_:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->-$$Nest$fgetcameraId_(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " capture session is ready!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :try_start_59
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v1, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureBuilder_:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v3, v3, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureCallback_:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-virtual {v4}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_72
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_59 .. :try_end_72} :catch_73

    .line 421
    goto :goto_9a

    .line 418
    :catch_73
    move-exception v0

    .line 419
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureCamera2API::CameraCaptureSession.StateCallback:onConfigured - Camera #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-static {v3}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->-$$Nest$fgetcameraId_(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - setRepeatingRequest failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_9a
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 423
    return-void
.end method

.method public whitelist onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.StateCallback::onReady - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->-$$Nest$fgetcameraId_(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void
.end method

.method public whitelist onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .registers 5
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.StateCallback::onSurfacePrepared - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->-$$Nest$fgetcameraId_(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method
