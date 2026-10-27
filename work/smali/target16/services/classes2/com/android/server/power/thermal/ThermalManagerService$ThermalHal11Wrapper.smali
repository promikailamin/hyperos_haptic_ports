.class public Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;
.super Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;
.source "ThermalManagerService.java"


# instance fields
.field public final mThermalCallback11:Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;

.field public mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;


# direct methods
.method public static synthetic $r8$lambda$WcrDkadsFwoI5P97qvI1siqCLzY(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 11

    .line 1699
    iget v0, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2b

    .line 1701
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

    .line 1702
    iget v2, v1, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    if-eq p1, v2, :cond_1a

    goto :goto_9

    .line 1705
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

    .line 1711
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

.method public static synthetic $r8$lambda$sB01jJv2bXinHRnZ-Oi46qhyrnQ(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 11

    .line 1662
    iget v0, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2b

    .line 1664
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

    .line 1665
    iget v3, v2, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    if-eq p1, v3, :cond_1b

    goto :goto_a

    .line 1669
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

    .line 1675
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

    .line 1640
    invoke-direct {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;-><init>()V

    const/4 v0, 0x0

    .line 1618
    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    .line 1622
    new-instance v0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper$1;-><init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;)V

    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;->mThermalCallback11:Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;

    .line 1641
    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    return-void
.end method


# virtual methods
.method public connectToHal()Z
    .registers 7

    .line 1733
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1735
    :try_start_4
    invoke-static {v1}, Landroid/hardware/thermal/V1_1/IThermal;->getService(Z)Landroid/hardware/thermal/V1_1/IThermal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    .line 1736
    new-instance v3, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v3, p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v4, 0x15ec

    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/thermal/V1_1/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1738
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    iget-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;->mThermalCallback11:Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_1/IThermal;->registerThermalCallback(Landroid/hardware/thermal/V1_1/IThermalCallback;)V

    .line 1739
    sget-object v2, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v3, "Thermal HAL 1.1 service connected, limited thermal functions due to legacy API."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_22} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_22} :catch_25
    .catchall {:try_start_4 .. :try_end_22} :catchall_23

    goto :goto_2f

    :catchall_23
    move-exception p0

    goto :goto_37

    .line 1742
    :catch_25
    :try_start_25
    sget-object v2, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v3, "Thermal HAL 1.1 service not connected."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 1743
    iput-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    .line 1745
    :goto_2f
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    monitor-exit v0

    return v1

    .line 1746
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_23

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 1756
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1757
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1758
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThermalHAL 1.1 connected: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    if-eqz p0, :cond_1a

    const-string/jumbo p0, "yes"

    goto :goto_1d

    :catchall_18
    move-exception p0

    goto :goto_29

    .line 1759
    :cond_1a
    const-string/jumbo p0, "no"

    :goto_1d
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1758
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1760
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

    .line 1751
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported in Thermal HAL 1.1"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentCoolingDevices(ZI)Ljava/util/List;
    .registers 7

    .line 1692
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1693
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1694
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    if-nez v2, :cond_10

    .line 1695
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    return-object v1

    :catchall_e
    move-exception p0

    goto :goto_26

    .line 1698
    :cond_10
    :try_start_10
    new-instance v3, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper$$ExternalSyntheticLambda0;-><init>(ZILjava/util/List;)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_1/IThermal;->getCoolingDevices(Landroid/hardware/thermal/V1_0/IThermal$getCoolingDevicesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19
    .catchall {:try_start_10 .. :try_end_18} :catchall_e

    goto :goto_24

    :catch_19
    move-exception p1

    .line 1718
    :try_start_1a
    sget-object p2, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1719
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    .line 1721
    :goto_24
    monitor-exit v0

    return-object v1

    .line 1722
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_e

    throw p0
.end method

.method public getCurrentTemperatures(ZI)Ljava/util/List;
    .registers 7

    .line 1652
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1653
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1654
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    if-nez v2, :cond_10

    .line 1655
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    return-object v1

    :catchall_e
    move-exception p0

    goto :goto_26

    .line 1658
    :cond_10
    :try_start_10
    new-instance v3, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper$$ExternalSyntheticLambda1;-><init>(ZILjava/util/List;)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_1/IThermal;->getTemperatures(Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19
    .catchall {:try_start_10 .. :try_end_18} :catchall_e

    goto :goto_24

    :catch_19
    move-exception p1

    .line 1682
    :try_start_1a
    sget-object p2, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1683
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    .line 1685
    :goto_24
    monitor-exit v0

    return-object v1

    .line 1686
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_e

    throw p0
.end method

.method public getTemperatureThresholds(ZI)Ljava/util/List;
    .registers 3

    .line 1728
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
