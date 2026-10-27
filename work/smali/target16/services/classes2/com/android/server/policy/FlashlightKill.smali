.class public Lcom/android/server/policy/FlashlightKill;
.super Ljava/lang/Object;
.source "FlashlightKill.java"


# static fields
.field public static isTorchOn:Z

.field private static registered:Z

.field public static torchCameraId:Ljava/lang/String;


# direct methods
.method private static ensure(Landroid/content/Context;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/policy/FlashlightKill;->registered:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/FlashlightKill;->registered:Z

    :try_start_7
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/policy/FlashlightKill$TorchState;

    invoke-direct {v1}, Lcom/android/server/policy/FlashlightKill$TorchState;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    :try_end_20
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    return-void
.end method

.method public static onPowerKeyDown(Landroid/content/Context;)V
    .registers 5

    invoke-static {p0}, Lcom/android/server/policy/FlashlightKill;->ensure(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/server/policy/FlashlightKill;->isTorchOn:Z

    if-eqz v0, :cond_29

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Lcom/android/server/policy/FlashlightKill;->torchCameraId:Ljava/lang/String;

    if-eqz v0, :cond_29

    const-string v1, "camera"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    :try_start_22
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/policy/FlashlightKill;->isTorchOn:Z
    :try_end_29
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_22 .. :try_end_29} :catch_29

    :catch_29
    :cond_29
    return-void
.end method
