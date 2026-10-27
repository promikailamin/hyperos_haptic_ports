.class Lmiui/util/HoldSensorWrapper$1;
.super Ljava/lang/Object;
.source "HoldSensorWrapper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/HoldSensorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/util/HoldSensorWrapper;


# direct methods
.method constructor blacklist <init>(Lmiui/util/HoldSensorWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/util/HoldSensorWrapper;

    .line 36
    iput-object p1, p0, Lmiui/util/HoldSensorWrapper$1;->this$0:Lmiui/util/HoldSensorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 54
    return-void
.end method

.method public whitelist onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "status":I
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-eqz v1, :cond_35

    .line 41
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_15

    .line 42
    const/4 v0, 0x3

    goto :goto_30

    .line 43
    :cond_15
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_23

    .line 44
    const/4 v0, 0x1

    goto :goto_30

    .line 45
    :cond_23
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_30

    .line 46
    const/4 v0, 0x2

    .line 48
    :cond_30
    :goto_30
    iget-object v1, p0, Lmiui/util/HoldSensorWrapper$1;->this$0:Lmiui/util/HoldSensorWrapper;

    invoke-static {v1, v0}, Lmiui/util/HoldSensorWrapper;->-$$Nest$mnotifyListeners(Lmiui/util/HoldSensorWrapper;I)V

    .line 50
    :cond_35
    return-void
.end method
