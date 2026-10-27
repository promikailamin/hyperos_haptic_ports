.class public Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;
.super Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;
.source "ThermalManagerService.java"


# instance fields
.field public final mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

.field public mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;


# direct methods
.method public static synthetic $r8$lambda$Fwar8k-A_3qJ9b3XAxvXAT3MInw(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;Landroid/hardware/thermal/V2_0/TemperatureThreshold;)Landroid/hardware/thermal/TemperatureThreshold;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->convertToAidlTemperatureThreshold(Landroid/hardware/thermal/V2_0/TemperatureThreshold;)Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SNusXV1JcZMagiIX07bkd1s8rbg(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->lambda$getTemperatureThresholds$2(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V0sffnFE-Xs1Ko9J3OaggvYbFss(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 9

    .line 1848
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_23

    .line 1850
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_22

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Landroid/hardware/thermal/V2_0/CoolingDevice;

    .line 1851
    new-instance v2, Landroid/os/CoolingDevice;

    iget-wide v3, v1, Landroid/hardware/thermal/V2_0/CoolingDevice;->value:J

    iget v5, v1, Landroid/hardware/thermal/V2_0/CoolingDevice;->type:I

    iget-object v1, v1, Landroid/hardware/thermal/V2_0/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_22
    return-void

    .line 1856
    :cond_23
    sget-object p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t get cooling device because of HAL error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$otwLpwPKMbAlh1MJU8KYDpZ-0Ec(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 10

    .line 1808
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_37

    .line 1810
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p1, :cond_36

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/hardware/thermal/V2_0/Temperature;

    .line 1811
    iget v3, v2, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    invoke-static {v3}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v3

    if-nez v3, :cond_25

    .line 1813
    sget-object v3, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Invalid status data from HAL"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    iput v0, v2, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    .line 1817
    :cond_25
    new-instance v3, Landroid/os/Temperature;

    iget v4, v2, Landroid/hardware/thermal/V2_0/Temperature;->value:F

    iget v5, v2, Landroid/hardware/thermal/V2_0/Temperature;->type:I

    iget-object v6, v2, Landroid/hardware/thermal/V2_0/Temperature;->name:Ljava/lang/String;

    iget v2, v2, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_36
    return-void

    .line 1823
    :cond_37
    sget-object p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t get temperatures because of HAL error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;)V
    .registers 3

    .line 1788
    invoke-direct {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;-><init>()V

    const/4 v0, 0x0

    .line 1766
    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 1770
    new-instance v0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper$1;-><init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;)V

    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

    .line 1789
    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    return-void
.end method


# virtual methods
.method public connectToHal()Z
    .registers 8

    .line 1910
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1912
    :try_start_5
    invoke-static {v1}, Landroid/hardware/thermal/V2_0/IThermal;->getService(Z)Landroid/hardware/thermal/V2_0/IThermal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 1913
    new-instance v4, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v4, p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v5, 0x15ec

    invoke-interface {v3, v4, v5, v6}, Landroid/hardware/thermal/V2_0/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1914
    iget-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

    invoke-interface {v3, v4, v2, v2}, Landroid/hardware/thermal/V2_0/IThermal;->registerThermalChangedCallback(Landroid/hardware/thermal/V2_0/IThermalChangedCallback;ZI)Landroid/hardware/thermal/V1_0/ThermalStatus;

    .line 1916
    sget-object v3, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Thermal HAL 2.0 service connected."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_23} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_23} :catch_26
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    goto :goto_30

    :catchall_24
    move-exception p0

    goto :goto_38

    .line 1918
    :catch_26
    :try_start_26
    sget-object v3, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Thermal HAL 2.0 service not connected."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 1919
    iput-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 1921
    :goto_30
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-eqz p0, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    monitor-exit v0

    return v1

    .line 1922
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_24

    throw p0
.end method

.method public final convertToAidlTemperatureThreshold(Landroid/hardware/thermal/V2_0/TemperatureThreshold;)Landroid/hardware/thermal/TemperatureThreshold;
    .registers 3

    .line 1900
    new-instance p0, Landroid/hardware/thermal/TemperatureThreshold;

    invoke-direct {p0}, Landroid/hardware/thermal/TemperatureThreshold;-><init>()V

    .line 1901
    iget-object v0, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/thermal/TemperatureThreshold;->name:Ljava/lang/String;

    .line 1902
    iget v0, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->type:I

    iput v0, p0, Landroid/hardware/thermal/TemperatureThreshold;->type:I

    .line 1903
    iget-object v0, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->coldThrottlingThresholds:[F

    iput-object v0, p0, Landroid/hardware/thermal/TemperatureThreshold;->coldThrottlingThresholds:[F

    .line 1904
    iget-object p1, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    iput-object p1, p0, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 1932
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1933
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1934
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThermalHAL 2.0 connected: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-eqz p0, :cond_1a

    const-string/jumbo p0, "yes"

    goto :goto_1d

    :catchall_18
    move-exception p0

    goto :goto_29

    .line 1935
    :cond_1a
    const-string/jumbo p0, "no"

    :goto_1d
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1934
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1936
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

    .line 1927
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported in Thermal HAL 2.0"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentCoolingDevices(ZI)Ljava/util/List;
    .registers 7

    .line 1840
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1841
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1842
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_10

    .line 1843
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    return-object v1

    :catchall_e
    move-exception p0

    goto :goto_26

    .line 1846
    :cond_10
    :try_start_10
    new-instance v3, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentCoolingDevices(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentCoolingDevicesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19
    .catchall {:try_start_10 .. :try_end_18} :catchall_e

    goto :goto_24

    :catch_19
    move-exception p1

    .line 1863
    :try_start_1a
    sget-object p2, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1864
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->connectToHal()Z

    .line 1866
    :goto_24
    monitor-exit v0

    return-object v1

    .line 1867
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_e

    throw p0
.end method

.method public getCurrentTemperatures(ZI)Ljava/util/List;
    .registers 7

    .line 1800
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1801
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1802
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_10

    .line 1803
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    return-object v1

    :catchall_e
    move-exception p0

    goto :goto_26

    .line 1806
    :cond_10
    :try_start_10
    new-instance v3, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentTemperatures(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentTemperaturesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19
    .catchall {:try_start_10 .. :try_end_18} :catchall_e

    goto :goto_24

    :catch_19
    move-exception p1

    .line 1830
    :try_start_1a
    sget-object p2, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1831
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->connectToHal()Z

    .line 1833
    :goto_24
    monitor-exit v0

    return-object v1

    .line 1834
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_e

    throw p0
.end method

.method public getTemperatureThresholds(ZI)Ljava/util/List;
    .registers 7

    .line 1873
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1874
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1875
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_10

    .line 1876
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    return-object v1

    :catchall_e
    move-exception p0

    goto :goto_23

    .line 1879
    :cond_10
    :try_start_10
    new-instance v3, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;Ljava/util/List;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getTemperatureThresholds(ZILandroid/hardware/thermal/V2_0/IThermal$getTemperatureThresholdsCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19
    .catchall {:try_start_10 .. :try_end_18} :catchall_e

    goto :goto_21

    :catch_19
    move-exception p0

    .line 1892
    :try_start_1a
    sget-object p1, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Couldn\'t getTemperatureThresholds, reconnecting..."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1894
    :goto_21
    monitor-exit v0

    return-object v1

    .line 1895
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_e

    throw p0
.end method

.method public final synthetic lambda$getTemperatureThresholds$2(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 5

    .line 1881
    iget v0, p2, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_1f

    .line 1882
    invoke-virtual {p3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;)V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1884
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    .line 1883
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 1882
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 1886
    :cond_1f
    sget-object p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t get temperature thresholds because of HAL error: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
