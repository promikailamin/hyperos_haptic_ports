.class final Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;
.super Ljava/lang/Object;
.source "DeviceStateProviderImpl.java"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceStateProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SensorBooleanSupplier"
.end annotation


# instance fields
.field private final mExpectedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/policy/devicestate/config/NumericRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensor:Landroid/hardware/Sensor;

.field final synthetic this$0:Lcom/android/server/policy/DeviceStateProviderImpl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/hardware/Sensor;Ljava/util/List;)V
    .registers 4
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Sensor;",
            "Ljava/util/List<",
            "Lcom/android/server/policy/devicestate/config/NumericRange;",
            ">;)V"
        }
    .end annotation

    .line 515
    .local p3, "expectedValues":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/NumericRange;>;"
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mSensor:Landroid/hardware/Sensor;

    .line 517
    iput-object p3, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    .line 518
    return-void
.end method

.method private adheresToRange(FLcom/android/server/policy/devicestate/config/NumericRange;)Z
    .registers 9
    .param p1, "value"    # F
    .param p2, "range"    # Lcom/android/server/policy/devicestate/config/NumericRange;

    .line 550
    invoke-virtual {p2}, Lcom/android/server/policy/devicestate/config/NumericRange;->getMin_optional()Ljava/math/BigDecimal;

    move-result-object v0

    .line 551
    .local v0, "min":Ljava/math/BigDecimal;
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 555
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_10

    .line 556
    return v1

    .line 560
    :cond_10
    invoke-virtual {p2}, Lcom/android/server/policy/devicestate/config/NumericRange;->getMinInclusive_optional()Ljava/math/BigDecimal;

    move-result-object v2

    .line 561
    .local v2, "minInclusive":Ljava/math/BigDecimal;
    if-eqz v2, :cond_1f

    .line 566
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1f

    .line 567
    return v1

    .line 571
    :cond_1f
    invoke-virtual {p2}, Lcom/android/server/policy/devicestate/config/NumericRange;->getMax_optional()Ljava/math/BigDecimal;

    move-result-object v3

    .line 572
    .local v3, "max":Ljava/math/BigDecimal;
    if-eqz v3, :cond_2e

    .line 576
    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2e

    .line 577
    return v1

    .line 581
    :cond_2e
    invoke-virtual {p2}, Lcom/android/server/policy/devicestate/config/NumericRange;->getMaxInclusive_optional()Ljava/math/BigDecimal;

    move-result-object v4

    .line 582
    .local v4, "maxInclusive":Ljava/math/BigDecimal;
    if-eqz v4, :cond_3d

    .line 587
    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_3d

    .line 588
    return v1

    .line 592
    :cond_3d
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public getAsBoolean()Z
    .registers 6

    .line 522
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v0}, Lcom/android/server/policy/DeviceStateProviderImpl;->-$$Nest$fgetmLock(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 523
    :try_start_7
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->-$$Nest$fgetmLatestSensorEvent(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mSensor:Landroid/hardware/Sensor;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorEvent;

    .line 524
    .local v1, "latestEvent":Landroid/hardware/SensorEvent;
    if-eqz v1, :cond_67

    .line 528
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_4c

    .line 534
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 537
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v4}, Lcom/android/server/policy/DeviceStateProviderImpl;->-$$Nest$fgetmFoldSensorDataIndex(Lcom/android/server/policy/DeviceStateProviderImpl;)I

    move-result v4

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/devicestate/config/NumericRange;

    invoke-direct {p0, v3, v4}, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->adheresToRange(FLcom/android/server/policy/devicestate/config/NumericRange;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 538
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 534
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 541
    .end local v2    # "i":I
    :cond_49
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 529
    :cond_4c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of supplied numeric range(s) does not match the number of values in the latest sensor event for sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;
    throw v2

    .line 525
    .restart local p0    # "this":Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;
    :cond_67
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Have not received sensor event."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;
    throw v2

    .line 542
    .end local v1    # "latestEvent":Landroid/hardware/SensorEvent;
    .restart local p0    # "this":Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_7 .. :try_end_71} :catchall_6f

    throw v1
.end method
