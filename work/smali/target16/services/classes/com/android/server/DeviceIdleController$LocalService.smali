.class public Lcom/android/server/DeviceIdleController$LocalService;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/DeviceIdleInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .line 2325
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistApp(ILjava/lang/String;JIIZILjava/lang/String;)V
    .registers 10

    .line 2362
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppInternal(ILjava/lang/String;JIIZILjava/lang/String;)V

    return-void
.end method

.method public addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V
    .registers 19

    .line 2353
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppInternal(ILjava/lang/String;JIIZILjava/lang/String;)V

    return-void
.end method

.method public addPowerSaveTempWhitelistAppDirect(IJIZILjava/lang/String;I)V
    .registers 11

    .line 2370
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    move-wide v0, p2

    move p2, p1

    move p1, p8

    move-object p8, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move-wide p3, v0

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJIZILjava/lang/String;)V

    return-void
.end method

.method public exitIdle(Ljava/lang/String;)V
    .registers 2

    .line 2346
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->exitIdleInternal(Ljava/lang/String;)V

    return-void
.end method

.method public getFullPowerWhitelistExceptIdle()[Ljava/lang/String;
    .registers 1

    .line 2399
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$mgetFullPowerWhitelistInternalUnchecked(Lcom/android/server/DeviceIdleController;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationAllowlistDuration()J
    .registers 3

    .line 2377
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmConstants(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object p0

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    return-wide v0
.end method

.method public getPowerSaveTempWhitelistAppIds()[I
    .registers 1

    .line 2420
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getAppIdTempWhitelistInternal()[I

    move-result-object p0

    return-object p0
.end method

.method public getPowerSaveWhitelistSystemAppIds()[I
    .registers 1

    .line 2404
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistSystemAppIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getPowerSaveWhitelistUserAppIds()[I
    .registers 1

    .line 2415
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistUserAppIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getTempAllowListType(II)I
    .registers 3

    .line 2436
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->-$$Nest$mgetTempAllowListType(Lcom/android/server/DeviceIdleController;II)I

    move-result p0

    return p0
.end method

.method public isAppOnWhitelist(I)Z
    .registers 2

    .line 2394
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->isAppOnWhitelistInternal(I)Z

    move-result p0

    return p0
.end method

.method public onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 4

    .line 2328
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 2329
    :try_start_3
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->-$$Nest$monConstraintStateChangedLocked(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2330
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public registerDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
    .registers 4

    .line 2336
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->-$$Nest$mregisterDeviceIdleConstraintInternal(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V

    return-void
.end method

.method public registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .registers 2

    .line 2425
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    return-void
.end method

.method public setAlarmsActive(Z)V
    .registers 2

    .line 2388
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->setAlarmsActive(Z)V

    return-void
.end method

.method public setJobsActive(Z)V
    .registers 2

    .line 2382
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->setJobsActive(Z)V

    return-void
.end method

.method public unregisterDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
    .registers 2

    .line 2341
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0, p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$munregisterDeviceIdleConstraintInternal(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V

    return-void
.end method

.method public unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .registers 2

    .line 2430
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0, p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$munregisterStationaryListener(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    return-void
.end method
