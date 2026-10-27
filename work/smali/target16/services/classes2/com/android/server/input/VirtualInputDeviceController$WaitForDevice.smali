.class public Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;
.super Ljava/lang/Object;
.source "VirtualInputDeviceController.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mDeviceName:Ljava/lang/String;

.field public mInputDeviceId:I

.field public final mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field public final synthetic this$0:Lcom/android/server/input/VirtualInputDeviceController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeviceAddedLatch(Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmInputDeviceId(Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->mInputDeviceId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 16

    .line 775
    iput-object p1, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->this$0:Lcom/android/server/input/VirtualInputDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, -0x2

    .line 772
    iput v0, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->mInputDeviceId:I

    .line 776
    iput-object p3, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->mDeviceName:Ljava/lang/String;

    .line 777
    new-instance v1, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice$1;-><init>(Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;Lcom/android/server/input/VirtualInputDeviceController;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v1, v2, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 820
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object p0

    invoke-static {v3}, Lcom/android/server/input/VirtualInputDeviceController;->-$$Nest$fgetmHandler(Lcom/android/server/input/VirtualInputDeviceController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/hardware/input/InputManagerGlobal;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 851
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerGlobal;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method

.method public waitForDeviceCreation()I
    .registers 6

    .line 831
    const-string v0, " to be created."

    :try_start_2
    iget-object v1, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_c} :catch_53

    if-eqz v1, :cond_37

    .line 841
    iget v0, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->mInputDeviceId:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_14

    return v0

    .line 842
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Virtual input device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was created with an invalid id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->mInputDeviceId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_37
    :try_start_37
    new-instance v1, Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timed out waiting for virtual input device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_53} :catch_53

    :catch_53
    move-exception v1

    .line 837
    new-instance v2, Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupted while waiting for virtual input device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$WaitForDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lcom/android/server/input/VirtualInputDeviceController$DeviceCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
