.class Lcom/android/server/companion/virtual/InputController$WaitForDevice;
.super Ljava/lang/Object;
.source "InputController.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/InputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitForDevice"
.end annotation


# instance fields
.field private final mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field final synthetic this$0:Lcom/android/server/companion/virtual/InputController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceAddedLatch(Lcom/android/server/companion/virtual/InputController$WaitForDevice;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;II)V
    .registers 13
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I

    .line 517
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->this$0:Lcom/android/server/companion/virtual/InputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 518
    new-instance v0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;-><init>(Lcom/android/server/companion/virtual/InputController$WaitForDevice;Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 544
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$fgetmHandler(Lcom/android/server/companion/virtual/InputController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 545
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 562
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 563
    return-void
.end method

.method waitForDeviceCreation()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/companion/virtual/InputController$DeviceCreationException;
        }
    .end annotation

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 557
    nop

    .line 558
    return-void

    .line 551
    :cond_e
    new-instance v0, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    const-string v1, "Timed out waiting for virtual device to be created."

    invoke-direct {v0, v1}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    throw v0
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_16} :catch_16

    .line 554
    .restart local p0    # "this":Lcom/android/server/companion/virtual/InputController$WaitForDevice;
    :catch_16
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    const-string v2, "Interrupted while waiting for virtual device to be created."

    invoke-direct {v1, v2, v0}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
