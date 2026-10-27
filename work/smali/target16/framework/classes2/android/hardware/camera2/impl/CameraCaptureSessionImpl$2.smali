.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;
.super Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
.source "CameraCaptureSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mActive:Z

.field private blacklist mBusy:Z

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

.field final synthetic blacklist val$interfaceLock:Ljava/lang/Object;

.field final synthetic blacklist val$session:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 818
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$interfaceLock:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;-><init>()V

    .line 819
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    .line 820
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    return-void
.end method


# virtual methods
.method public blacklist onActive(Landroid/hardware/camera2/CameraDevice;)V
    .registers 3

    .line 841
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmIdleDrainer(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskStarted()V

    .line 842
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    .line 845
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmStateCallback(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 846
    return-void
.end method

.method public blacklist onBusy(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    .line 888
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    .line 894
    return-void
.end method

.method public whitelist onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    .line 830
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V

    .line 831
    return-void
.end method

.method public whitelist onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 4

    .line 836
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmIdString(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "Got device error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraCaptureSession"

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-void
.end method

.method public blacklist onIdle(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4

    .line 853
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$interfaceLock:Ljava/lang/Object;

    monitor-enter p1

    .line 854
    :try_start_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmAborting(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z

    move-result v0

    .line 855
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_44

    .line 868
    iget-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_27

    if-eqz v0, :cond_27

    .line 869
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmAbortDrainer(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    .line 871
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$interfaceLock:Ljava/lang/Object;

    monitor-enter p1

    .line 872
    :try_start_1d
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fputmAborting(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Z)V

    .line 873
    monitor-exit p1

    goto :goto_27

    :catchall_24
    move-exception v0

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_24

    throw v0

    .line 876
    :cond_27
    :goto_27
    iget-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    if-eqz p1, :cond_34

    .line 877
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmIdleDrainer(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    .line 880
    :cond_34
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mBusy:Z

    .line 881
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->mActive:Z

    .line 883
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmStateCallback(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 884
    return-void

    .line 855
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit p1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public whitelist onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 3

    .line 824
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Camera must already be open before creating a session"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public blacklist onRequestQueueEmpty()V
    .registers 3

    .line 904
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmStateCallback(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 905
    return-void
.end method

.method public blacklist onSurfacePrepared(Landroid/view/Surface;)V
    .registers 4

    .line 910
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmStateCallback(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    .line 911
    return-void
.end method

.method public blacklist onUnconfigured(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    .line 899
    return-void
.end method
