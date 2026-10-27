.class public interface abstract Landroid/companion/virtualcamera/IVirtualCameraCallback;
.super Ljava/lang/Object;
.source "IVirtualCameraCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onConfigureSession(Landroid/companion/virtualcamera/VirtualCameraMetadata;Landroid/companion/virtualcamera/ICaptureResultConsumer;)V
.end method

.method public abstract onOpenCamera()V
.end method

.method public abstract onProcessCaptureRequest(IILandroid/companion/virtualcamera/VirtualCameraMetadata;)V
.end method

.method public abstract onStreamClosed(I)V
.end method

.method public abstract onStreamConfigured(ILandroid/view/Surface;III)V
.end method
