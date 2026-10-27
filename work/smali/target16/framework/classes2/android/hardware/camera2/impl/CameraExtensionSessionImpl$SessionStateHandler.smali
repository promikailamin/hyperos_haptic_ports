.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionStateHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1015
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    return-void
.end method


# virtual methods
.method public whitelist onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3

    .line 1019
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->release(Z)V

    .line 1020
    return-void
.end method

.method public whitelist onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    .line 1024
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    .line 1025
    return-void
.end method

.method public whitelist onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4

    .line 1029
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1030
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fputmCaptureSession(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 1032
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmStatsAggregator(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->commit(Z)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_38

    .line 1034
    :try_start_14
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mfinishPipelineInitialization(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    .line 1035
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmInitializeHandler(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    move-result-object p1

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmExtensionType(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_28} :catch_29
    .catchall {:try_start_14 .. :try_end_28} :catchall_38

    .line 1041
    goto :goto_36

    .line 1037
    :catch_29
    move-exception p1

    .line 1038
    :try_start_2a
    const-string p1, "CameraExtensionSessionImpl"

    const-string v1, "Failed to initialize session! Extension service does not respond!"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    .line 1042
    :goto_36
    monitor-exit v0

    .line 1043
    return-void

    .line 1042
    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_38

    throw p1
.end method
