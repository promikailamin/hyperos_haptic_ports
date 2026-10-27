.class public interface abstract Landroid/companion/virtual/camera/VirtualCameraCallback;
.super Ljava/lang/Object;
.source "VirtualCameraCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public whitelist onConfigureSession(Landroid/companion/virtual/camera/VirtualCameraSessionConfig;Ljava/util/function/ObjLongConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/companion/virtual/camera/VirtualCameraSessionConfig;",
            "Ljava/util/function/ObjLongConsumer<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;)V"
        }
    .end annotation

    .line 78
    return-void
.end method

.method public whitelist onOpenCamera()V
    .registers 1

    .line 57
    return-void
.end method

.method public whitelist onProcessCaptureRequest(IJ)V
    .registers 4

    .line 115
    return-void
.end method

.method public whitelist onProcessCaptureRequest(IJLandroid/hardware/camera2/CaptureRequest;)V
    .registers 5

    .line 142
    return-void
.end method

.method public abstract whitelist onStreamClosed(I)V
.end method

.method public abstract whitelist onStreamConfigured(ILandroid/view/Surface;III)V
.end method
