.class Lmiui/util/LaySensorWrapper$1;
.super Ljava/lang/Object;
.source "LaySensorWrapper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LaySensorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/util/LaySensorWrapper;


# direct methods
.method constructor blacklist <init>(Lmiui/util/LaySensorWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/util/LaySensorWrapper;

    .line 55
    iput-object p1, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 110
    return-void
.end method

.method public whitelist onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 59
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-eqz v0, :cond_12f

    .line 60
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_16

    .line 61
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0, v1}, Lmiui/util/LaySensorWrapper;->-$$Nest$fputmAttitude(Lmiui/util/LaySensorWrapper;I)V

    .line 63
    :cond_16
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_28

    .line 64
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0, v4}, Lmiui/util/LaySensorWrapper;->-$$Nest$fputmAttitude(Lmiui/util/LaySensorWrapper;I)V

    .line 66
    :cond_28
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v6, 0x2

    if-nez v0, :cond_3a

    .line 67
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0, v6}, Lmiui/util/LaySensorWrapper;->-$$Nest$fputmAttitude(Lmiui/util/LaySensorWrapper;I)V

    .line 69
    :cond_3a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_4c

    .line 70
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    const/4 v7, 0x3

    invoke-static {v0, v7}, Lmiui/util/LaySensorWrapper;->-$$Nest$fputmAttitude(Lmiui/util/LaySensorWrapper;I)V

    .line 72
    :cond_4c
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v7, 0x4

    if-nez v0, :cond_5e

    .line 73
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0, v7}, Lmiui/util/LaySensorWrapper;->-$$Nest$fputmAttitude(Lmiui/util/LaySensorWrapper;I)V

    .line 77
    :cond_5e
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_6d

    .line 78
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0, v1}, Lmiui/util/LaySensorWrapper;->-$$Nest$fputmPerspective(Lmiui/util/LaySensorWrapper;I)V

    .line 80
    :cond_6d
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_7c

    .line 81
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0, v4}, Lmiui/util/LaySensorWrapper;->-$$Nest$fputmPerspective(Lmiui/util/LaySensorWrapper;I)V

    .line 83
    :cond_7c
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_8b

    .line 84
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0, v6}, Lmiui/util/LaySensorWrapper;->-$$Nest$fputmPerspective(Lmiui/util/LaySensorWrapper;I)V

    .line 87
    :cond_8b
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmAttitude(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    const-wide/16 v2, 0x3e8

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmPerspective(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    if-ne v0, v4, :cond_c6

    :cond_9d
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmCurttenState(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    if-eqz v0, :cond_c6

    .line 89
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0, v1}, Lmiui/util/LaySensorWrapper;->-$$Nest$fputmCurttenState(Lmiui/util/LaySensorWrapper;I)V

    .line 90
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmHandler(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmHandler(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmHandler(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_12f

    .line 93
    :cond_c6
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmAttitude(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    if-eq v0, v7, :cond_d6

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmPerspective(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    if-ne v0, v6, :cond_ff

    :cond_d6
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmCurttenState(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    if-eq v0, v4, :cond_ff

    .line 95
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0, v4}, Lmiui/util/LaySensorWrapper;->-$$Nest$fputmCurttenState(Lmiui/util/LaySensorWrapper;I)V

    .line 96
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmHandler(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmHandler(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmHandler(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_12f

    .line 99
    :cond_ff
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmAttitude(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    if-ne v0, v4, :cond_12f

    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmCurttenState(Lmiui/util/LaySensorWrapper;)I

    move-result v0

    if-eq v0, v6, :cond_12f

    .line 100
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0, v6}, Lmiui/util/LaySensorWrapper;->-$$Nest$fputmCurttenState(Lmiui/util/LaySensorWrapper;I)V

    .line 101
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmHandler(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmHandler(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$1;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-static {v0}, Lmiui/util/LaySensorWrapper;->-$$Nest$fgetmHandler(Lmiui/util/LaySensorWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 106
    :cond_12f
    :goto_12f
    return-void
.end method
