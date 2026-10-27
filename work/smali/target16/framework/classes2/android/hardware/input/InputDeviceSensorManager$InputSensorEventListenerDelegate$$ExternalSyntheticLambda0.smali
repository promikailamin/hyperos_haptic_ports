.class public final synthetic Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/Sensor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/Sensor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/Sensor;

    check-cast p1, Landroid/hardware/Sensor;

    invoke-static {v0, p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->lambda$removeSensor$0(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z

    move-result p1

    return p1
.end method
