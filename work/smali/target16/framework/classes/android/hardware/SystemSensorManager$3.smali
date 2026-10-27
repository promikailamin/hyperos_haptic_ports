.class Landroid/hardware/SystemSensorManager$3;
.super Landroid/content/BroadcastReceiver;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/SystemSensorManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 623
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$3;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 626
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 628
    const-string p1, "SensorManager"

    const-string p2, "DYNS received DYNAMIC_SENSOR_CHANGED broadcast"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object p1, p0, Landroid/hardware/SystemSensorManager$3;->this$0:Landroid/hardware/SystemSensorManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fputmDynamicSensorListDirty(Landroid/hardware/SystemSensorManager;Z)V

    .line 632
    iget-object p1, p0, Landroid/hardware/SystemSensorManager$3;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-static {p1}, Landroid/hardware/SystemSensorManager;->-$$Nest$mupdateDynamicSensorList(Landroid/hardware/SystemSensorManager;)V

    .line 634
    :cond_1e
    return-void
.end method
