.class public Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper;
.super Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;
.source "ThermalManagerService.java"


# instance fields
.field public mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;


# direct methods
.method public static synthetic $r8$lambda$37UcqQER1SA89dU97OZuTEFNtXo(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 11

    .line 1550
    iget v0, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2b

    .line 1552
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p3, :cond_2a

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Landroid/hardware/thermal/V1_0/CoolingDevice;

    if-eqz p0, :cond_1a

    .line 1553
    iget v2, v1, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    if-eq p1, v2, :cond_1a

    goto :goto_9

    .line 1556
    :cond_1a
    new-instance v2, Landroid/os/CoolingDevice;

    iget v3, v1, Landroid/hardware/thermal/V1_0/CoolingDevice;->currentValue:F

    float-to-long v3, v3

    iget v5, v1, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    iget-object v1, v1, Landroid/hardware/thermal/V1_0/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2a
    return-void

    .line 1562
    :cond_2b
    sget-object p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t get cooling device because of HAL error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$bhfjE1rnF13liyjttIiDcTaRovI(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 11

    .line 1513
    iget v0, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2b

    .line 1515
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p3, :cond_2a

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/hardware/thermal/V1_0/Temperature;

    if-eqz p0, :cond_1b

    .line 1516
    iget v3, v2, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    if-eq p1, v3, :cond_1b

    goto :goto_a

    .line 1520
    :cond_1b
    new-instance v3, Landroid/os/Temperature;

    iget v4, v2, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    iget v5, v2, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    iget-object v2, v2, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2, v0}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_2a
    return-void

    .line 1526
    :cond_2b
    sget-object p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t get temperatures because of HAL error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;)V
    .registers 3

    .line 1491
    invoke-direct {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;-><init>()V

    const/4 v0, 0x0

    .line 1488
    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    .line 1492
    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    return-void
.end method


# virtual methods
.method public connectToHal()Z
    .registers 7

    .line 1584
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1586
    :try_start_4
    invoke-static {v1}, Landroid/hardware/thermal/V1_0/IThermal;->getService(Z)Landroid/hardware/thermal/V1_0/IThermal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    .line 1587
    new-instance v3, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v3, p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v4, 0x15ec

    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/thermal/V1_0/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1589
    sget-object v2, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v3, "Thermal HAL 1.0 service connected, no thermal call back will be called due to legacy API."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_1b} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1e
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1c

    goto :goto_28

    :catchall_1c
    move-exception p0

    goto :goto_30

    .line 1593
    :catch_1e
    :try_start_1e
    sget-object v2, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v3, "Thermal HAL 1.0 service not connected."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 1595
    iput-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    .line 1597
    :goto_28
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    monitor-exit v0

    return v1

    .line 1598
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_1c

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 1608
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1609
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1610
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThermalHAL 1.0 connected: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-eqz p0, :cond_1a

    const-string/jumbo p0, "yes"

    goto :goto_1d

    :catchall_18
    move-exception p0

    goto :goto_29

    .line 1611
    :cond_1a
    const-string/jumbo p0, "no"

    :goto_1d
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1610
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1612
    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_18

    throw p0
.end method

.method public forecastSkinTemperature(I)F
    .registers 2

    .line 1603
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported in Thermal HAL 1.0"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentCoolingDevices(ZI)Ljava/util/List;
    .registers 7

    .line 1543
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1544
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1545
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-nez v2, :cond_10

    .line 1546
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    return-object v1

    :catchall_e
    move-exception p0

    goto :goto_26

    .line 1549
    :cond_10
    :try_start_10
    new-instance v3, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;-><init>(ZILjava/util/List;)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_0/IThermal;->getCoolingDevices(Landroid/hardware/thermal/V1_0/IThermal$getCoolingDevicesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19
    .catchall {:try_start_10 .. :try_end_18} :catchall_e

    goto :goto_24

    :catch_19
    move-exception p1

    .line 1569
    :try_start_1a
    sget-object p2, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1570
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper;->connectToHal()Z

    .line 1572
    :goto_24
    monitor-exit v0

    return-object v1

    .line 1573
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_e

    throw p0
.end method

.method public getCurrentTemperatures(ZI)Ljava/util/List;
    .registers 7

    .line 1503
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1504
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1505
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-nez v2, :cond_10

    .line 1506
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    return-object v1

    :catchall_e
    move-exception p0

    goto :goto_26

    .line 1509
    :cond_10
    :try_start_10
    new-instance v3, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;-><init>(ZILjava/util/List;)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_0/IThermal;->getTemperatures(Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19
    .catchall {:try_start_10 .. :try_end_18} :catchall_e

    goto :goto_24

    :catch_19
    move-exception p1

    .line 1533
    :try_start_1a
    sget-object p2, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1534
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper;->connectToHal()Z

    .line 1536
    :goto_24
    monitor-exit v0

    return-object v1

    .line 1537
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_e

    throw p0
.end method

.method public getTemperatureThresholds(ZI)Ljava/util/List;
    .registers 3

    .line 1579
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
