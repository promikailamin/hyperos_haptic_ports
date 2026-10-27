.class public Lcom/android/server/display/utils/SensorUtils;
.super Ljava/lang/Object;
.source "SensorUtils.java"


# static fields
.field public static final NO_FALLBACK:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;
    .registers 10
    .param p0, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p1, "sensorType"    # Ljava/lang/String;
    .param p2, "sensorName"    # Ljava/lang/String;
    .param p3, "fallbackType"    # I

    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 37
    .local v0, "isNameSpecified":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 38
    .local v1, "isTypeSpecified":Z
    if-nez v0, :cond_10

    if-eqz v1, :cond_40

    .line 39
    :cond_10
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 40
    .local v2, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 41
    .local v4, "sensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_31

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    :cond_31
    if-eqz v1, :cond_3f

    .line 42
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    goto :goto_3f

    .line 45
    .end local v4    # "sensor":Landroid/hardware/Sensor;
    :cond_3e
    goto :goto_19

    .line 43
    .restart local v4    # "sensor":Landroid/hardware/Sensor;
    :cond_3f
    :goto_3f
    return-object v4

    .line 47
    .end local v2    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "sensor":Landroid/hardware/Sensor;
    :cond_40
    if-eqz p3, :cond_47

    .line 48
    invoke-virtual {p0, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    return-object v2

    .line 51
    :cond_47
    const/4 v2, 0x0

    return-object v2
.end method
