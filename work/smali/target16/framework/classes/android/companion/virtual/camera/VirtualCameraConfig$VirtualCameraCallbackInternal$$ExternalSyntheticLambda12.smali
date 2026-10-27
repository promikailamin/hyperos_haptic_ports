.class public final synthetic Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:J

.field public final synthetic blacklist f$3:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJLandroid/hardware/camera2/CaptureRequest;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda12;->f$0:Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;

    iput p2, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda12;->f$1:I

    iput-wide p3, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda12;->f$2:J

    iput-object p5, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda12;->f$3:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda12;->f$0:Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;

    iget v1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda12;->f$1:I

    iget-wide v2, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda12;->f$2:J

    iget-object v4, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda12;->f$3:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->$r8$lambda$3iNbx8vbYOTfH14JSxHZ3vhtdTc(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJLandroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method
