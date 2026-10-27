.class Lcom/android/server/policy/FlashlightKill$TorchState;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "FlashlightKill.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .registers 3

    sput-boolean p2, Lcom/android/server/policy/FlashlightKill;->isTorchOn:Z

    if-eqz p2, :cond_6

    sput-object p1, Lcom/android/server/policy/FlashlightKill;->torchCameraId:Ljava/lang/String;

    :cond_6
    return-void
.end method
