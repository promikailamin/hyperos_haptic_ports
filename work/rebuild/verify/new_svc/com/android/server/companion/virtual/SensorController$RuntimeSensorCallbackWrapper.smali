.class public final Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;
.super Ljava/lang/Object;
.source "SensorController.java"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;


# instance fields
.field public mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

.field public final synthetic this$0:Lcom/android/server/companion/virtual/SensorController;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/SensorController;Landroid/companion/virtual/sensor/IVirtualSensorCallback;)V
    .registers 3

    .line 251
    iput-object p1, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p2, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(IZII)I
    .registers 9

    .line 258
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    const/16 v1, -0x16

    const-string v2, "SensorController"

    if-nez v0, :cond_1d

    .line 259
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No sensor callback configured for sensor handle "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 262
    :cond_1d
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v0}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVdmInternal(Lcom/android/server/companion/virtual/SensorController;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 263
    const-string p0, "Virtual Device Manager is not enabled."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 266
    :cond_2b
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v0}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVdmInternal(Lcom/android/server/companion/virtual/SensorController;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v3}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVirtualDeviceId(Lcom/android/server/companion/virtual/SensorController;)I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getVirtualSensor(II)Landroid/companion/virtual/sensor/VirtualSensor;

    move-result-object v0

    if-nez v0, :cond_60

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No sensor found for deviceId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {p0}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVirtualDeviceId(Lcom/android/server/companion/virtual/SensorController;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and sensor handle="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 273
    :cond_60
    :try_start_60
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    invoke-interface {p0, v0, p2, p3, p4}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onConfigurationChanged(Landroid/companion/virtual/sensor/VirtualSensor;ZII)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_65} :catch_67

    const/4 p0, 0x0

    return p0

    :catch_67
    move-exception p0

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to call sensor callback: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x80000000

    return p0
.end method

.method public onDirectChannelConfigured(III)I
    .registers 8

    .line 325
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    const/16 v1, -0x16

    const-string v2, "SensorController"

    if-nez v0, :cond_e

    .line 326
    const-string p0, "No runtime sensor callback configured."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 329
    :cond_e
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v0}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVdmInternal(Lcom/android/server/companion/virtual/SensorController;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 330
    const-string p0, "Virtual Device Manager is not enabled."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 333
    :cond_1c
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v0}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVdmInternal(Lcom/android/server/companion/virtual/SensorController;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v3}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVirtualDeviceId(Lcom/android/server/companion/virtual/SensorController;)I

    move-result v3

    invoke-virtual {v0, v3, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getVirtualSensor(II)Landroid/companion/virtual/sensor/VirtualSensor;

    move-result-object v0

    if-nez v0, :cond_51

    .line 335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No sensor found for deviceId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {p0}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVirtualDeviceId(Lcom/android/server/companion/virtual/SensorController;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and sensor handle="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 340
    :cond_51
    :try_start_51
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    invoke-interface {p0, p1, v0, p3, p2}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onDirectChannelConfigured(ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_56} :catch_5b

    if-nez p3, :cond_5a

    const/4 p0, 0x0

    return p0

    :cond_5a
    return p2

    :catch_5b
    move-exception p0

    .line 342
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to call sensor callback: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x80000000

    return p0
.end method

.method public onDirectChannelCreated(Landroid/os/ParcelFileDescriptor;)I
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    const/16 v1, -0x16

    const-string v2, "SensorController"

    if-nez v0, :cond_23

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No sensor callback for virtual deviceId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {p0}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVirtualDeviceId(Lcom/android/server/companion/virtual/SensorController;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_23
    if-nez p1, :cond_2b

    .line 288
    const-string p0, "Received invalid ParcelFileDescriptor"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 294
    :cond_2b
    :try_start_2b
    invoke-static {p1}, Landroid/os/SharedMemory;->fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    move-result-object p1
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2f} :catch_55

    .line 299
    invoke-static {}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$sfgetsNextDirectChannelHandle()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 301
    :try_start_37
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    invoke-interface {p0, v0, p1}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onDirectChannelCreated(ILandroid/os/SharedMemory;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    return v0

    :catch_3d
    move-exception p0

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to call sensor callback: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x80000000

    return p0

    :catch_55
    move-exception p0

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create shared memory: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onDirectChannelDestroyed(I)V
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    const-string v1, "SensorController"

    if-nez v0, :cond_21

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No sensor callback for virtual deviceId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {p0}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVirtualDeviceId(Lcom/android/server/companion/virtual/SensorController;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 316
    :cond_21
    :try_start_21
    invoke-interface {v0, p1}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onDirectChannelDestroyed(I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to call sensor callback: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
