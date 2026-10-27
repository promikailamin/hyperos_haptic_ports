.class public Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$2;
.super Landroid/companion/virtual/camera/ICaptureResultConsumer$Stub;
.source "VirtualCameraConversionUtil.java"


# instance fields
.field public final synthetic val$serviceCaptureResultConsumer:Landroid/companion/virtualcamera/ICaptureResultConsumer;


# direct methods
.method public constructor <init>(Landroid/companion/virtualcamera/ICaptureResultConsumer;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$2;->val$serviceCaptureResultConsumer:Landroid/companion/virtualcamera/ICaptureResultConsumer;

    invoke-direct {p0}, Landroid/companion/virtual/camera/ICaptureResultConsumer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptCaptureResult(JLandroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 4

    .line 221
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$2;->val$serviceCaptureResultConsumer:Landroid/companion/virtualcamera/ICaptureResultConsumer;

    .line 222
    invoke-static {p3}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->-$$Nest$smconvertToVirtualCameraMetadata(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/companion/virtualcamera/VirtualCameraMetadata;

    move-result-object p3

    .line 221
    invoke-interface {p0, p1, p2, p3}, Landroid/companion/virtualcamera/ICaptureResultConsumer;->acceptCaptureResult(JLandroid/companion/virtualcamera/VirtualCameraMetadata;)V

    return-void
.end method
