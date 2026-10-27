.class public final synthetic Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ObjLongConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/virtual/camera/ICaptureResultConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/virtual/camera/ICaptureResultConsumer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda10;->f$0:Landroid/companion/virtual/camera/ICaptureResultConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;J)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda10;->f$0:Landroid/companion/virtual/camera/ICaptureResultConsumer;

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0, p1, p2, p3}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$convertToFrameworkCaptureResultConsumer$11(Landroid/companion/virtual/camera/ICaptureResultConsumer;Landroid/hardware/camera2/CaptureResult;J)V

    return-void
.end method
