.class final Landroid/hardware/SystemSensorManager$SensorEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventQueue"
.end annotation


# instance fields
.field private final greylist-max-o mListener:Landroid/hardware/SensorEventListener;

.field private final greylist-max-o mSensorsEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 877
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    .line 873
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    .line 878
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    .line 879
    return-void
.end method


# virtual methods
.method public greylist-max-o addSensorEvent(Landroid/hardware/Sensor;)V
    .registers 6
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 883
    new-instance v0, Landroid/hardware/SensorEvent;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmTargetSdkLevel(Landroid/hardware/SystemSensorManager;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    .line 885
    .local v0, "t":Landroid/hardware/SensorEvent;
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v1

    .line 886
    :try_start_12
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 887
    monitor-exit v1

    .line 888
    return-void

    .line 887
    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method protected greylist-max-o dispatchAdditionalInfoEvent(III[F[I)V
    .registers 14
    .param p1, "handle"    # I
    .param p2, "type"    # I
    .param p3, "serial"    # I
    .param p4, "floatValues"    # [F
    .param p5, "intValues"    # [I

    .line 988
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    instance-of v0, v0, Landroid/hardware/SensorEventCallback;

    if-eqz v0, :cond_2b

    .line 989
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 990
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_19

    .line 992
    return-void

    .line 994
    :cond_19
    new-instance v7, Landroid/hardware/SensorAdditionalInfo;

    move-object v1, v7

    move-object v2, v0

    move v3, p2

    move v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorAdditionalInfo;-><init>(Landroid/hardware/Sensor;II[I[F)V

    .line 996
    .local v1, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    check-cast v2, Landroid/hardware/SensorEventCallback;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorEventCallback;->onSensorAdditionalInfo(Landroid/hardware/SensorAdditionalInfo;)V

    .line 998
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    .end local v1    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_2b
    return-void
.end method

.method protected greylist-max-o dispatchFlushCompleteEvent(I)V
    .registers 4
    .param p1, "handle"    # I

    .line 972
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    instance-of v0, v0, Landroid/hardware/SensorEventListener2;

    if-eqz v0, :cond_20

    .line 973
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 974
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_19

    .line 976
    return-void

    .line 978
    :cond_19
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    check-cast v1, Landroid/hardware/SensorEventListener2;

    invoke-interface {v1, v0}, Landroid/hardware/SensorEventListener2;->onFlushCompleted(Landroid/hardware/Sensor;)V

    .line 980
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_20
    return-void
.end method

.method protected greylist-max-o dispatchSensorEvent(I[FIJ)V
    .registers 13
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "inAccuracy"    # I
    .param p4, "timestamp"    # J

    .line 902
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 903
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_13

    .line 905
    return-void

    .line 909
    :cond_13
    invoke-static {}, Landroid/hovermode/MiuiHoverModeStub;->get()Landroid/hovermode/MiuiHoverModeStub;

    move-result-object v1

    invoke-interface {v1}, Landroid/hovermode/MiuiHoverModeStub;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 910
    invoke-static {}, Landroid/hovermode/MiuiHoverModeStub;->get()Landroid/hovermode/MiuiHoverModeStub;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/hovermode/MiuiHoverModeStub;->needInterceptDispatchSensorEvent(Landroid/hardware/Sensor;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 911
    return-void

    .line 915
    :cond_28
    const/4 v1, 0x0

    .line 916
    .local v1, "t":Landroid/hardware/SensorEvent;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v2

    .line 917
    :try_start_2c
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorEvent;

    move-object v1, v3

    .line 918
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_bf

    .line 920
    if-nez v1, :cond_39

    .line 923
    return-void

    .line 926
    :cond_39
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 927
    iput-wide p4, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 928
    iput p3, v1, Landroid/hardware/SensorEvent;->accuracy:I

    .line 929
    iput-object v0, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 933
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6e

    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->-$$Nest$mshouldDisableSensor(Landroid/hardware/SystemSensorManager;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 934
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aput v5, v2, v4

    .line 935
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    const v4, 0x411ce80a

    aput v4, v2, v3

    .line 936
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aput v5, v2, v3

    .line 937
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v2, v1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 938
    return-void

    .line 943
    :cond_6e
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-static {v2, v1}, Landroid/util/MiuiFreeformUtils;->checkReadyForDispatch(ILandroid/hardware/SensorEvent;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 944
    return-void

    .line 949
    :cond_79
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 950
    .local v2, "accuracy":I
    iget v4, v1, Landroid/hardware/SensorEvent;->accuracy:I

    if-ltz v4, :cond_97

    iget v4, v1, Landroid/hardware/SensorEvent;->accuracy:I

    if-eq v2, v4, :cond_97

    .line 951
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    iget v5, v1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 952
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v5, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v6, v1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-interface {v4, v5, v6}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 956
    :cond_97
    iget-object v4, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_b9

    .line 957
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorDiscontinuityCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 958
    .local v4, "lastCount":I
    const/4 v5, 0x6

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    .line 959
    .local v5, "curCount":I
    if-ltz v4, :cond_b9

    if-eq v4, v5, :cond_b9

    .line 960
    iget-object v6, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorDiscontinuityCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 961
    iput-boolean v3, v1, Landroid/hardware/SensorEvent;->firstEventAfterDiscontinuity:Z

    .line 965
    .end local v4    # "lastCount":I
    .end local v5    # "curCount":I
    :cond_b9
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v3, v1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 966
    return-void

    .line 918
    .end local v2    # "accuracy":I
    :catchall_bf
    move-exception v3

    :try_start_c0
    monitor-exit v2
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw v3
.end method

.method public greylist-max-o removeSensorEvent(Landroid/hardware/Sensor;)V
    .registers 5
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 892
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v0

    .line 893
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 894
    monitor-exit v0

    .line 895
    return-void

    .line 894
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
