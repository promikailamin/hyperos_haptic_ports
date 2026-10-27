.class Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "IFAASecureCamera2API.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/face/IFAASecureCamera2API;
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

    .line 97
    iput-object p1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraDevice.StateCallback::onClosed - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->-$$Nest$fgetcameraId_(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    .line 124
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 125
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStopedLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 126
    return-void
.end method

.method public whitelist onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraDevice.StateCallback::onDisconnected - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->-$$Nest$fgetcameraId_(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 111
    return-void
.end method

.method public whitelist onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 5
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraDevice.StateCallback::onError - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->-$$Nest$fgetcameraId_(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 118
    return-void
.end method

.method public whitelist onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraDevice.StateCallback::onOpened - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->-$$Nest$fgetcameraId_(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iput-object p1, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    .line 104
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-virtual {v0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->createCameraSessionCommon()V

    .line 105
    return-void
.end method
