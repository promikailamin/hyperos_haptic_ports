.class Landroid/hardware/SystemSensorManager$1;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$addedList:Ljava/util/List;

.field final synthetic blacklist val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

.field final synthetic blacklist val$removedList:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/SystemSensorManager;Ljava/util/List;Landroid/hardware/SensorManager$DynamicSensorCallback;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 557
    iput-object p2, p0, Landroid/hardware/SystemSensorManager$1;->val$addedList:Ljava/util/List;

    iput-object p3, p0, Landroid/hardware/SystemSensorManager$1;->val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

    iput-object p4, p0, Landroid/hardware/SystemSensorManager$1;->val$removedList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 560
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$1;->val$addedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 561
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$1;->val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager$DynamicSensorCallback;->onDynamicSensorConnected(Landroid/hardware/Sensor;)V

    .line 562
    goto :goto_6

    .line 563
    :cond_18
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$1;->val$removedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 564
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$1;->val$callback:Landroid/hardware/SensorManager$DynamicSensorCallback;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager$DynamicSensorCallback;->onDynamicSensorDisconnected(Landroid/hardware/Sensor;)V

    .line 565
    goto :goto_1e

    .line 566
    :cond_30
    return-void
.end method
