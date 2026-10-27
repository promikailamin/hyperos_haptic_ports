.class Lmiui/util/BackTapSensorWrapper$1;
.super Ljava/lang/Object;
.source "BackTapSensorWrapper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/BackTapSensorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/util/BackTapSensorWrapper;


# direct methods
.method constructor blacklist <init>(Lmiui/util/BackTapSensorWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/util/BackTapSensorWrapper;

    .line 32
    iput-object p1, p0, Lmiui/util/BackTapSensorWrapper$1;->this$0:Lmiui/util/BackTapSensorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 41
    return-void
.end method

.method public whitelist onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 35
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 36
    .local v0, "action":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged, action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackTapSensorWrapper"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v1, p0, Lmiui/util/BackTapSensorWrapper$1;->this$0:Lmiui/util/BackTapSensorWrapper;

    invoke-static {v1}, Lmiui/util/BackTapSensorWrapper;->-$$Nest$fgetmHandler(Lmiui/util/BackTapSensorWrapper;)Landroid/os/Handler;

    move-result-object v1

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 38
    return-void
.end method
