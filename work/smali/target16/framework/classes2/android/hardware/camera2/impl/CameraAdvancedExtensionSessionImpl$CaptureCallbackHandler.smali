.class final Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraAdvancedExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaptureCallbackHandler"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/extension/IRequestCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 951
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 952
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    .line 953
    return-void
.end method


# virtual methods
.method public whitelist onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 8

    .line 959
    const-string p1, "CameraAdvancedExtensionSessionImpl"

    :try_start_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2a

    .line 960
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 961
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraConfigMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;

    move-result-object v1

    .line 962
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/extension/CameraOutputConfig;

    iget-object p3, p3, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget p3, p3, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    .line 961
    invoke-interface {v0, p2, p4, p5, p3}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureBufferLost(IJI)V

    .line 963
    goto :goto_2f

    .line 964
    :cond_2a
    const-string p2, "Invalid capture request tag!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2f} :catch_30

    .line 969
    :goto_2f
    goto :goto_36

    .line 966
    :catch_30
    move-exception p2

    .line 967
    const-string p2, "Failed to notify lost capture buffer, extension service doesn\'t respond!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :goto_36
    return-void
.end method

.method public whitelist onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 5

    .line 976
    const-string p1, "CameraAdvancedExtensionSessionImpl"

    :try_start_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    .line 977
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 978
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$sminitializeParcelable(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureCompleted(ILandroid/hardware/camera2/extension/ParcelTotalCaptureResult;)V

    .line 979
    goto :goto_23

    .line 980
    :cond_1e
    const-string p2, "Invalid capture request tag!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_23} :catch_24

    .line 985
    :goto_23
    goto :goto_2a

    .line 982
    :catch_24
    move-exception p2

    .line 983
    const-string p2, "Failed to notify capture result, extension service doesn\'t respond!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :goto_2a
    return-void
.end method

.method public whitelist onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 8

    .line 992
    const-string p1, "CameraAdvancedExtensionSessionImpl"

    :try_start_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_44

    .line 993
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 994
    new-instance v1, Landroid/hardware/camera2/extension/CaptureFailure;

    invoke-direct {v1}, Landroid/hardware/camera2/extension/CaptureFailure;-><init>()V

    .line 996
    iput-object p2, v1, Landroid/hardware/camera2/extension/CaptureFailure;->request:Landroid/hardware/camera2/CaptureRequest;

    .line 997
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    iput p2, v1, Landroid/hardware/camera2/extension/CaptureFailure;->reason:I

    .line 998
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Landroid/hardware/camera2/extension/CaptureFailure;->errorPhysicalCameraId:Ljava/lang/String;

    .line 999
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/camera2/extension/CaptureFailure;->frameNumber:J

    .line 1000
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result p2

    iput p2, v1, Landroid/hardware/camera2/extension/CaptureFailure;->sequenceId:I

    .line 1001
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->wasImageCaptured()Z

    move-result p2

    if-nez p2, :cond_37

    const/4 p2, 0x1

    goto :goto_38

    :cond_37
    const/4 p2, 0x0

    :goto_38
    iput-boolean p2, v1, Landroid/hardware/camera2/extension/CaptureFailure;->dropped:Z

    .line 1002
    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p2, p3, v1}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureFailed(ILandroid/hardware/camera2/extension/CaptureFailure;)V

    .line 1003
    goto :goto_49

    .line 1004
    :cond_44
    const-string p2, "Invalid capture request tag!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_49} :catch_4a

    .line 1009
    :goto_49
    goto :goto_50

    .line 1006
    :catch_4a
    move-exception p2

    .line 1007
    const-string p2, "Failed to notify capture failure, extension service doesn\'t respond!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :goto_50
    return-void
.end method

.method public whitelist onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 5

    .line 1016
    const-string p1, "CameraAdvancedExtensionSessionImpl"

    :try_start_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    .line 1017
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 1018
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$sminitializeParcelable(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/extension/ParcelCaptureResult;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureProgressed(ILandroid/hardware/camera2/extension/ParcelCaptureResult;)V

    .line 1019
    goto :goto_23

    .line 1020
    :cond_1e
    const-string p2, "Invalid capture request tag!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_23} :catch_24

    .line 1025
    :goto_23
    goto :goto_2a

    .line 1022
    :catch_24
    move-exception p2

    .line 1023
    const-string p2, "Failed to notify capture partial result, extension service doesn\'t respond!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :goto_2a
    return-void
.end method

.method public whitelist onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .registers 3

    .line 1031
    :try_start_0
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-interface {p1, p2}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureSequenceAborted(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1035
    goto :goto_e

    .line 1032
    :catch_6
    move-exception p1

    .line 1033
    const-string p1, "CameraAdvancedExtensionSessionImpl"

    const-string p2, "Failed to notify aborted sequence, extension service doesn\'t respond!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :goto_e
    return-void
.end method

.method public whitelist onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 5

    .line 1042
    :try_start_0
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-interface {p1, p2, p3, p4}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureSequenceCompleted(IJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1046
    goto :goto_e

    .line 1043
    :catch_6
    move-exception p1

    .line 1044
    const-string p1, "CameraAdvancedExtensionSessionImpl"

    const-string p2, "Failed to notify sequence complete, extension service doesn\'t respond!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :goto_e
    return-void
.end method

.method public whitelist onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 13

    .line 1053
    const-string p1, "CameraAdvancedExtensionSessionImpl"

    :try_start_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    .line 1054
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 1055
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-wide v4, p3

    move-wide v2, p5

    invoke-interface/range {v0 .. v5}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureStarted(IJJ)V

    .line 1056
    goto :goto_21

    .line 1057
    :cond_1c
    const-string p2, "Invalid capture request tag!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_21} :catch_22

    .line 1062
    :goto_21
    goto :goto_28

    .line 1059
    :catch_22
    move-exception v0

    .line 1060
    const-string p2, "Failed to notify capture started, extension service doesn\'t respond!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :goto_28
    return-void
.end method
