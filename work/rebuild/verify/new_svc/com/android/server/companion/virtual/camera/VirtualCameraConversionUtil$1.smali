.class public Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;
.super Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub;
.source "VirtualCameraConversionUtil.java"


# instance fields
.field public final synthetic val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;


# direct methods
.method public constructor <init>(Landroid/companion/virtual/camera/IVirtualCameraCallback;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    invoke-direct {p0}, Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureSession(Landroid/companion/virtualcamera/VirtualCameraMetadata;Landroid/companion/virtualcamera/ICaptureResultConsumer;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 93
    invoke-static {p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->-$$Nest$smconvertToCaptureRequest(Landroid/companion/virtualcamera/VirtualCameraMetadata;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 96
    :goto_8
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 97
    invoke-static {p2}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->-$$Nest$smconvertToVdmCaptureResultConsumer(Landroid/companion/virtualcamera/ICaptureResultConsumer;)Landroid/companion/virtual/camera/ICaptureResultConsumer;

    move-result-object p2

    .line 96
    invoke-interface {p0, p1, p2}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->onConfigureSession(Landroid/hardware/camera2/CaptureRequest;Landroid/companion/virtual/camera/ICaptureResultConsumer;)V

    return-void
.end method

.method public onOpenCamera()V
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    invoke-interface {p0}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->onOpenCamera()V

    return-void
.end method

.method public onProcessCaptureRequest(IILandroid/companion/virtualcamera/VirtualCameraMetadata;)V
    .registers 6

    if-eqz p3, :cond_7

    .line 113
    invoke-static {p3}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->-$$Nest$smconvertToCaptureRequest(Landroid/companion/virtualcamera/VirtualCameraMetadata;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    goto :goto_8

    :cond_7
    const/4 p3, 0x0

    .line 116
    :goto_8
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    int-to-long v0, p2

    invoke-interface {p0, p1, v0, v1, p3}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->onProcessCaptureRequest(IJLandroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public onStreamClosed(I)V
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    invoke-interface {p0, p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->onStreamClosed(I)V

    return-void
.end method

.method public onStreamConfigured(ILandroid/view/Surface;III)V
    .registers 6

    .line 103
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 104
    invoke-static {p5}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->-$$Nest$smconvertToJavaFormat(I)I

    move-result p5

    .line 103
    invoke-interface/range {p0 .. p5}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->onStreamConfigured(ILandroid/view/Surface;III)V

    return-void
.end method
