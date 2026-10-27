.class public Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;
.super Landroid/hardware/SensorManager;
.source "InputDeviceSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputDeviceSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputSensorManager"
.end annotation


# instance fields
.field final blacklist mId:I

.field final synthetic blacklist this$0:Landroid/hardware/input/InputDeviceSensorManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/input/InputDeviceSensorManager;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 576
    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 577
    iput p2, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->mId:I

    .line 578
    return-void
.end method


# virtual methods
.method protected blacklist cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .registers 4

    .line 648
    const/4 p1, 0x1

    return p1
.end method

.method protected blacklist configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .registers 4

    .line 625
    const/4 p1, 0x0

    return p1
.end method

.method protected blacklist createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .registers 3

    .line 615
    const/4 p1, 0x0

    return-object p1
.end method

.method protected blacklist destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
    .registers 2

    .line 621
    return-void
.end method

.method protected blacklist flushImpl(Landroid/hardware/SensorEventListener;)Z
    .registers 3

    .line 609
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-static {v0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$mflushInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;)Z

    move-result p1

    return p1
.end method

.method public whitelist getDefaultSensor(I)Landroid/hardware/Sensor;
    .registers 4

    .line 582
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->mId:I

    invoke-static {v0, v1, p1}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$mgetSensorForInputDevice(Landroid/hardware/input/InputDeviceSensorManager;II)Landroid/hardware/Sensor;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getFullDynamicSensorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected blacklist getFullSensorList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->mId:I

    invoke-static {v0, v1}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$mgetFullSensorListForDevice(Landroid/hardware/input/InputDeviceSensorManager;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist initDataInjectionImpl(ZI)Z
    .registers 3

    .line 653
    const/4 p1, 0x0

    return p1
.end method

.method protected blacklist injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .registers 6

    .line 659
    const/4 p1, 0x0

    return p1
.end method

.method protected blacklist registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .registers 3

    .line 632
    return-void
.end method

.method protected blacklist registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .registers 7

    .line 598
    iget-object p6, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    move p0, p5

    move-object p5, p4

    move p4, p0

    move-object p0, p6

    invoke-static/range {p0 .. p5}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$mregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result p1

    return p1
.end method

.method protected blacklist requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 3

    .line 642
    const/4 p1, 0x1

    return p1
.end method

.method protected blacklist setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
    .registers 2

    .line 664
    const/4 p1, 0x0

    return p1
.end method

.method protected blacklist unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .registers 2

    .line 638
    return-void
.end method

.method protected blacklist unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 4

    .line 604
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-static {v0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$munregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 605
    return-void
.end method
