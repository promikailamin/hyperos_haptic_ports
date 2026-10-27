.class final Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;
.super Landroid/hardware/input/IInputSensorEventListener$Stub;
.source "InputDeviceSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputDeviceSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputSensorEventListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/input/InputDeviceSensorManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/input/InputDeviceSensorManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 232
    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-direct {p0}, Landroid/hardware/input/IInputSensorEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/input/InputDeviceSensorManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;-><init>(Landroid/hardware/input/InputDeviceSensorManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onInputSensorAccuracyChanged(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-static {v0, p1, p2, p3}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$monInputSensorAccuracyChanged(Landroid/hardware/input/InputDeviceSensorManager;III)V

    .line 245
    return-void
.end method

.method public blacklist onInputSensorChanged(IIIJ[F)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    move-object p0, v0

    invoke-static/range {p0 .. p6}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$monInputSensorChanged(Landroid/hardware/input/InputDeviceSensorManager;IIIJ[F)V

    .line 238
    return-void
.end method
