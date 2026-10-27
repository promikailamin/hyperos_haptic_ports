.class final Lcom/android/server/display/DisplayManagerService$BinderService;
.super Landroid/hardware/display/IDisplayManager$Stub;
.source "DisplayManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public static synthetic $r8$lambda$TgC-usWJ4qMLycF_DVusMjG7Z5s(Lcom/android/server/display/DisplayManagerService$BinderService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Lcom/android/server/display/LogicalDisplay;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService$BinderService;->lambda$setBrightnessConfigurationForUser$0(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 4851
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 4852
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method


# virtual methods
.method public areUserDisabledHdrTypesAllowed()Z
    .registers 2

    .line 5121
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5122
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmAreUserDisabledHdrTypesAllowed(Lcom/android/server/display/DisplayManagerService;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 5123
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .registers 4

    .line 4979
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay_enforcePermission()V

    if-eqz p1, :cond_17

    .line 4984
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4986
    :try_start_9
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mconnectWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 4988
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4989
    throw p0

    .line 4981
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "address must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I
    .registers 13

    .line 5149
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v5, 0x0

    .line 5150
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 5149
    invoke-static/range {v0 .. v7}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mcreateVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public disableConnectedDisplay(I)V
    .registers 3

    .line 5770
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->disableConnectedDisplay_enforcePermission()V

    .line 5771
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->enableConnectedDisplay(IZ)V

    return-void
.end method

.method public disconnectWifiDisplay()V
    .registers 3

    .line 4999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5001
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdisconnectWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 5003
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5004
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 5207
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "DisplayManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 5209
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5211
    :try_start_13
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdumpInternal(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    .line 5213
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5214
    throw p0
.end method

.method public enableConnectedDisplay(I)V
    .registers 3

    .line 5764
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->enableConnectedDisplay_enforcePermission()V

    .line 5765
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->enableConnectedDisplay(IZ)V

    return-void
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .registers 4

    .line 5026
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay_enforcePermission()V

    if-eqz p1, :cond_17

    .line 5031
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5033
    :try_start_9
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mforgetWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 5035
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5036
    throw p0

    .line 5028
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "address must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;
    .registers 6

    .line 5252
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getAmbientBrightnessStats_enforcePermission()V

    .line 5253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5254
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5255
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5257
    :try_start_f
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_2f

    .line 5258
    :try_start_16
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 5259
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_2c

    .line 5262
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_2c
    move-exception p0

    .line 5260
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p0

    .line 5262
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5263
    throw p0
.end method

.method public getBrightness(I)F
    .registers 4

    .line 5469
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightness_enforcePermission()V

    .line 5470
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5472
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetBrightnessInternal(Lcom/android/server/display/DisplayManagerService;I)F

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 5474
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5475
    throw p0
.end method

.method public getBrightnessByUnit(II)F
    .registers 6

    .line 5480
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5481
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetBrightnessInternal(Lcom/android/server/display/DisplayManagerService;I)F

    move-result v1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_45

    .line 5483
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetBrightnessInfoInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/hardware/display/BrightnessInfo;

    move-result-object p0

    if-nez p0, :cond_34

    .line 5485
    const-string p0, "DisplayManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBrightnessByUnit: no BrightnessInfo for display "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x40800000    # -1.0f

    .line 5488
    monitor-exit v0

    return p0

    :catchall_32
    move-exception p0

    goto :goto_8a

    .line 5490
    :cond_34
    iget p1, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    iget p0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    invoke-static {p1, p0, v1}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    .line 5494
    invoke-static {p0}, Lcom/android/internal/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result p0

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    .line 5497
    monitor-exit v0

    return p0

    :cond_45
    const/4 v2, 0x2

    if-ne p2, v2, :cond_73

    .line 5499
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_5c

    .line 5504
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerController;->convertToAdjustedNits(F)F

    move-result p0

    monitor-exit v0

    return p0

    .line 5501
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No DisplayPowerController for display "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5506
    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid brightness unit: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5508
    :goto_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_7 .. :try_end_8b} :catchall_32

    throw p0
.end method

.method public getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 7

    .line 5318
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForDisplay_enforcePermission()V

    .line 5319
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_16

    .line 5320
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "Permission required to read the display brightness configuration of another user"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5325
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5326
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetUserManager(Lcom/android/server/display/DisplayManagerService;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result p2

    .line 5328
    :try_start_24
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_49

    .line 5330
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 5331
    invoke-static {v3, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetBrightnessConfigForDisplayWithPdsFallbackLocked(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p2

    if-nez p2, :cond_42

    .line 5335
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetDpcFromUniqueIdLocked(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 5337
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p2

    goto :goto_42

    :catchall_40
    move-exception p0

    goto :goto_47

    .line 5340
    :cond_42
    :goto_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_40

    .line 5343
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    .line 5341
    :goto_47
    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_40

    :try_start_48
    throw p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p0

    .line 5343
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5344
    throw p0
.end method

.method public getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 5

    .line 5351
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5352
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 5353
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    .line 5354
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 5355
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_20

    .line 5356
    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/DisplayManagerService$BinderService;->getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0

    :catchall_20
    move-exception p0

    .line 5355
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 7

    .line 5220
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessEvents_enforcePermission()V

    .line 5222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5223
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    const/16 v2, 0x2b

    .line 5224
    invoke-virtual {v1, v2, v0, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_31

    .line 5230
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_33

    :cond_2f
    move v2, v3

    goto :goto_33

    :cond_31
    if-nez p1, :cond_2f

    .line 5237
    :goto_33
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 5238
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5240
    :try_start_3b
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v4

    monitor-enter v4
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_5a

    .line 5241
    :try_start_42
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 5242
    invoke-virtual {p0, p1, v2}, Lcom/android/server/display/DisplayPowerController;->getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    monitor-exit v4
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_57

    .line 5245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_57
    move-exception p0

    .line 5243
    :try_start_58
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p0

    .line 5245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5246
    throw p0
.end method

.method public getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;
    .registers 4

    .line 5379
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessInfo_enforcePermission()V

    .line 5380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5382
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetBrightnessInfoInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/hardware/display/BrightnessInfo;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 5384
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5385
    throw p0
.end method

.method public getConnectionPreference(Ljava/lang/String;)I
    .registers 4

    if-eqz p1, :cond_15

    .line 5549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5551
    :try_start_6
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetConnectionPreferenceInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)I

    move-result p0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    .line 5553
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5554
    throw p0

    .line 5546
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "uniqueId must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 5

    .line 5364
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultBrightnessConfiguration_enforcePermission()V

    .line 5365
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5367
    :try_start_7
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_27

    .line 5368
    :try_start_e
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 5369
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_24

    .line 5372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_24
    move-exception p0

    .line 5370
    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    throw p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 5372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5373
    throw p0
.end method

.method public getDefaultDozeBrightness(I)F
    .registers 4

    .line 5816
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultDozeBrightness_enforcePermission()V

    .line 5817
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayDeviceConfigProvider(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

    move-result-object p0

    .line 5818
    invoke-interface {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;->getDisplayDeviceConfig(I)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 5823
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getDefaultDozeBrightness()F

    move-result p0

    return p0

    .line 5820
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display ID does not have a config for doze-default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 4

    .line 5733
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5735
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetDisplayDecorationSupportInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 5737
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5738
    throw p0
.end method

.method public getDisplayIds(Z)[I
    .registers 6

    .line 4879
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4880
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4882
    :try_start_8
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_21

    .line 4883
    :try_start_f
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayIdsLocked(IZ)[I

    move-result-object p0

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 4886
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1e
    move-exception p0

    .line 4884
    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    .line 4886
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4887
    throw p0
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .registers 5

    .line 4865
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4868
    :try_start_8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetDisplayInfoInternal(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 4870
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_12
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4871
    throw p0
.end method

.method public getDisplayTopology()Landroid/hardware/display/DisplayTopology;
    .registers 2

    .line 5828
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayTopologyCoordinator(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayTopologyCoordinator;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 5831
    :cond_a
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayTopologyCoordinator(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayTopologyCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->getTopology()Landroid/hardware/display/DisplayTopology;

    move-result-object p0

    return-object p0
.end method

.method public getDozeBrightnessSensorValueToBrightness(I)[F
    .registers 4

    .line 5803
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDozeBrightnessSensorValueToBrightness_enforcePermission()V

    .line 5804
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayDeviceConfigProvider(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

    move-result-object p0

    .line 5805
    invoke-interface {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;->getDisplayDeviceConfig(I)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 5810
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getDozeBrightnessSensorValueToBrightness()[F

    move-result-object p0

    return-object p0

    .line 5807
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display ID does not have a config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;
    .registers 3

    .line 5660
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmIsHdrOutputControlEnabled(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 5661
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetHDR_CONVERSION_MODE_UNSUPPORTED()Landroid/hardware/display/HdrConversionMode;

    move-result-object p0

    return-object p0

    .line 5663
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5665
    :try_start_11
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getHdrConversionModeInternal()Landroid/hardware/display/HdrConversionMode;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 5667
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5668
    throw p0
.end method

.method public getHdrConversionModeSetting()Landroid/hardware/display/HdrConversionMode;
    .registers 3

    .line 5647
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmIsHdrOutputControlEnabled(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 5648
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetHDR_CONVERSION_MODE_UNSUPPORTED()Landroid/hardware/display/HdrConversionMode;

    move-result-object p0

    return-object p0

    .line 5650
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5652
    :try_start_11
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getHdrConversionModeSettingInternal()Landroid/hardware/display/HdrConversionMode;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 5654
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5655
    throw p0
.end method

.method public getHighestHdrSdrRatio(I)F
    .registers 4

    .line 5790
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayDeviceConfigProvider(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

    move-result-object p0

    .line 5791
    invoke-interface {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;->getDisplayDeviceConfig(I)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 5796
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessData()Lcom/android/server/display/config/HdrBrightnessData;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 5797
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessData()Lcom/android/server/display/config/HdrBrightnessData;

    move-result-object p0

    iget p0, p0, Lcom/android/server/display/config/HdrBrightnessData;->highestHdrSdrRatio:F

    return p0

    :cond_19
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 5793
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display ID does not have a config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMinimumBrightnessCurve()Landroid/hardware/display/Curve;
    .registers 3

    .line 5567
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5569
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getMinimumBrightnessCurveInternal()Landroid/hardware/display/Curve;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 5571
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5572
    throw p0
.end method

.method public getOverlaySupport()Landroid/hardware/OverlayProperties;
    .registers 3

    .line 5754
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5756
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getOverlaySupportInternal()Landroid/hardware/OverlayProperties;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 5758
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5759
    throw p0
.end method

.method public getPreferredWideGamutColorSpaceId()I
    .registers 3

    .line 5577
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5579
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getPreferredWideGamutColorSpaceIdInternal()I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 5581
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5582
    throw p0
.end method

.method public getRefreshRateSwitchingType()I
    .registers 3

    .line 5723
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5725
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getRefreshRateSwitchingTypeInternal()I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 5727
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5728
    throw p0
.end method

.method public getStableDisplaySize()Landroid/graphics/Point;
    .registers 3

    .line 4905
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4907
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetStableDisplaySizeInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/graphics/Point;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4909
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4910
    throw p0
.end method

.method public getSupportedHdrOutputTypes()[I
    .registers 3

    .line 5674
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmIsHdrOutputControlEnabled(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 5675
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetEMPTY_ARRAY()[I

    move-result-object p0

    return-object p0

    .line 5677
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5679
    :try_start_11
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetSupportedHdrOutputTypesInternal(Lcom/android/server/display/DisplayManagerService;)[I

    move-result-object p0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 5681
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5682
    throw p0
.end method

.method public getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;
    .registers 4

    .line 5622
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5624
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getSystemPreferredDisplayModeInternal(I)Landroid/view/Display$Mode;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 5626
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5627
    throw p0
.end method

.method public getUserDisabledHdrTypes()[I
    .registers 2

    .line 5128
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5129
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmUserDisabledHdrTypes(Lcom/android/server/display/DisplayManagerService;)[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 5130
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;
    .registers 4

    .line 5612
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5614
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getUserPreferredDisplayModeInternal(I)Landroid/view/Display$Mode;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 5616
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5617
    throw p0
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .registers 4

    .line 5070
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "getWifiDisplayStatus()"

    .line 5071
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mcheckCallingPermission(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 5073
    :goto_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5075
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetWifiDisplayStatusInternal(Lcom/android/server/display/DisplayManagerService;Z)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_26

    .line 5077
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5078
    throw p0
.end method

.method public isMinimalPostProcessingRequested(I)Z
    .registers 3

    .line 5390
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5391
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    .line 5392
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getRequestedMinimalPostProcessingLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 5393
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public isUidPresentOnDisplay(II)Z
    .registers 5

    .line 4892
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4894
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$misUidPresentOnDisplayInternal(Lcom/android/server/display/DisplayManagerService;II)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4896
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4897
    throw p0
.end method

.method public final synthetic lambda$setBrightnessConfigurationForUser$0(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Lcom/android/server/display/LogicalDisplay;)V
    .registers 7

    .line 5281
    invoke-virtual {p4}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    return-void

    .line 5285
    :cond_a
    invoke-virtual {p4}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p4

    .line 5286
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p4}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p1, p4, p2, p3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetBrightnessConfigurationForDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 5561
    new-instance v0, Lcom/android/server/display/DisplayManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmFlags(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayManagerShellCommand;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public overrideHdrTypes(I[I)V
    .registers 5

    .line 5097
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5098
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetDisplayToken(Lcom/android/server/display/DisplayManagerService;I)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 5102
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    .line 5104
    invoke-static {p0, p2}, Lcom/android/server/display/DisplayControl;->overrideHdrTypes(Landroid/os/IBinder;[I)V

    return-void

    :catchall_14
    move-exception p0

    goto :goto_2d

    .line 5100
    :cond_16
    :try_start_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid display: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5102
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_14

    throw p0
.end method

.method public pauseWifiDisplay()V
    .registers 3

    .line 5042
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay_enforcePermission()V

    .line 5044
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5046
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mpauseWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 5048
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5049
    throw p0
.end method

.method public registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .registers 4

    const-wide/16 v0, 0x47

    .line 4915
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->registerCallbackWithEventMask(Landroid/hardware/display/IDisplayManagerCallback;J)V

    return-void
.end method

.method public registerCallbackWithEventMask(Landroid/hardware/display/IDisplayManagerCallback;J)V
    .registers 12

    if-eqz p1, :cond_35

    .line 4930
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 4931
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-wide/16 v0, 0x20

    and-long/2addr v0, p2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_20

    .line 4936
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_DISPLAYS"

    const-string v4, "Permission required to get signals about connection events."

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4940
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4942
    :try_start_24
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mregisterCallbackInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;IIJ)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2f

    .line 4944
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4945
    throw p0

    .line 4927
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .registers 4

    .line 5183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5185
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mreleaseVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 5187
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5188
    throw p0
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 5010
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay_enforcePermission()V

    if-eqz p1, :cond_17

    .line 5015
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5017
    :try_start_9
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mrenameWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 5019
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5020
    throw p0

    .line 5012
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "address must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestColorMode(II)V
    .registers 5

    .line 5136
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->requestColorMode_enforcePermission()V

    .line 5137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5139
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mrequestColorModeInternal(Lcom/android/server/display/DisplayManagerService;II)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 5141
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5142
    throw p0
.end method

.method public requestDisplayModes(Landroid/os/IBinder;I[I)V
    .registers 4

    .line 5783
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->requestDisplayModes_enforcePermission()V

    .line 5784
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayModeDirector(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/mode/DisplayModeDirector;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/mode/DisplayModeDirector;->requestDisplayModes(Landroid/os/IBinder;I[I)V

    return-void
.end method

.method public requestDisplayPower(II)Z
    .registers 3

    .line 5776
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->requestDisplayPower_enforcePermission()V

    .line 5777
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->requestDisplayPower(II)Z

    move-result p0

    return p0
.end method

.method public resetUserPreferredDisplayMode(I)V
    .registers 4

    .line 5601
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->resetUserPreferredDisplayMode_enforcePermission()V

    .line 5602
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5604
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->resetUserPreferredDisplayModeInternal(I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 5606
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5607
    throw p0
.end method

.method public resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .registers 7

    if-lez p2, :cond_1c

    if-lez p3, :cond_1c

    if-lez p4, :cond_1c

    .line 5160
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5162
    :try_start_a
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mresizeVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_17

    .line 5164
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5165
    throw p0

    .line 5157
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width, height, and densityDpi must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resumeWifiDisplay()V
    .registers 3

    .line 5055
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay_enforcePermission()V

    .line 5057
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5059
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mresumeWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 5061
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5062
    throw p0
.end method

.method public setAreUserDisabledHdrTypesAllowed(Z)V
    .registers 4

    .line 5110
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setAreUserDisabledHdrTypesAllowed_enforcePermission()V

    .line 5111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5113
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setAreUserDisabledHdrTypesAllowedInternal(Z)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 5115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5116
    throw p0
.end method

.method public setBrightness(IF)V
    .registers 5

    .line 5414
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightness_enforcePermission()V

    .line 5415
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5417
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetBrightnessInternal(Lcom/android/server/display/DisplayManagerService;IF)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 5419
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5420
    throw p0
.end method

.method public setBrightnessByUnit(IFI)V
    .registers 6

    .line 5427
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessByUnit_enforcePermission()V

    .line 5428
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_66

    const/4 p3, 0x0

    cmpg-float p3, p2, p3

    if-ltz p3, :cond_4a

    const/high16 p3, 0x42c80000    # 100.0f

    cmpl-float v1, p2, p3

    if-gtz v1, :cond_4a

    .line 5436
    :try_start_18
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mgetBrightnessInfoInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v1

    if-nez v1, :cond_3c

    .line 5438
    const-string p0, "DisplayManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setBrightnessByUnit: no BrightnessInfo for display "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5440
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    goto/16 :goto_be

    :cond_3c
    div-float/2addr p2, p3

    .line 5444
    invoke-static {p2}, Lcom/android/internal/display/BrightnessUtils;->convertGammaToLinear(F)F

    move-result p2

    .line 5447
    iget p3, v1, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    iget v1, v1, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    invoke-static {p3, v1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p2

    goto :goto_81

    .line 5432
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempted to set invalid brightness percentage: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    const/4 v1, 0x2

    if-ne p3, v1, :cond_a7

    .line 5450
    iget-object p3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/display/DisplayPowerController;

    if-eqz p3, :cond_90

    .line 5455
    invoke-virtual {p3, p2}, Lcom/android/server/display/DisplayPowerController;->getBrightnessFromAdjustedNits(F)F

    move-result p2

    .line 5456
    invoke-static {p2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p3

    if-eqz p3, :cond_88

    .line 5462
    :goto_81
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetBrightnessInternal(Lcom/android/server/display/DisplayManagerService;IF)V

    .line 5463
    monitor-exit v0

    return-void

    .line 5457
    :cond_88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This device does not support nits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5452
    :cond_90
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No DisplayPowerController for display "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5460
    :cond_a7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid brightness unit: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5463
    :goto_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_18 .. :try_end_bf} :catchall_39

    throw p0
.end method

.method public setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    .line 5299
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForDisplay_enforcePermission()V

    .line 5300
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p3, v0, :cond_16

    .line 5301
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "Permission required to change the display brightness configuration of another user"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5306
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5308
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetBrightnessConfigurationForDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    .line 5310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_23
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5311
    throw p0
.end method

.method public setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 9

    .line 5270
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForUser_enforcePermission()V

    .line 5271
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_16

    .line 5272
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "Permission required to change the display brightness configuration of another user"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5277
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5279
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_37

    .line 5280
    :try_start_21
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v3

    new-instance v4, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayManagerService$BinderService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 5289
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_34

    .line 5291
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_34
    move-exception p0

    .line 5289
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p0

    .line 5291
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5292
    throw p0
.end method

.method public setConnectionPreference(Ljava/lang/String;I)V
    .registers 5

    .line 5529
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setConnectionPreference_enforcePermission()V

    if-eqz p1, :cond_17

    .line 5535
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5537
    :try_start_9
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetConnectionPreferenceInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 5539
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5540
    throw p0

    .line 5531
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "uniqueId must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDisplayIdToMirror(Landroid/os/IBinder;I)V
    .registers 6

    .line 5743
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5744
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 5745
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/VirtualDisplayAdapter;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 5746
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/VirtualDisplayAdapter;

    move-result-object p0

    if-nez v1, :cond_22

    const/4 p2, -0x1

    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setDisplayIdToMirror(Landroid/os/IBinder;I)V

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_2a

    .line 5749
    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_26

    throw p0
.end method

.method public setDisplayTopology(Landroid/hardware/display/DisplayTopology;)V
    .registers 3

    .line 5837
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setDisplayTopology_enforcePermission()V

    .line 5838
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayTopologyCoordinator(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayTopologyCoordinator;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 5839
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayTopologyCoordinator(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayTopologyCoordinator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->setTopology(Landroid/hardware/display/DisplayTopology;)V

    :cond_14
    return-void
.end method

.method public setHdrConversionMode(Landroid/hardware/display/HdrConversionMode;)V
    .registers 4

    .line 5633
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setHdrConversionMode_enforcePermission()V

    .line 5634
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmIsHdrOutputControlEnabled(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 5637
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5639
    :try_start_10
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setHdrConversionModeInternal(Landroid/hardware/display/HdrConversionMode;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    .line 5641
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5642
    throw p0
.end method

.method public setRefreshRateSwitchingType(I)V
    .registers 4

    .line 5712
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setRefreshRateSwitchingType_enforcePermission()V

    .line 5713
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5715
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setRefreshRateSwitchingTypeInternal(I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 5717
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5718
    throw p0
.end method

.method public setShouldAlwaysRespectAppRequestedMode(Z)V
    .registers 4

    .line 5688
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setShouldAlwaysRespectAppRequestedMode_enforcePermission()V

    .line 5689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5691
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setShouldAlwaysRespectAppRequestedModeInternal(Z)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 5693
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5694
    throw p0
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .registers 6

    .line 5514
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryAutoBrightnessAdjustment_enforcePermission()V

    .line 5515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5517
    :try_start_7
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_26

    .line 5518
    :try_start_e
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 5519
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 5520
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_23

    .line 5522
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_23
    move-exception p0

    .line 5520
    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    .line 5522
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5523
    throw p0
.end method

.method public setTemporaryBrightness(IF)V
    .registers 6

    .line 5399
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryBrightness_enforcePermission()V

    .line 5400
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5402
    :try_start_7
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_25

    .line 5403
    :try_start_e
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 5404
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayPowerController;->setTemporaryBrightness(F)V

    .line 5405
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_22

    .line 5407
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_22
    move-exception p0

    .line 5405
    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p0

    .line 5407
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5408
    throw p0
.end method

.method public setUserDisabledHdrTypes([I)V
    .registers 4

    .line 5084
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setUserDisabledHdrTypes_enforcePermission()V

    .line 5086
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5088
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setUserDisabledHdrTypesInternal([I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 5090
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5091
    throw p0
.end method

.method public setUserPreferredDisplayMode(ILandroid/view/Display$Mode;Z)V
    .registers 6

    .line 5589
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setUserPreferredDisplayMode_enforcePermission()V

    .line 5590
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5592
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;Z)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 5594
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5595
    throw p0
.end method

.method public setVirtualDisplayRotation(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    .registers 5

    .line 5197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5199
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetVirtualDisplayRotationInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 5201
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5202
    throw p0
.end method

.method public setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .registers 5

    if-eqz p2, :cond_11

    .line 5170
    invoke-virtual {p2}, Landroid/view/Surface;->isSingleBuffered()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 5171
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Surface can\'t be single-buffered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5173
    :cond_11
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5175
    :try_start_15
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetVirtualDisplaySurfaceInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_22

    .line 5177
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_22
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5178
    throw p0
.end method

.method public shouldAlwaysRespectAppRequestedMode()Z
    .registers 3

    .line 5700
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->shouldAlwaysRespectAppRequestedMode_enforcePermission()V

    .line 5701
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5703
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->shouldAlwaysRespectAppRequestedModeInternal()Z

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 5705
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5706
    throw p0
.end method

.method public startWifiDisplayScan()V
    .registers 4

    .line 4951
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan_enforcePermission()V

    .line 4953
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 4954
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4956
    :try_start_b
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mstartWifiDisplayScanInternal(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    .line 4958
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4959
    throw p0
.end method

.method public stopWifiDisplayScan()V
    .registers 4

    .line 4965
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan_enforcePermission()V

    .line 4967
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 4968
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4970
    :try_start_b
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mstopWifiDisplayScanInternal(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    .line 4972
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4973
    throw p0
.end method
