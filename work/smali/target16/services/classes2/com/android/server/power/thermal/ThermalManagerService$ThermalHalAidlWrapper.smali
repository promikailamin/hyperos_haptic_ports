.class Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;
.super Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;
.source "ThermalManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mInstance:Landroid/hardware/thermal/IThermal;

.field public final mThermalCallbackAidl:Landroid/hardware/thermal/IThermalChangedCallback;


# direct methods
.method public static synthetic $r8$lambda$dj0KUx5nkDV10KtsFbE67aXwyFY(ILandroid/hardware/thermal/TemperatureThreshold;)Z
    .registers 2

    .line 1379
    iget p1, p1, Landroid/hardware/thermal/TemperatureThreshold;->type:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;)V
    .registers 3

    .line 1275
    invoke-direct {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;-><init>()V

    const/4 v0, 0x0

    .line 1230
    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    .line 1240
    new-instance v0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper$1;-><init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;)V

    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->mThermalCallbackAidl:Landroid/hardware/thermal/IThermalChangedCallback;

    .line 1276
    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    return-void
.end method


# virtual methods
.method public declared-synchronized binderDied()V
    .registers 3

    monitor-enter p0

    .line 1481
    :try_start_1
    sget-object v0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Thermal AIDL HAL died, reconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1483
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public connectToHal()Z
    .registers 3

    .line 1413
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1414
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1415
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z
    .registers 4

    .line 1420
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    return v1

    .line 1424
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/hardware/thermal/IThermal;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/default"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    .line 1426
    invoke-virtual {p0, p1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->initProxyAndRegisterCallbackLocked(Landroid/os/IBinder;)V

    .line 1427
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    if-eqz p0, :cond_29

    return v1

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 1471
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1472
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1473
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThermalHAL AIDL 3  connected: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    if-eqz p0, :cond_1a

    .line 1475
    const-string/jumbo p0, "yes"

    goto :goto_1d

    :catchall_18
    move-exception p0

    goto :goto_29

    :cond_1a
    const-string/jumbo p0, "no"

    :goto_1d
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1473
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_18

    throw p0
.end method

.method public forecastSkinTemperature(I)F
    .registers 6

    .line 1396
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_9

    return v1

    .line 1401
    :cond_9
    :try_start_9
    invoke-interface {v0, p1}, Landroid/hardware/thermal/IThermal;->forecastSkinTemperature(I)F

    move-result p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return p0

    :catch_e
    move-exception p1

    .line 1403
    sget-object v2, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t forecastSkinTemperature, reconnecting..."

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1404
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1405
    :try_start_19
    invoke-virtual {p0, v0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    .line 1406
    monitor-exit p1

    return v1

    :catchall_1e
    move-exception p0

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public getCurrentCoolingDevices(ZI)Ljava/util/List;
    .registers 13

    .line 1329
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    .line 1330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_d

    goto/16 :goto_7c

    :cond_d
    if-eqz p1, :cond_18

    .line 1336
    :try_start_f
    invoke-interface {v0, p2}, Landroid/hardware/thermal/IThermal;->getCoolingDevicesWithType(I)[Landroid/hardware/thermal/CoolingDevice;

    move-result-object v2

    goto :goto_1c

    :catch_14
    move-exception p1

    goto :goto_63

    :catch_16
    move-exception p0

    goto :goto_75

    .line 1337
    :cond_18
    invoke-interface {v0}, Landroid/hardware/thermal/IThermal;->getCoolingDevices()[Landroid/hardware/thermal/CoolingDevice;

    move-result-object v2

    :goto_1c
    if-nez v2, :cond_1f

    goto :goto_7c

    .line 1341
    :cond_1f
    array-length v3, v2

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_7c

    aget-object v5, v2, v4

    .line 1342
    iget v6, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    invoke-static {v6}, Landroid/os/CoolingDevice;->isValidType(I)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 1343
    sget-object v6, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid cooling device type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from AIDL HAL"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :cond_4b
    if-eqz p1, :cond_52

    .line 1346
    iget v6, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    if-eq v6, p2, :cond_52

    goto :goto_60

    .line 1349
    :cond_52
    new-instance v6, Landroid/os/CoolingDevice;

    iget-wide v7, v5, Landroid/hardware/thermal/CoolingDevice;->value:J

    iget v9, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    iget-object v5, v5, Landroid/hardware/thermal/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v5}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_60} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_60} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_60} :catch_14

    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 1354
    :goto_63
    sget-object p2, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1355
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1356
    :try_start_6d
    invoke-virtual {p0, v0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    .line 1357
    monitor-exit p1

    goto :goto_7c

    :catchall_72
    move-exception p0

    monitor-exit p1
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_72

    throw p0

    .line 1352
    :goto_75
    sget-object p1, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Couldn\'t getCurrentCoolingDevices due to invalid status"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7c
    :goto_7c
    return-object v1
.end method

.method public getCurrentTemperatures(ZI)Ljava/util/List;
    .registers 14

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    .line 1293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_d

    goto/16 :goto_80

    :cond_d
    if-eqz p1, :cond_18

    .line 1299
    :try_start_f
    invoke-interface {v0, p2}, Landroid/hardware/thermal/IThermal;->getTemperaturesWithType(I)[Landroid/hardware/thermal/Temperature;

    move-result-object v2

    goto :goto_1c

    :catch_14
    move-exception p1

    goto :goto_67

    :catch_16
    move-exception p0

    goto :goto_79

    .line 1300
    :cond_18
    invoke-interface {v0}, Landroid/hardware/thermal/IThermal;->getTemperatures()[Landroid/hardware/thermal/Temperature;

    move-result-object v2

    :goto_1c
    if-nez v2, :cond_1f

    goto :goto_80

    .line 1304
    :cond_1f
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_22
    if-ge v5, v3, :cond_80

    aget-object v6, v2, v5

    .line 1305
    iget v7, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    invoke-static {v7}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v7

    if-nez v7, :cond_4d

    .line 1306
    sget-object v7, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid temperature status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " received from AIDL HAL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iput v4, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    :cond_4d
    if-eqz p1, :cond_54

    .line 1310
    iget v7, v6, Landroid/hardware/thermal/Temperature;->type:I

    if-eq v7, p2, :cond_54

    goto :goto_64

    .line 1313
    :cond_54
    new-instance v7, Landroid/os/Temperature;

    iget v8, v6, Landroid/hardware/thermal/Temperature;->value:F

    iget v9, v6, Landroid/hardware/thermal/Temperature;->type:I

    iget-object v10, v6, Landroid/hardware/thermal/Temperature;->name:Ljava/lang/String;

    iget v6, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    invoke-direct {v7, v8, v9, v10, v6}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_64} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_64} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_64} :catch_14

    :goto_64
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 1318
    :goto_67
    sget-object p2, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1319
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1320
    :try_start_71
    invoke-virtual {p0, v0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    .line 1321
    monitor-exit p1

    goto :goto_80

    :catchall_76
    move-exception p0

    monitor-exit p1
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_76

    throw p0

    .line 1316
    :goto_79
    sget-object p1, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Couldn\'t getCurrentCoolingDevices due to invalid status"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_80
    :goto_80
    return-object v1
.end method

.method public final getHalInstance()Landroid/hardware/thermal/IThermal;
    .registers 2

    .line 1234
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1235
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 1236
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getTemperatureThresholds(ZI)Ljava/util/List;
    .registers 6

    .line 1366
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    .line 1367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_c

    goto :goto_56

    :cond_c
    if-eqz p1, :cond_17

    .line 1373
    :try_start_e
    invoke-interface {v0, p2}, Landroid/hardware/thermal/IThermal;->getTemperatureThresholdsWithType(I)[Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object v2

    goto :goto_1b

    :catch_13
    move-exception p1

    goto :goto_3d

    :catch_15
    move-exception p0

    goto :goto_4f

    .line 1374
    :cond_17
    invoke-interface {v0}, Landroid/hardware/thermal/IThermal;->getTemperatureThresholds()[Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object v2

    :goto_1b
    if-nez v2, :cond_1e

    goto :goto_56

    :cond_1e
    if-eqz p1, :cond_38

    .line 1379
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1380
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    .line 1379
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 1382
    :cond_38
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_3c} :catch_15
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_3c} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_3c} :catch_13

    return-object p0

    .line 1386
    :goto_3d
    sget-object p2, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getTemperatureThresholds, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1387
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1388
    :try_start_47
    invoke-virtual {p0, v0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    .line 1389
    monitor-exit p1

    goto :goto_56

    :catchall_4c
    move-exception p0

    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_4c

    throw p0

    .line 1384
    :goto_4f
    sget-object p1, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Couldn\'t getTemperatureThresholds due to invalid status"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_56
    return-object v1
.end method

.method public initProxyAndRegisterCallback(Landroid/os/IBinder;)V
    .registers 3

    .line 1432
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1433
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->initProxyAndRegisterCallbackLocked(Landroid/os/IBinder;)V

    .line 1434
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public initProxyAndRegisterCallbackLocked(Landroid/os/IBinder;)V
    .registers 5

    .line 1439
    const-string v0, "Unable to connect IThermal AIDL instance"

    if-eqz p1, :cond_5e

    .line 1440
    invoke-static {p1}, Landroid/hardware/thermal/IThermal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    const/4 v1, 0x0

    .line 1442
    :try_start_b
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_18

    :catch_f
    move-exception p1

    .line 1444
    sget-object v1, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1445
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    .line 1447
    :goto_18
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    if-eqz p1, :cond_5e

    .line 1449
    :try_start_1c
    sget-object p1, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thermal HAL AIDL service connected with version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    .line 1450
    invoke-interface {v2}, Landroid/hardware/thermal/IThermal;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1449
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_38} :catch_53

    .line 1457
    :try_start_38
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->mThermalCallbackAidl:Landroid/hardware/thermal/IThermalChangedCallback;

    invoke-interface {p1, v1}, Landroid/hardware/thermal/IThermal;->registerThermalChangedCallback(Landroid/hardware/thermal/IThermalChangedCallback;)V
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_3f} :catch_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_3f} :catch_4a
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_40

    goto :goto_5e

    :catch_40
    move-exception p1

    .line 1462
    sget-object v1, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1463
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    goto :goto_5e

    :catch_4a
    move-exception p0

    .line 1459
    sget-object p1, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Couldn\'t registerThermalChangedCallback due to invalid status"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e

    :catch_53
    move-exception p1

    .line 1452
    sget-object v0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Unable to read interface version from Thermal HAL"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1453
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    :cond_5e
    :goto_5e
    return-void
.end method
