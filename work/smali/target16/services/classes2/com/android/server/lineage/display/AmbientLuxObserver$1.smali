.class public Lcom/android/server/lineage/display/AmbientLuxObserver$1;
.super Ljava/lang/Object;
.source "AmbientLuxObserver.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/AmbientLuxObserver;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$1;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$1;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {v0}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmLightSensorEnabled(Lcom/android/server/lineage/display/AmbientLuxObserver;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 138
    iget-object p0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$1;->this$0:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-static {p0}, Lcom/android/server/lineage/display/AmbientLuxObserver;->-$$Nest$fgetmLuxHandler(Lcom/android/server/lineage/display/AmbientLuxObserver;)Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;

    move-result-object p0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 139
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 138
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1e
    return-void
.end method
