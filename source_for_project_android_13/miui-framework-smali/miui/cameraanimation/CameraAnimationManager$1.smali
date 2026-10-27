.class Lmiui/cameraanimation/CameraAnimationManager$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "CameraAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cameraanimation/CameraAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/cameraanimation/CameraAnimationManager;


# direct methods
.method constructor blacklist <init>(Lmiui/cameraanimation/CameraAnimationManager;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/cameraanimation/CameraAnimationManager;

    .line 74
    iput-object p1, p0, Lmiui/cameraanimation/CameraAnimationManager$1;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCameraAvailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 77
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    .local v0, "id":I
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$1;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fgetmFrontCameraID(Lmiui/cameraanimation/CameraAnimationManager;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 80
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$1;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$mstopCameraAnimation(Lmiui/cameraanimation/CameraAnimationManager;)V

    .line 82
    :cond_20
    return-void
.end method

.method public whitelist onCameraUnavailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 86
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    .local v0, "id":I
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$1;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fgetmFrontCameraID(Lmiui/cameraanimation/CameraAnimationManager;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$1;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fgetmLastUnavailableCameraId(Lmiui/cameraanimation/CameraAnimationManager;)I

    move-result v1

    if-eq v1, v0, :cond_28

    .line 89
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$1;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$mstartCameraAnimation(Lmiui/cameraanimation/CameraAnimationManager;)V

    .line 91
    :cond_28
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$1;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1, v0}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fputmLastUnavailableCameraId(Lmiui/cameraanimation/CameraAnimationManager;I)V

    .line 92
    return-void
.end method
