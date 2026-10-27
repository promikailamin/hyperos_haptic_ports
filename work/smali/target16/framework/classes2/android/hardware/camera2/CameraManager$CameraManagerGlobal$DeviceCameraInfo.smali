.class final Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceCameraInfo"
.end annotation


# instance fields
.field private final blacklist mCameraId:Ljava/lang/String;

.field private final blacklist mDeviceId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mDeviceId:I

    return p0
.end method

.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3568
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    .line 3569
    iput p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mDeviceId:I

    .line 3570
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 3574
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 3575
    return v0

    .line 3577
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 3580
    :cond_12
    check-cast p1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3581
    iget v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mDeviceId:I

    iget v3, p1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mDeviceId:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    .line 3578
    :cond_27
    :goto_27
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 3586
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->mDeviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
