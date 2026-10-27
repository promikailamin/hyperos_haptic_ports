.class public final Lcom/android/server/TradeInModeService$TradeInMode;
.super Landroid/os/ITradeInMode$Stub;
.source "TradeInModeService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/TradeInModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/TradeInModeService;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-direct {p0}, Landroid/os/ITradeInMode$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/TradeInModeService;Lcom/android/server/TradeInModeService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/TradeInModeService$TradeInMode;-><init>(Lcom/android/server/TradeInModeService;)V

    return-void
.end method


# virtual methods
.method public final enforceEnterTradeInModePermission()V
    .registers 3

    .line 344
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$fgetmContext(Lcom/android/server/TradeInModeService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.ENTER_TRADE_IN_MODE"

    const-string v1, "caller missing ENTER_TRADE_IN_MODE permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceTestingPermissions()V
    .registers 2

    .line 349
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceEnterTradeInModePermission()V

    .line 350
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$misDebuggable(Lcom/android/server/TradeInModeService;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-void

    .line 351
    :cond_c
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "ro.debuggable must be set to 1"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enterEvaluationMode()Z
    .registers 4

    .line 181
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceEnterTradeInModePermission()V

    .line 182
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$mcheckEvaluationModePreconditions(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    .line 185
    :cond_d
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$mscheduleTradeInModeWipe(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 189
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 191
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v2}, Lcom/android/server/TradeInModeService;->-$$Nest$mremoveNetworkWatch(Lcom/android/server/TradeInModeService;)V

    .line 192
    iget-object v2, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v2}, Lcom/android/server/TradeInModeService;->-$$Nest$mremoveAccountsWatch(Lcom/android/server/TradeInModeService;)V
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_39

    .line 194
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x2

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.adb.tradeinmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mrestartAdbd(Lcom/android/server/TradeInModeService;)V

    const/4 p0, 0x1

    return p0

    :catchall_39
    move-exception p0

    .line 194
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    throw p0
.end method

.method public getFoldCount(I)I
    .registers 4

    .line 277
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceEnterTradeInModePermission()V

    .line 278
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->getHingeCount()I

    move-result v0

    if-lt p1, v0, :cond_29

    .line 280
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hinge "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is greater than hinge count: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TradeInModeService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 283
    :cond_29
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mgetHealthService(Lcom/android/server/TradeInModeService;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapper;->getHingeInfo()[Landroid/hardware/health/HingeInfo;

    move-result-object p0

    aget-object p0, p0, p1

    iget p0, p0, Landroid/hardware/health/HingeInfo;->numTimesFolded:I

    return p0
.end method

.method public getHingeCount()I
    .registers 1

    .line 269
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceEnterTradeInModePermission()V

    .line 270
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mgetHealthService(Lcom/android/server/TradeInModeService;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapper;->getHingeInfo()[Landroid/hardware/health/HingeInfo;

    move-result-object p0

    if-nez p0, :cond_11

    const/4 p0, 0x0

    return p0

    .line 271
    :cond_11
    array-length p0, p0

    return p0
.end method

.method public getHingeLifeSpan(I)I
    .registers 4

    .line 289
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceEnterTradeInModePermission()V

    .line 290
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->getHingeCount()I

    move-result v0

    if-lt p1, v0, :cond_29

    .line 292
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hinge "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is greater than hinge count: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TradeInModeService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 295
    :cond_29
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mgetHealthService(Lcom/android/server/TradeInModeService;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapper;->getHingeInfo()[Landroid/hardware/health/HingeInfo;

    move-result-object p0

    aget-object p0, p0, p1

    iget p0, p0, Landroid/hardware/health/HingeInfo;->expectedHingeLifespan:I

    return p0
.end method

.method public getMoistureIntrusionDetected(J)I
    .registers 9

    .line 301
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceEnterTradeInModePermission()V

    .line 302
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$fgetmContext(Lcom/android/server/TradeInModeService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0x2b

    .line 303
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 305
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 306
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 308
    new-instance v4, Lcom/android/server/TradeInModeService$TradeInMode$1;

    invoke-direct {v4, p0, v3, v2}, Lcom/android/server/TradeInModeService$TradeInMode$1;-><init>(Lcom/android/server/TradeInModeService$TradeInMode;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    if-eqz v1, :cond_2e

    const/4 p0, 0x3

    .line 326
    invoke-virtual {v0, v4, v1, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2e
    const/4 p0, -0x1

    .line 330
    :try_start_2f
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 331
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_3b} :catch_4c
    .catchall {:try_start_2f .. :try_end_3b} :catchall_3f

    .line 339
    invoke-virtual {v0, v4, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return p0

    :catchall_3f
    move-exception p0

    goto :goto_48

    .line 333
    :cond_41
    :try_start_41
    invoke-virtual {v0, v4, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_4c
    .catchall {:try_start_41 .. :try_end_44} :catchall_3f

    .line 339
    invoke-virtual {v0, v4, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return p0

    :goto_48
    invoke-virtual {v0, v4, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 340
    throw p0

    .line 339
    :catch_4c
    invoke-virtual {v0, v4, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return p0
.end method

.method public getScreenPartStatus()[I
    .registers 7

    .line 253
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceEnterTradeInModePermission()V

    .line 254
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getPhysicalDisplayIds()[J

    move-result-object p0

    array-length p0, p0

    new-array p0, p0, [I

    .line 257
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getPhysicalDisplayIds()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v2, v1, :cond_29

    aget-wide v4, v0, v2

    .line 258
    invoke-static {v4, v5}, Landroid/view/SurfaceControl;->getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 259
    iget-boolean v5, v4, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz v5, :cond_26

    add-int/lit8 v5, v3, 0x1

    .line 260
    iget v4, v4, Landroid/view/SurfaceControl$StaticDisplayInfo;->screenPartStatus:I

    aput v4, p0, v3

    move v3, v5

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_29
    return-object p0
.end method

.method public isEvaluationModeAllowed()Z
    .registers 1

    .line 205
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceEnterTradeInModePermission()V

    .line 206
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mcheckEvaluationModePreconditions(Lcom/android/server/TradeInModeService;)Z

    move-result p0

    return p0
.end method

.method public isTesting()Z
    .registers 1

    .line 245
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    .line 247
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$misForceEnabledForTesting(Lcom/android/server/TradeInModeService;)Z

    move-result p0

    return p0
.end method

.method public scheduleWipeForTesting()V
    .registers 1

    .line 212
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    .line 214
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mscheduleTradeInModeWipe(Lcom/android/server/TradeInModeService;)Z

    return-void
.end method

.method public start()Z
    .registers 5

    .line 143
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceEnterTradeInModePermission()V

    .line 144
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$mgetTradeInModeState(Lcom/android/server/TradeInModeService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    return v1

    :cond_d
    const/4 v2, 0x0

    .line 149
    const-string v3, "TradeInModeService"

    if-eqz v0, :cond_27

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot enter trade-in mode in state: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 154
    :cond_27
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misDeviceSetup(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 155
    const-string p0, "Not starting trade-in mode, device is setup."

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 158
    :cond_35
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misDebuggable(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 159
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misForceEnabledForTesting(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 161
    const-string p0, "Not starting trade-in mode, device is debuggable."

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 164
    :cond_4b
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misAdbEnabled(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 165
    const-string p0, "Not starting trade-in mode, adb is already enabled."

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 169
    :cond_59
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 171
    :try_start_5d
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mstartTradeInMode(Lcom/android/server/TradeInModeService;)V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_66

    .line 173
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_66
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    throw p0
.end method

.method public startTesting()V
    .registers 1

    .line 220
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    .line 222
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$menterTestMode(Lcom/android/server/TradeInModeService;)V

    return-void
.end method

.method public stopTesting()V
    .registers 3

    .line 228
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    .line 230
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misForceEnabledForTesting(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 236
    :try_start_f
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mleaveTestMode(Lcom/android/server/TradeInModeService;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 238
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 239
    throw p0

    .line 231
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "testing must have been started"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
