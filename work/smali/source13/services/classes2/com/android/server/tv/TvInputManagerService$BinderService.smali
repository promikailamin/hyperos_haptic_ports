.class final Lcom/android/server/tv/TvInputManagerService$BinderService;
.super Landroid/media/tv/ITvInputManager$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2

    .line 1100
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    return-void
.end method

.method private ensureCaptureTvInputPermission()V
    .registers 3

    .line 2426
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAPTURE_TV_INPUT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 2431
    return-void

    .line 2429
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CAPTURE_TV_INPUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureParentalControlsPermission()V
    .registers 3

    .line 1478
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_PARENTAL_CONTROLS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 1484
    return-void

    .line 1481
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have parental controls permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureTisExtensionInterfacePermission()V
    .registers 3

    .line 2637
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TIS_EXTENSION_INTERFACE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 2642
    return-void

    .line 2640
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TIS_EXTENSION_INTERFACE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureTunerResourceAccessPermission()V
    .registers 3

    .line 2629
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TUNER_RESOURCE_ACCESS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 2634
    return-void

    .line 2632
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TUNER_RESOURCE_ACCESS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .registers 3

    .line 1162
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1162
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1164
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_1b

    array-length v1, v0

    if-lez v1, :cond_1b

    .line 1165
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 1167
    :cond_1b
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method private getClientPidLocked(Ljava/lang/String;)I
    .registers 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException;
        }
    .end annotation

    .line 2621
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmSessionIdToSessionStateMap(Lcom/android/server/tv/TvInputManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2625
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmSessionIdToSessionStateMap(Lcom/android/server/tv/TvInputManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingPid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v0

    return v0

    .line 2622
    :cond_1d
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client Pid not found with sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;ILjava/lang/String;I)Landroid/media/tv/ITvInputHardware;
    .registers 22
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/media/tv/ITvInputHardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "userId"    # I
    .param p5, "tvInputSessionId"    # Ljava/lang/String;
    .param p6, "priorityHint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2181
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    .line 2183
    const/4 v0, 0x0

    return-object v0

    .line 2186
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2187
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 2188
    .local v12, "callingUid":I
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v5, "acquireTvInputHardware"

    move/from16 v13, p4

    invoke-static {v0, v4, v12, v13, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v14

    .line 2191
    .local v14, "resolvedUserId":I
    :try_start_27
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move v8, v12

    move v9, v14

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/tv/TvInputHardwareManager;->acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;IILjava/lang/String;I)Landroid/media/tv/ITvInputHardware;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_27 .. :try_end_3d} :catchall_41

    .line 2195
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2191
    return-object v0

    .line 2195
    :catchall_41
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2196
    throw v0
.end method

.method public addBlockedRating(Ljava/lang/String;I)V
    .registers 10
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1445
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1446
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1447
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "addBlockedRating"

    .line 1446
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1448
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1450
    .local v1, "identity":J
    :try_start_17
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_38

    .line 1451
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1452
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpersistentDataStore(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v5

    .line 1453
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    .line 1452
    invoke-virtual {v5, v6}, Lcom/android/server/tv/PersistentDataStore;->addBlockedRating(Landroid/media/tv/TvContentRating;)V

    .line 1454
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_35

    .line 1456
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1457
    nop

    .line 1458
    return-void

    .line 1454
    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "rating":Ljava/lang/String;
    .end local p2    # "userId":I
    :try_start_37
    throw v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1456
    .restart local v0    # "resolvedUserId":I
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "rating":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catchall_38
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1457
    throw v3
.end method

.method public addHardwareDevice(I)V
    .registers 5
    .param p1, "deviceId"    # I

    .line 2597
    new-instance v0, Landroid/media/tv/TvInputHardwareInfo$Builder;

    invoke-direct {v0}, Landroid/media/tv/TvInputHardwareInfo$Builder;-><init>()V

    .line 2598
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->deviceId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    .line 2599
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->type(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    .line 2600
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->audioType(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    .line 2601
    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/media/tv/TvInputHardwareInfo$Builder;->audioAddress(Ljava/lang/String;)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    .line 2602
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->hdmiPortId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    .line 2603
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo$Builder;->build()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v0

    .line 2604
    .local v0, "info":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/tv/TvInputHardwareManager;->onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V

    .line 2605
    return-void
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z
    .registers 16
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "config"    # Landroid/media/tv/TvStreamConfig;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2368
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureCaptureTvInputPermission()V

    .line 2370
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2371
    .local v0, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2372
    .local v8, "callingUid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v4, "captureFrame"

    invoke-static {v2, v3, v8, p4, v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v9

    .line 2375
    .local v9, "resolvedUserId":I
    const/4 v2, 0x0

    .line 2376
    .local v2, "hardwareInputId":Ljava/lang/String;
    :try_start_18
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_aa

    .line 2377
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v9}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 2378
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4d

    .line 2379
    const-string v5, "TvInputManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "input not found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    const/4 v5, 0x0

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_1f .. :try_end_49} :catchall_a7

    .line 2395
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2380
    return v5

    .line 2382
    :cond_4d
    :try_start_4d
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_59
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2383
    .local v6, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_8a

    .line 2385
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5
    :try_end_87
    .catchall {:try_start_4d .. :try_end_87} :catchall_a7

    move-object v2, v5

    .line 2387
    move-object v10, v2

    goto :goto_8c

    .line 2389
    .end local v6    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_8a
    goto :goto_59

    .line 2382
    :cond_8b
    move-object v10, v2

    .line 2390
    .end local v2    # "hardwareInputId":Ljava/lang/String;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .local v10, "hardwareInputId":Ljava/lang/String;
    :goto_8c
    :try_start_8c
    monitor-exit v3
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_a4

    .line 2391
    :try_start_8d
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    .line 2392
    if-eqz v10, :cond_97

    move-object v3, v10

    goto :goto_98

    :cond_97
    move-object v3, p1

    .line 2391
    :goto_98
    move-object v4, p2

    move-object v5, p3

    move v6, v8

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z

    move-result v2
    :try_end_a0
    .catchall {:try_start_8d .. :try_end_a0} :catchall_aa

    .line 2395
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2391
    return v2

    .line 2390
    :catchall_a4
    move-exception v4

    move-object v2, v10

    goto :goto_a8

    .end local v10    # "hardwareInputId":Ljava/lang/String;
    .restart local v2    # "hardwareInputId":Ljava/lang/String;
    :catchall_a7
    move-exception v4

    :goto_a8
    :try_start_a8
    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    .end local v0    # "identity":J
    .end local v8    # "callingUid":I
    .end local v9    # "resolvedUserId":I
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "inputId":Ljava/lang/String;
    .end local p2    # "surface":Landroid/view/Surface;
    .end local p3    # "config":Landroid/media/tv/TvStreamConfig;
    .end local p4    # "userId":I
    :try_start_a9
    throw v4
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_aa

    .line 2395
    .end local v2    # "hardwareInputId":Ljava/lang/String;
    .restart local v0    # "identity":J
    .restart local v8    # "callingUid":I
    .restart local v9    # "resolvedUserId":I
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "inputId":Ljava/lang/String;
    .restart local p2    # "surface":Landroid/view/Surface;
    .restart local p3    # "config":Landroid/media/tv/TvStreamConfig;
    .restart local p4    # "userId":I
    :catchall_aa
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2396
    throw v2
.end method

.method public createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "frame"    # Landroid/graphics/Rect;
    .param p4, "userId"    # I

    .line 1902
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1903
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "createOverlayView"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1905
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1907
    .local v2, "identity":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_37

    .line 1909
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1910
    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_27
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_24} :catch_27
    .catchall {:try_start_1b .. :try_end_24} :catchall_25

    .line 1913
    goto :goto_2f

    .line 1914
    :catchall_25
    move-exception v5

    goto :goto_35

    .line 1911
    :catch_27
    move-exception v5

    .line 1912
    .local v5, "e":Ljava/lang/Exception;
    :try_start_28
    const-string v6, "TvInputManagerService"

    const-string v7, "error in createOverlayView"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1914
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_25

    .line 1916
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1917
    nop

    .line 1918
    return-void

    .line 1914
    :goto_35
    :try_start_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_25

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "windowToken":Landroid/os/IBinder;
    .end local p3    # "frame":Landroid/graphics/Rect;
    .end local p4    # "userId":I
    :try_start_36
    throw v5
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 1916
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "windowToken":Landroid/os/IBinder;
    .restart local p3    # "frame":Landroid/graphics/Rect;
    .restart local p4    # "userId":I
    :catchall_37
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1917
    throw v4
.end method

.method public createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;ZII)V
    .registers 35
    .param p1, "client"    # Landroid/media/tv/ITvInputClient;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "isRecordingSession"    # Z
    .param p4, "seq"    # I
    .param p5, "userId"    # I

    .line 1489
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v9, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1490
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 1491
    .local v14, "callingPid":I
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const-string v2, "createSession"

    invoke-static {v0, v14, v15, v9, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v13

    .line 1493
    .local v13, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 1510
    .local v23, "identity":J
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1512
    .local v12, "uniqueSessionId":Ljava/lang/String;
    :try_start_22
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_17b

    .line 1513
    :try_start_29
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v0
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_170

    if-eq v9, v0, :cond_5c

    :try_start_31
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmRunningProfiles(Lcom/android/server/tv/TvInputManagerService;)Ljava/util/Set;

    move-result-object v0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    if-nez p3, :cond_5c

    .line 1518
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1519
    monitor-exit v25
    :try_end_51
    .catchall {:try_start_31 .. :try_end_51} :catchall_55

    .line 1569
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1519
    return-void

    .line 1567
    :catchall_55
    move-exception v0

    move-object v4, v12

    move v12, v13

    move v5, v14

    move v6, v15

    goto/16 :goto_175

    .line 1521
    :cond_5c
    :try_start_5c
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0, v13}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 1522
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :try_end_6c
    .catchall {:try_start_5c .. :try_end_6c} :catchall_170

    move-object v11, v2

    .line 1523
    .local v11, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v11, :cond_99

    .line 1524
    :try_start_6f
    const-string v2, "TvInputManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find input state for inputId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1526
    monitor-exit v25
    :try_end_95
    .catchall {:try_start_6f .. :try_end_95} :catchall_55

    .line 1569
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1526
    return-void

    .line 1528
    :cond_99
    :try_start_99
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    move-object/from16 v26, v2

    .line 1529
    .local v26, "info":Landroid/media/tv/TvInputInfo;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :try_end_ad
    .catchall {:try_start_99 .. :try_end_ad} :catchall_170

    .line 1530
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v2, :cond_db

    .line 1531
    nop

    .line 1532
    :try_start_b0
    invoke-virtual/range {v26 .. v26}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 1531
    invoke-static {v3, v4, v5, v13}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1533
    .local v3, "tisUid":I
    new-instance v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    iget-object v5, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual/range {v26 .. v26}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v13, v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$ServiceState-IA;)V

    move-object v2, v4

    .line 1534
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d8
    .catchall {:try_start_b0 .. :try_end_d8} :catchall_55

    move-object/from16 v27, v2

    goto :goto_dd

    .line 1530
    .end local v3    # "tisUid":I
    :cond_db
    move-object/from16 v27, v2

    .line 1537
    .end local v2    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .local v27, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :goto_dd
    :try_start_dd
    invoke-static/range {v27 .. v27}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetreconnecting(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2
    :try_end_e1
    .catchall {:try_start_dd .. :try_end_e1} :catchall_170

    if-eqz v2, :cond_f5

    .line 1538
    :try_start_e3
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1539
    monitor-exit v25
    :try_end_f1
    .catchall {:try_start_e3 .. :try_end_f1} :catchall_55

    .line 1569
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1539
    return-void

    .line 1543
    :cond_f5
    :try_start_f5
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 1544
    .local v2, "sessionToken":Landroid/os/IBinder;
    new-instance v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v4, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual/range {v26 .. v26}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1545
    invoke-virtual/range {v26 .. v26}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6
    :try_end_106
    .catchall {:try_start_f5 .. :try_end_106} :catchall_170

    const/16 v22, 0x0

    move-object v10, v3

    move-object v7, v11

    .end local v11    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .local v7, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    move-object v11, v4

    move-object v4, v12

    .end local v12    # "uniqueSessionId":Ljava/lang/String;
    .local v4, "uniqueSessionId":Ljava/lang/String;
    move-object v12, v2

    move/from16 v28, v13

    .end local v13    # "resolvedUserId":I
    .local v28, "resolvedUserId":I
    move-object v13, v5

    move v5, v14

    .end local v14    # "callingPid":I
    .local v5, "callingPid":I
    move-object v14, v6

    move v6, v15

    .end local v15    # "callingUid":I
    .local v6, "callingUid":I
    move/from16 v15, p3

    move-object/from16 v16, p1

    move/from16 v17, p4

    move/from16 v18, v6

    move/from16 v19, v5

    move/from16 v20, v28

    move-object/from16 v21, v4

    :try_start_121
    invoke-direct/range {v10 .. v22}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIIILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState-IA;)V

    .line 1549
    .local v3, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    iget-object v10, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmSessionIdToSessionStateMap(Lcom/android/server/tv/TvInputManagerService;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    invoke-static/range {v27 .. v27}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1557
    invoke-static/range {v27 .. v27}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v10

    if-eqz v10, :cond_155

    .line 1558
    iget-object v10, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static/range {v27 .. v27}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v11
    :try_end_147
    .catchall {:try_start_121 .. :try_end_147} :catchall_16c

    move/from16 v12, v28

    .end local v28    # "resolvedUserId":I
    .local v12, "resolvedUserId":I
    :try_start_149
    invoke-static {v10, v11, v2, v12}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z

    move-result v10

    if-nez v10, :cond_160

    .line 1560
    iget-object v10, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v10, v2, v12}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mremoveSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    goto :goto_160

    .line 1563
    .end local v12    # "resolvedUserId":I
    .restart local v28    # "resolvedUserId":I
    :cond_155
    move/from16 v12, v28

    .end local v28    # "resolvedUserId":I
    .restart local v12    # "resolvedUserId":I
    iget-object v10, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual/range {v26 .. v26}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-static {v10, v11, v12}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    .line 1565
    :cond_160
    :goto_160
    iget-object v10, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v11, 0x1

    invoke-static {v10, v11, v3, v7}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V

    .line 1567
    .end local v0    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v2    # "sessionToken":Landroid/os/IBinder;
    .end local v3    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v7    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v26    # "info":Landroid/media/tv/TvInputInfo;
    .end local v27    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    monitor-exit v25
    :try_end_167
    .catchall {:try_start_149 .. :try_end_167} :catchall_179

    .line 1569
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1570
    nop

    .line 1571
    return-void

    .line 1567
    .end local v12    # "resolvedUserId":I
    .restart local v28    # "resolvedUserId":I
    :catchall_16c
    move-exception v0

    move/from16 v12, v28

    .end local v28    # "resolvedUserId":I
    .restart local v12    # "resolvedUserId":I
    goto :goto_175

    .end local v4    # "uniqueSessionId":Ljava/lang/String;
    .end local v5    # "callingPid":I
    .end local v6    # "callingUid":I
    .local v12, "uniqueSessionId":Ljava/lang/String;
    .restart local v13    # "resolvedUserId":I
    .restart local v14    # "callingPid":I
    .restart local v15    # "callingUid":I
    :catchall_170
    move-exception v0

    move-object v4, v12

    move v12, v13

    move v5, v14

    move v6, v15

    .end local v13    # "resolvedUserId":I
    .end local v14    # "callingPid":I
    .end local v15    # "callingUid":I
    .restart local v4    # "uniqueSessionId":Ljava/lang/String;
    .restart local v5    # "callingPid":I
    .restart local v6    # "callingUid":I
    .local v12, "resolvedUserId":I
    :goto_175
    :try_start_175
    monitor-exit v25
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_179

    .end local v4    # "uniqueSessionId":Ljava/lang/String;
    .end local v5    # "callingPid":I
    .end local v6    # "callingUid":I
    .end local v12    # "resolvedUserId":I
    .end local v23    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "client":Landroid/media/tv/ITvInputClient;
    .end local p2    # "inputId":Ljava/lang/String;
    .end local p3    # "isRecordingSession":Z
    .end local p4    # "seq":I
    .end local p5    # "userId":I
    :try_start_176
    throw v0
    :try_end_177
    .catchall {:try_start_176 .. :try_end_177} :catchall_177

    .line 1569
    .restart local v4    # "uniqueSessionId":Ljava/lang/String;
    .restart local v5    # "callingPid":I
    .restart local v6    # "callingUid":I
    .restart local v12    # "resolvedUserId":I
    .restart local v23    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "client":Landroid/media/tv/ITvInputClient;
    .restart local p2    # "inputId":Ljava/lang/String;
    .restart local p3    # "isRecordingSession":Z
    .restart local p4    # "seq":I
    .restart local p5    # "userId":I
    :catchall_177
    move-exception v0

    goto :goto_180

    .line 1567
    :catchall_179
    move-exception v0

    goto :goto_175

    .line 1569
    .end local v4    # "uniqueSessionId":Ljava/lang/String;
    .end local v5    # "callingPid":I
    .end local v6    # "callingUid":I
    .local v12, "uniqueSessionId":Ljava/lang/String;
    .restart local v13    # "resolvedUserId":I
    .restart local v14    # "callingPid":I
    .restart local v15    # "callingUid":I
    :catchall_17b
    move-exception v0

    move-object v4, v12

    move v12, v13

    move v5, v14

    move v6, v15

    .end local v13    # "resolvedUserId":I
    .end local v14    # "callingPid":I
    .end local v15    # "callingUid":I
    .restart local v4    # "uniqueSessionId":Ljava/lang/String;
    .restart local v5    # "callingPid":I
    .restart local v6    # "callingUid":I
    .local v12, "resolvedUserId":I
    :goto_180
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1570
    throw v0
.end method

.method public dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .registers 15
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "userId"    # I

    .line 1690
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1691
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "dispatchSurfaceChanged"

    invoke-static {v1, v2, v0, p5, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1693
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1695
    .local v2, "identity":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_52

    .line 1697
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v5

    .line 1699
    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V

    .line 1701
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_3f

    .line 1702
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v7

    const/16 v8, 0x3e8

    invoke-static {v6, v7, v8, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    .line 1703
    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_3f} :catch_42
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_3f} :catch_42
    .catchall {:try_start_1b .. :try_end_3f} :catchall_40

    .line 1707
    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3f
    goto :goto_4a

    .line 1708
    :catchall_40
    move-exception v5

    goto :goto_50

    .line 1705
    :catch_42
    move-exception v5

    .line 1706
    .local v5, "e":Ljava/lang/Exception;
    :try_start_43
    const-string v6, "TvInputManagerService"

    const-string v7, "error in dispatchSurfaceChanged"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1708
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4a
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_40

    .line 1710
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1711
    nop

    .line 1712
    return-void

    .line 1708
    :goto_50
    :try_start_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_40

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "format":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "userId":I
    :try_start_51
    throw v5
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    .line 1710
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "format":I
    .restart local p3    # "width":I
    .restart local p4    # "height":I
    .restart local p5    # "userId":I
    :catchall_52
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1711
    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2648
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2649
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "TvInputManagerService"

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    .line 2651
    :cond_16
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2652
    :try_start_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User Ids (Current user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2653
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2654
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_43
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_63

    .line 2655
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2656
    .local v3, "userId":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2654
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 2658
    .end local v2    # "i":I
    :cond_63
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2660
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_67
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_464

    .line 2661
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmUserStates(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2662
    .restart local v3    # "userId":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 2663
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserState ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2664
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2666
    const-string v5, "inputMap: inputId -> TvInputState"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2667
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2668
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2669
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2670
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    goto :goto_b6

    .line 2671
    :cond_e7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2673
    const-string/jumbo v5, "packageSet:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2674
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2675
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpackageSet(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_fb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2676
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2677
    .end local v6    # "packageName":Ljava/lang/String;
    goto :goto_fb

    .line 2678
    :cond_10b
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2680
    const-string v5, "clientStateMap: ITvInputClient -> ClientState"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2681
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2683
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetclientStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_122
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2684
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 2685
    .local v7, "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2687
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2689
    const-string/jumbo v8, "sessionTokens:"

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2690
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2691
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_166
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_189

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    .line 2692
    .local v9, "token":Landroid/os/IBinder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2693
    .end local v9    # "token":Landroid/os/IBinder;
    goto :goto_166

    .line 2694
    :cond_189
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2696
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clientTokens: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-$$Nest$fgetclientToken(Lcom/android/server/tv/TvInputManagerService$ClientState;)Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2697
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$ClientState;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2699
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2700
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    .end local v7    # "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    goto/16 :goto_122

    .line 2701
    :cond_1c7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2703
    const-string/jumbo v5, "serviceStateMap: ComponentName -> ServiceState"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2704
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2706
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1df
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2707
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2708
    .local v7, "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2710
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2712
    const-string/jumbo v8, "sessionTokens:"

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2713
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2714
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_223
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_246

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    .line 2715
    .restart local v9    # "token":Landroid/os/IBinder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2716
    .end local v9    # "token":Landroid/os/IBinder;
    goto :goto_223

    .line 2717
    :cond_246
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2719
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2720
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2721
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bound: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetbound(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2722
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reconnecting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetreconnecting(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2724
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2725
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    .end local v7    # "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    goto/16 :goto_1df

    .line 2726
    :cond_2b9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2728
    const-string/jumbo v5, "sessionStateMap: ITvInputSession -> SessionState"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2729
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2731
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2d1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_413

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2732
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2733
    .local v7, "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2735
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2736
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inputId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2737
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sessionId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2738
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "client: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2739
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "seq: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2740
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callingUid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2741
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callingPid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingPid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2742
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2743
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sessionToken: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2744
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "session: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2745
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hardwareSessionToken: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2746
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2747
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    .end local v7    # "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    goto/16 :goto_2d1

    .line 2748
    :cond_413
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2750
    const-string v5, "mCallbacks:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2751
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2752
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 2753
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_427
    if-ge v6, v5, :cond_437

    .line 2754
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2753
    add-int/lit8 v6, v6, 0x1

    goto :goto_427

    .line 2756
    .end local v6    # "j":I
    :cond_437
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2757
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2759
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mainSessionToken: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2760
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2660
    nop

    .end local v3    # "userId":I
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v5    # "n":I
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_67

    .line 2762
    .end local v2    # "i":I
    :cond_464
    monitor-exit v1
    :try_end_465
    .catchall {:try_start_1d .. :try_end_465} :catchall_46f

    .line 2763
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/tv/TvInputHardwareManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2764
    return-void

    .line 2762
    :catchall_46f
    move-exception v2

    :try_start_470
    monitor-exit v1
    :try_end_471
    .catchall {:try_start_470 .. :try_end_471} :catchall_46f

    throw v2
.end method

.method public getAvailableExtensionInterfaceNames(Ljava/lang/String;I)Ljava/util/List;
    .registers 14
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1188
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureTisExtensionInterfacePermission()V

    .line 1189
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1190
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1191
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const-string v3, "getAvailableExtensionInterfaceNames"

    invoke-static {v2, v1, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 1193
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1195
    .local v3, "identity":J
    const/4 v5, 0x0

    .line 1196
    .local v5, "service":Landroid/media/tv/ITvInputService;
    :try_start_18
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_a8

    .line 1197
    :try_start_1f
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v7

    .line 1198
    .local v7, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 1199
    .local v8, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-eqz v8, :cond_56

    .line 1200
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v10

    .line 1201
    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 1202
    .local v9, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v9, :cond_56

    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v10

    if-eqz v10, :cond_56

    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v10

    if-eqz v10, :cond_56

    .line 1204
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v10

    move-object v5, v10

    .line 1207
    .end local v7    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v8    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v9    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_56
    monitor-exit v6
    :try_end_57
    .catchall {:try_start_1f .. :try_end_57} :catchall_a5

    .line 1209
    if-eqz v5, :cond_9b

    .line 1210
    :try_start_59
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    .local v6, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 1212
    invoke-interface {v5}, Landroid/media/tv/ITvInputService;->getAvailableExtensionInterfaceNames()Ljava/util/List;

    move-result-object v7

    .line 1211
    invoke-static {v7}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1213
    .local v8, "name":Ljava/lang/String;
    invoke-interface {v5, v8}, Landroid/media/tv/ITvInputService;->getExtensionInterfacePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1214
    .local v9, "permission":Ljava/lang/String;
    if-eqz v9, :cond_89

    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v10

    .line 1215
    invoke-virtual {v10, v9, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v10

    if-nez v10, :cond_8c

    .line 1217
    :cond_89
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_8c} :catch_92
    .catchall {:try_start_59 .. :try_end_8c} :catchall_a8

    .line 1219
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "permission":Ljava/lang/String;
    :cond_8c
    goto :goto_6b

    .line 1220
    :cond_8d
    nop

    .line 1228
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1220
    return-object v6

    .line 1222
    .end local v6    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_92
    move-exception v6

    .line 1223
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_93
    const-string v7, "TvInputManagerService"

    const-string v8, "error in getAvailableExtensionInterfaceNames or getExtensionInterfacePermission"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9c

    .line 1225
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_9b
    nop

    .line 1226
    :goto_9c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_a1
    .catchall {:try_start_93 .. :try_end_a1} :catchall_a8

    .line 1228
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1226
    return-object v6

    .line 1207
    :catchall_a5
    move-exception v7

    :try_start_a6
    monitor-exit v6
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .end local v2    # "resolvedUserId":I
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "inputId":Ljava/lang/String;
    .end local p2    # "userId":I
    :try_start_a7
    throw v7
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a8

    .line 1228
    .end local v5    # "service":Landroid/media/tv/ITvInputService;
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingPid":I
    .restart local v2    # "resolvedUserId":I
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "inputId":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catchall_a8
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1229
    throw v5
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;
    .registers 9
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2350
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureCaptureTvInputPermission()V

    .line 2352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2353
    .local v0, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2354
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v5, "getAvailableTvStreamConfigList"

    invoke-static {v3, v4, v2, p2, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v3

    .line 2357
    .local v3, "resolvedUserId":I
    :try_start_17
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager;->getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_25

    .line 2360
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2357
    return-object v4

    .line 2360
    :catchall_25
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2361
    throw v4
.end method

.method public getBlockedRatings(I)Ljava/util/List;
    .registers 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1425
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1426
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "getBlockedRatings"

    .line 1425
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1427
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1429
    .local v1, "identity":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_47

    .line 1430
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1431
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1433
    .local v5, "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpersistentDataStore(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/tv/PersistentDataStore;->getBlockedRatings()[Landroid/media/tv/TvContentRating;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_30
    if-ge v8, v7, :cond_3f

    aget-object v9, v6, v8

    .line 1434
    .local v9, "rating":Landroid/media/tv/TvContentRating;
    invoke-virtual {v9}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1433
    nop

    .end local v9    # "rating":Landroid/media/tv/TvContentRating;
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    .line 1436
    :cond_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_1b .. :try_end_40} :catchall_44

    .line 1439
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1436
    return-object v5

    .line 1437
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v5    # "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_44
    move-exception v4

    :try_start_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "userId":I
    :try_start_46
    throw v4
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    .line 1439
    .restart local v0    # "resolvedUserId":I
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "userId":I
    :catchall_47
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1440
    throw v3
.end method

.method public getClientPid(Ljava/lang/String;)I
    .registers 9
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 2528
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureTunerResourceAccessPermission()V

    .line 2529
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2531
    .local v0, "identity":J
    const/4 v2, -0x1

    .line 2533
    .local v2, "clientPid":I
    :try_start_8
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_27

    .line 2535
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getClientPidLocked(Ljava/lang/String;)I

    move-result v4
    :try_end_13
    .catch Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException; {:try_start_f .. :try_end_13} :catch_17
    .catchall {:try_start_f .. :try_end_13} :catchall_15

    move v2, v4

    .line 2538
    goto :goto_1f

    .line 2539
    :catchall_15
    move-exception v4

    goto :goto_25

    .line 2536
    :catch_17
    move-exception v4

    .line 2537
    .local v4, "e":Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException;
    :try_start_18
    const-string v5, "TvInputManagerService"

    const-string v6, "error in getClientPid"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2539
    .end local v4    # "e":Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException;
    :goto_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_15

    .line 2541
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2542
    nop

    .line 2543
    return v2

    .line 2539
    :goto_25
    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_15

    .end local v0    # "identity":J
    .end local v2    # "clientPid":I
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionId":Ljava/lang/String;
    :try_start_26
    throw v4
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 2541
    .restart local v0    # "identity":J
    .restart local v2    # "clientPid":I
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionId":Ljava/lang/String;
    :catchall_27
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2542
    throw v3
.end method

.method public getClientPriority(ILjava/lang/String;)I
    .registers 11
    .param p1, "useCase"    # I
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 2548
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureTunerResourceAccessPermission()V

    .line 2549
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2550
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2552
    .local v1, "identity":J
    const/4 v3, -0x1

    .line 2553
    .local v3, "clientPid":I
    if-eqz p2, :cond_2b

    .line 2554
    :try_start_e
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_29

    .line 2556
    :try_start_15
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getClientPidLocked(Ljava/lang/String;)I

    move-result v5
    :try_end_19
    .catch Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException; {:try_start_15 .. :try_end_19} :catch_1d
    .catchall {:try_start_15 .. :try_end_19} :catchall_1b

    move v3, v5

    .line 2559
    goto :goto_25

    .line 2560
    :catchall_1b
    move-exception v5

    goto :goto_27

    .line 2557
    :catch_1d
    move-exception v5

    .line 2558
    .local v5, "e":Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException;
    :try_start_1e
    const-string v6, "TvInputManagerService"

    const-string v7, "error in getClientPriority"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2560
    .end local v5    # "e":Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException;
    :goto_25
    monitor-exit v4

    goto :goto_2c

    :goto_27
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_1b

    .end local v0    # "callingPid":I
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "useCase":I
    .end local p2    # "sessionId":Ljava/lang/String;
    :try_start_28
    throw v5

    .line 2568
    .end local v3    # "clientPid":I
    .restart local v0    # "callingPid":I
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "useCase":I
    .restart local p2    # "sessionId":Ljava/lang/String;
    :catchall_29
    move-exception v3

    goto :goto_43

    .line 2562
    .restart local v3    # "clientPid":I
    :cond_2b
    move v3, v0

    .line 2564
    :goto_2c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "tv_tuner_resource_mgr"

    .line 2565
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 2566
    .local v4, "trm":Landroid/media/tv/tunerresourcemanager/TunerResourceManager;
    invoke-virtual {v4, p1, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->getClientPriority(II)I

    move-result v5
    :try_end_3f
    .catchall {:try_start_28 .. :try_end_3f} :catchall_29

    .line 2568
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2566
    return v5

    .line 2568
    .end local v3    # "clientPid":I
    .end local v4    # "trm":Landroid/media/tv/tunerresourcemanager/TunerResourceManager;
    :goto_43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2569
    throw v3
.end method

.method public getCurrentTunedInfos(I)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TunedInfo;",
            ">;"
        }
    .end annotation

    .line 2574
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_TUNED_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_36

    .line 2579
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2580
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2581
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const-string v3, "getTvCurrentChannelInfos"

    invoke-static {v2, v0, v1, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 2583
    .local v2, "resolvedUserId":I
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2584
    :try_start_25
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 2585
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, v4, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;

    move-result-object v5

    monitor-exit v3

    return-object v5

    .line 2586
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_33
    move-exception v4

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_33

    throw v4

    .line 2576
    .end local v0    # "callingPid":I
    .end local v1    # "callingUid":I
    .end local v2    # "resolvedUserId":I
    :cond_36
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have access tuned info permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDvbDeviceList()Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2221
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DVB_DEVICE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_125

    .line 2226
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2229
    .local v2, "identity":J
    :try_start_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2230
    .local v0, "deviceInfosFromPattern1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    new-instance v4, Ljava/io/File;

    const-string v5, "/dev"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2231
    .local v4, "devDirectory":Ljava/io/File;
    const/4 v5, 0x0

    .line 2232
    .local v5, "dvbDirectoryFound":Z
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v9, 0x0

    :goto_27
    const/4 v10, 0x1

    if-ge v9, v7, :cond_5f

    aget-object v11, v6, v9

    .line 2233
    .local v11, "fileName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$sfgetsFrontEndDevicePattern()Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 2234
    .local v12, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_53

    .line 2235
    invoke-virtual {v12, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2236
    .local v10, "adapterId":I
    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 2237
    .local v13, "deviceId":I
    new-instance v14, Landroid/media/tv/DvbDeviceInfo;

    invoke-direct {v14, v10, v13}, Landroid/media/tv/DvbDeviceInfo;-><init>(II)V

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2239
    .end local v10    # "adapterId":I
    .end local v13    # "deviceId":I
    :cond_53
    const-string v10, "dvb"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5c

    .line 2240
    const/4 v5, 0x1

    .line 2232
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v12    # "matcher":Ljava/util/regex/Matcher;
    :cond_5c
    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    .line 2243
    :cond_5f
    if-nez v5, :cond_69

    .line 2244
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6
    :try_end_65
    .catchall {:try_start_14 .. :try_end_65} :catchall_120

    .line 2269
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2244
    return-object v6

    .line 2246
    :cond_69
    :try_start_69
    new-instance v6, Ljava/io/File;

    const-string v7, "/dev/dvb"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2248
    .local v6, "dvbDirectory":Ljava/io/File;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2249
    .local v7, "deviceInfosFromPattern2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    array-length v11, v9

    const/4 v12, 0x0

    :goto_7b
    if-ge v12, v11, :cond_109

    aget-object v13, v9, v12

    .line 2250
    .local v13, "fileNameInDvb":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$sfgetsAdapterDirPattern()Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 2251
    .local v14, "adapterMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_fa

    .line 2252
    invoke-virtual {v14, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 2253
    .local v15, "adapterId":I
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/dev/dvb/"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v8

    .line 2254
    .local v1, "adapterDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    array-length v10, v8

    move-object/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "adapterDirectory":Ljava/io/File;
    .local v17, "adapterDirectory":Ljava/io/File;
    :goto_b6
    if-ge v1, v10, :cond_f5

    aget-object v18, v8, v1

    move-object/from16 v19, v18

    .line 2255
    .local v19, "fileNameInAdapter":Ljava/lang/String;
    move-object/from16 v18, v4

    .end local v4    # "devDirectory":Ljava/io/File;
    .local v18, "devDirectory":Ljava/io/File;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$sfgetsFrontEndInAdapterDirPattern()Ljava/util/regex/Pattern;

    move-result-object v4

    move/from16 v20, v5

    move-object/from16 v5, v19

    .end local v19    # "fileNameInAdapter":Ljava/lang/String;
    .local v5, "fileNameInAdapter":Ljava/lang/String;
    .local v20, "dvbDirectoryFound":Z
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2257
    .local v4, "frontendMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v19

    if-eqz v19, :cond_ea

    .line 2258
    move-object/from16 v19, v5

    const/4 v5, 0x1

    .end local v5    # "fileNameInAdapter":Ljava/lang/String;
    .restart local v19    # "fileNameInAdapter":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v21, v16

    .line 2259
    .local v21, "deviceId":I
    new-instance v5, Landroid/media/tv/DvbDeviceInfo;

    move-object/from16 v22, v4

    move/from16 v4, v21

    .end local v21    # "deviceId":I
    .local v4, "deviceId":I
    .local v22, "frontendMatcher":Ljava/util/regex/Matcher;
    invoke-direct {v5, v15, v4}, Landroid/media/tv/DvbDeviceInfo;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ee

    .line 2257
    .end local v19    # "fileNameInAdapter":Ljava/lang/String;
    .end local v22    # "frontendMatcher":Ljava/util/regex/Matcher;
    .local v4, "frontendMatcher":Ljava/util/regex/Matcher;
    .restart local v5    # "fileNameInAdapter":Ljava/lang/String;
    :cond_ea
    move-object/from16 v22, v4

    move-object/from16 v19, v5

    .line 2254
    .end local v4    # "frontendMatcher":Ljava/util/regex/Matcher;
    .end local v5    # "fileNameInAdapter":Ljava/lang/String;
    :goto_ee
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v18

    move/from16 v5, v20

    goto :goto_b6

    .end local v18    # "devDirectory":Ljava/io/File;
    .end local v20    # "dvbDirectoryFound":Z
    .local v4, "devDirectory":Ljava/io/File;
    .local v5, "dvbDirectoryFound":Z
    :cond_f5
    move-object/from16 v18, v4

    move/from16 v20, v5

    .end local v4    # "devDirectory":Ljava/io/File;
    .end local v5    # "dvbDirectoryFound":Z
    .restart local v18    # "devDirectory":Ljava/io/File;
    .restart local v20    # "dvbDirectoryFound":Z
    goto :goto_fe

    .line 2251
    .end local v15    # "adapterId":I
    .end local v17    # "adapterDirectory":Ljava/io/File;
    .end local v18    # "devDirectory":Ljava/io/File;
    .end local v20    # "dvbDirectoryFound":Z
    .restart local v4    # "devDirectory":Ljava/io/File;
    .restart local v5    # "dvbDirectoryFound":Z
    :cond_fa
    move-object/from16 v18, v4

    move/from16 v20, v5

    .line 2249
    .end local v4    # "devDirectory":Ljava/io/File;
    .end local v5    # "dvbDirectoryFound":Z
    .end local v13    # "fileNameInDvb":Ljava/lang/String;
    .end local v14    # "adapterMatcher":Ljava/util/regex/Matcher;
    .restart local v18    # "devDirectory":Ljava/io/File;
    .restart local v20    # "dvbDirectoryFound":Z
    :goto_fe
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v18

    move/from16 v5, v20

    const/4 v10, 0x1

    goto/16 :goto_7b

    .line 2265
    .end local v18    # "devDirectory":Ljava/io/File;
    .end local v20    # "dvbDirectoryFound":Z
    .restart local v4    # "devDirectory":Ljava/io/File;
    .restart local v5    # "dvbDirectoryFound":Z
    :cond_109
    move-object/from16 v18, v4

    move/from16 v20, v5

    .end local v4    # "devDirectory":Ljava/io/File;
    .end local v5    # "dvbDirectoryFound":Z
    .restart local v18    # "devDirectory":Ljava/io/File;
    .restart local v20    # "dvbDirectoryFound":Z
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_118

    .line 2266
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_11c

    .line 2267
    :cond_118
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_11c
    .catchall {:try_start_69 .. :try_end_11c} :catchall_120

    .line 2269
    :goto_11c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2265
    return-object v1

    .line 2269
    .end local v0    # "deviceInfosFromPattern1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    .end local v6    # "dvbDirectory":Ljava/io/File;
    .end local v7    # "deviceInfosFromPattern2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    .end local v18    # "devDirectory":Ljava/io/File;
    .end local v20    # "dvbDirectoryFound":Z
    :catchall_120
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2270
    throw v0

    .line 2223
    .end local v2    # "identity":J
    :cond_125
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DVB_DEVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtensionInterface(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/IBinder;
    .registers 15
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1234
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureTisExtensionInterfacePermission()V

    .line 1235
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1236
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1237
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const-string v3, "getExtensionInterface"

    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 1239
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1241
    .local v3, "identity":J
    const/4 v5, 0x0

    .line 1242
    .local v5, "service":Landroid/media/tv/ITvInputService;
    :try_start_18
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_85

    .line 1243
    :try_start_1f
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v7

    .line 1244
    .local v7, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 1245
    .local v8, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-eqz v8, :cond_56

    .line 1246
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v10

    .line 1247
    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 1248
    .local v9, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v9, :cond_56

    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v10

    if-eqz v10, :cond_56

    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v10

    if-eqz v10, :cond_56

    .line 1250
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v10

    move-object v5, v10

    .line 1253
    .end local v7    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v8    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v9    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_56
    monitor-exit v6
    :try_end_57
    .catchall {:try_start_1f .. :try_end_57} :catchall_82

    .line 1255
    if-eqz v5, :cond_7c

    .line 1256
    :try_start_59
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputService;->getExtensionInterfacePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1257
    .local v6, "permission":Ljava/lang/String;
    if-eqz v6, :cond_6b

    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v7

    .line 1258
    invoke-virtual {v7, v6, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_7c

    .line 1260
    :cond_6b
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputService;->getExtensionInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_6f} :catch_73
    .catchall {:try_start_59 .. :try_end_6f} :catchall_85

    .line 1269
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1260
    return-object v7

    .line 1263
    .end local v6    # "permission":Ljava/lang/String;
    :catch_73
    move-exception v6

    .line 1264
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_74
    const-string v7, "TvInputManagerService"

    const-string v8, "error in getExtensionInterfacePermission or getExtensionInterface"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_85

    goto :goto_7d

    .line 1266
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_7c
    nop

    .line 1267
    :goto_7d
    const/4 v6, 0x0

    .line 1269
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1267
    return-object v6

    .line 1253
    :catchall_82
    move-exception v7

    :try_start_83
    monitor-exit v6
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .end local v2    # "resolvedUserId":I
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "inputId":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userId":I
    :try_start_84
    throw v7
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_85

    .line 1269
    .end local v5    # "service":Landroid/media/tv/ITvInputService;
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingPid":I
    .restart local v2    # "resolvedUserId":I
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "inputId":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catchall_85
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1270
    throw v5
.end method

.method public getHardwareList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2163
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 2165
    const/4 v0, 0x0

    return-object v0

    .line 2168
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2170
    .local v0, "identity":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager;->getHardwareList()Ljava/util/List;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_22

    .line 2172
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2170
    return-object v2

    .line 2172
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2173
    throw v2
.end method

.method public getTvContentRatingSystemList(I)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation

    .line 1275
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTENT_RATING_SYSTEMS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_40

    .line 1281
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1282
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "getTvContentRatingSystemList"

    .line 1281
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1283
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1285
    .local v1, "identity":J
    :try_start_22
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_3b

    .line 1286
    :try_start_29
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1287
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcontentRatingSystemList(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v5

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_38

    .line 1290
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1287
    return-object v5

    .line 1288
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "userId":I
    :try_start_3a
    throw v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 1290
    .restart local v0    # "resolvedUserId":I
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "userId":I
    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1291
    throw v3

    .line 1278
    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    :cond_40
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have permission to read content rating systems"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;
    .registers 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1122
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "getTvInputInfo"

    .line 1122
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1124
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1126
    .local v1, "identity":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3b

    .line 1127
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1128
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 1129
    .local v5, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v5, :cond_2f

    const/4 v6, 0x0

    goto :goto_33

    :cond_2f
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v6

    :goto_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_38

    .line 1132
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1129
    return-object v6

    .line 1130
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v5    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "inputId":Ljava/lang/String;
    .end local p2    # "userId":I
    :try_start_3a
    throw v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 1132
    .restart local v0    # "resolvedUserId":I
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "inputId":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1133
    throw v3
.end method

.method public getTvInputList(I)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation

    .line 1103
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1104
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "getTvInputList"

    .line 1103
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1105
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1107
    .local v1, "identity":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_4f

    .line 1108
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1109
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1110
    .local v5, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 1111
    .local v7, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    nop

    .end local v7    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    goto :goto_32

    .line 1113
    :cond_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_1b .. :try_end_48} :catchall_4c

    .line 1116
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1113
    return-object v5

    .line 1114
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v5    # "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    :catchall_4c
    move-exception v4

    :try_start_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "userId":I
    :try_start_4e
    throw v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    .line 1116
    .restart local v0    # "resolvedUserId":I
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "userId":I
    :catchall_4f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1117
    throw v3
.end method

.method public getTvInputState(Ljava/lang/String;I)I
    .registers 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1172
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "getTvInputState"

    .line 1172
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1174
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1176
    .local v1, "identity":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3b

    .line 1177
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1178
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 1179
    .local v5, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v5, :cond_2f

    const/4 v6, 0x0

    goto :goto_33

    :cond_2f
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v6

    :goto_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_38

    .line 1182
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1179
    return v6

    .line 1180
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v5    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "inputId":Ljava/lang/String;
    .end local p2    # "userId":I
    :try_start_3a
    throw v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 1182
    .restart local v0    # "resolvedUserId":I
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "inputId":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1183
    throw v3
.end method

.method public isParentalControlsEnabled(I)Z
    .registers 8
    .param p1, "userId"    # I

    .line 1378
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "isParentalControlsEnabled"

    .line 1378
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1380
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1382
    .local v1, "identity":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_31

    .line 1383
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1384
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpersistentDataStore(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/tv/PersistentDataStore;->isParentalControlsEnabled()Z

    move-result v5

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2e

    .line 1387
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1384
    return v5

    .line 1385
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_2e
    move-exception v4

    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "userId":I
    :try_start_30
    throw v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 1387
    .restart local v0    # "resolvedUserId":I
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "userId":I
    :catchall_31
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1388
    throw v3
.end method

.method public isRatingBlocked(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1409
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "isRatingBlocked"

    .line 1409
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1411
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1413
    .local v1, "identity":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_35

    .line 1414
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1415
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpersistentDataStore(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v5

    .line 1416
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    .line 1415
    invoke-virtual {v5, v6}, Lcom/android/server/tv/PersistentDataStore;->isRatingBlocked(Landroid/media/tv/TvContentRating;)Z

    move-result v5

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_32

    .line 1419
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1415
    return v5

    .line 1417
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_32
    move-exception v4

    :try_start_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "rating":Ljava/lang/String;
    .end local p2    # "userId":I
    :try_start_34
    throw v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    .line 1419
    .restart local v0    # "resolvedUserId":I
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "rating":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catchall_35
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1420
    throw v3
.end method

.method public isSingleSessionActive(I)Z
    .registers 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2401
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureCaptureTvInputPermission()V

    .line 2402
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2403
    .local v0, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2404
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v5, "isSingleSessionActive"

    invoke-static {v3, v4, v2, p1, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v3

    .line 2407
    .local v3, "resolvedUserId":I
    :try_start_17
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_6f

    .line 2408
    :try_start_1e
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 2409
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_34

    .line 2410
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_6c

    .line 2421
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2410
    return v7

    .line 2411
    :cond_34
    :try_start_34
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v6, v8, :cond_67

    .line 2412
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    new-array v8, v8, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2415
    .local v6, "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    aget-object v8, v6, v9

    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    if-nez v8, :cond_62

    aget-object v8, v6, v7

    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    if-eqz v8, :cond_61

    goto :goto_62

    :cond_61
    move v7, v9

    :cond_62
    :goto_62
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_34 .. :try_end_63} :catchall_6c

    .line 2421
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2415
    return v7

    .line 2418
    .end local v6    # "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_67
    :try_start_67
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_6c

    .line 2421
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2418
    return v9

    .line 2419
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_6c
    move-exception v5

    :try_start_6d
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    .end local v0    # "identity":J
    .end local v2    # "callingUid":I
    .end local v3    # "resolvedUserId":I
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "userId":I
    :try_start_6e
    throw v5
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    .line 2421
    .restart local v0    # "identity":J
    .restart local v2    # "callingUid":I
    .restart local v3    # "resolvedUserId":I
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "userId":I
    :catchall_6f
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2422
    throw v4
.end method

.method public openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .registers 23
    .param p1, "info"    # Landroid/media/tv/DvbDeviceInfo;
    .param p2, "deviceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2276
    move/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.DVB_DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_161

    .line 2281
    new-instance v0, Ljava/io/File;

    const-string v3, "/dev"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 2282
    .local v3, "devDirectory":Ljava/io/File;
    const/4 v0, 0x0

    .line 2283
    .local v0, "dvbDeviceFound":Z
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    :goto_21
    if-ge v7, v5, :cond_b2

    aget-object v8, v4, v7

    .line 2284
    .local v8, "fileName":Ljava/lang/String;
    const-string v9, "dvb"

    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 2285
    new-instance v9, Ljava/io/File;

    const-string v10, "/dev/dvb"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2286
    .local v9, "dvbDirectory":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_3a
    if-ge v12, v11, :cond_9f

    aget-object v13, v10, v12

    .line 2287
    .local v13, "fileNameInDvb":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$sfgetsAdapterDirPattern()Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 2288
    .local v14, "adapterMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_8f

    .line 2289
    new-instance v15, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    .end local v0    # "dvbDeviceFound":Z
    .local v16, "dvbDeviceFound":Z
    const-string v0, "/dev/dvb/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    .line 2290
    .local v0, "adapterDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v15, v6

    move-object/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "adapterDirectory":Ljava/io/File;
    .local v17, "adapterDirectory":Ljava/io/File;
    :goto_6f
    if-ge v0, v15, :cond_8c

    aget-object v2, v6, v0

    .line 2291
    .local v2, "fileNameInAdapter":Ljava/lang/String;
    move-object/from16 v18, v3

    .end local v3    # "devDirectory":Ljava/io/File;
    .local v18, "devDirectory":Ljava/io/File;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$sfgetsFrontEndInAdapterDirPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2293
    .local v3, "frontendMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v19

    if-eqz v19, :cond_85

    .line 2294
    const/4 v0, 0x1

    .line 2295
    .end local v16    # "dvbDeviceFound":Z
    .local v0, "dvbDeviceFound":Z
    goto :goto_95

    .line 2290
    .end local v0    # "dvbDeviceFound":Z
    .end local v2    # "fileNameInAdapter":Ljava/lang/String;
    .end local v3    # "frontendMatcher":Ljava/util/regex/Matcher;
    .restart local v16    # "dvbDeviceFound":Z
    :cond_85
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    goto :goto_6f

    .end local v18    # "devDirectory":Ljava/io/File;
    .local v3, "devDirectory":Ljava/io/File;
    :cond_8c
    move-object/from16 v18, v3

    .end local v3    # "devDirectory":Ljava/io/File;
    .restart local v18    # "devDirectory":Ljava/io/File;
    goto :goto_93

    .line 2288
    .end local v16    # "dvbDeviceFound":Z
    .end local v17    # "adapterDirectory":Ljava/io/File;
    .end local v18    # "devDirectory":Ljava/io/File;
    .restart local v0    # "dvbDeviceFound":Z
    .restart local v3    # "devDirectory":Ljava/io/File;
    :cond_8f
    move/from16 v16, v0

    move-object/from16 v18, v3

    .line 2299
    .end local v0    # "dvbDeviceFound":Z
    .end local v3    # "devDirectory":Ljava/io/File;
    .restart local v16    # "dvbDeviceFound":Z
    .restart local v18    # "devDirectory":Ljava/io/File;
    :goto_93
    move/from16 v0, v16

    .end local v16    # "dvbDeviceFound":Z
    .restart local v0    # "dvbDeviceFound":Z
    :goto_95
    if-eqz v0, :cond_98

    .line 2300
    goto :goto_a6

    .line 2286
    .end local v13    # "fileNameInDvb":Ljava/lang/String;
    .end local v14    # "adapterMatcher":Ljava/util/regex/Matcher;
    :cond_98
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    goto :goto_3a

    .end local v18    # "devDirectory":Ljava/io/File;
    .restart local v3    # "devDirectory":Ljava/io/File;
    :cond_9f
    move/from16 v16, v0

    move-object/from16 v18, v3

    .end local v0    # "dvbDeviceFound":Z
    .end local v3    # "devDirectory":Ljava/io/File;
    .restart local v16    # "dvbDeviceFound":Z
    .restart local v18    # "devDirectory":Ljava/io/File;
    goto :goto_a6

    .line 2284
    .end local v9    # "dvbDirectory":Ljava/io/File;
    .end local v16    # "dvbDeviceFound":Z
    .end local v18    # "devDirectory":Ljava/io/File;
    .restart local v0    # "dvbDeviceFound":Z
    .restart local v3    # "devDirectory":Ljava/io/File;
    :cond_a4
    move-object/from16 v18, v3

    .line 2304
    .end local v3    # "devDirectory":Ljava/io/File;
    .restart local v18    # "devDirectory":Ljava/io/File;
    :goto_a6
    if-eqz v0, :cond_aa

    .line 2305
    move v2, v0

    goto :goto_b5

    .line 2283
    .end local v8    # "fileName":Ljava/lang/String;
    :cond_aa
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    goto/16 :goto_21

    .end local v18    # "devDirectory":Ljava/io/File;
    .restart local v3    # "devDirectory":Ljava/io/File;
    :cond_b2
    move-object/from16 v18, v3

    .end local v3    # "devDirectory":Ljava/io/File;
    .restart local v18    # "devDirectory":Ljava/io/File;
    move v2, v0

    .line 2309
    .end local v0    # "dvbDeviceFound":Z
    .local v2, "dvbDeviceFound":Z
    :goto_b5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2312
    .local v3, "identity":J
    const/4 v0, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_16a

    .line 2329
    :try_start_be
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_145

    .line 2324
    :pswitch_c2
    if-eqz v2, :cond_c7

    .line 2325
    const-string v6, "/dev/dvb/adapter%d/frontend%d"

    goto :goto_c9

    :cond_c7
    const-string v6, "/dev/dvb%d.frontend%d"

    :goto_c9
    new-array v7, v0, [Ljava/lang/Object;

    .line 2326
    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 2324
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2327
    .local v5, "deviceFileName":Ljava/lang/String;
    goto :goto_12b

    .line 2319
    .end local v5    # "deviceFileName":Ljava/lang/String;
    :pswitch_e5
    if-eqz v2, :cond_ea

    .line 2320
    const-string v6, "/dev/dvb/adapter%d/dvr%d"

    goto :goto_ec

    :cond_ea
    const-string v6, "/dev/dvb%d.dvr%d"

    :goto_ec
    new-array v7, v0, [Ljava/lang/Object;

    .line 2321
    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 2319
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2322
    .restart local v5    # "deviceFileName":Ljava/lang/String;
    goto :goto_12b

    .line 2314
    .end local v5    # "deviceFileName":Ljava/lang/String;
    :pswitch_108
    if-eqz v2, :cond_10d

    .line 2315
    const-string v6, "/dev/dvb/adapter%d/demux%d"

    goto :goto_10f

    :cond_10d
    const-string v6, "/dev/dvb%d.demux%d"

    :goto_10f
    new-array v7, v0, [Ljava/lang/Object;

    .line 2316
    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 2314
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_12a
    .catchall {:try_start_be .. :try_end_12a} :catchall_15c

    .line 2317
    .restart local v5    # "deviceFileName":Ljava/lang/String;
    nop

    .line 2335
    :goto_12b
    :try_start_12b
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2336
    if-ne v0, v1, :cond_135

    .line 2337
    const/high16 v0, 0x30000000

    goto :goto_137

    .line 2338
    :cond_135
    const/high16 v0, 0x10000000

    .line 2335
    :goto_137
    invoke-static {v6, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_13b
    .catch Ljava/io/FileNotFoundException; {:try_start_12b .. :try_end_13b} :catch_13f
    .catchall {:try_start_12b .. :try_end_13b} :catchall_15c

    .line 2343
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2335
    return-object v0

    .line 2339
    :catch_13f
    move-exception v0

    .line 2340
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v6, 0x0

    .line 2343
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2340
    return-object v6

    .line 2329
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "deviceFileName":Ljava/lang/String;
    :goto_145
    :try_start_145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid DVB device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "dvbDeviceFound":Z
    .end local v3    # "identity":J
    .end local v18    # "devDirectory":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "info":Landroid/media/tv/DvbDeviceInfo;
    .end local p2    # "deviceType":I
    throw v0
    :try_end_15c
    .catchall {:try_start_145 .. :try_end_15c} :catchall_15c

    .line 2343
    .restart local v2    # "dvbDeviceFound":Z
    .restart local v3    # "identity":J
    .restart local v18    # "devDirectory":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "info":Landroid/media/tv/DvbDeviceInfo;
    .restart local p2    # "deviceType":I
    :catchall_15c
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2344
    throw v0

    .line 2278
    .end local v2    # "dvbDeviceFound":Z
    .end local v3    # "identity":J
    .end local v18    # "devDirectory":Ljava/io/File;
    :cond_161
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires DVB_DEVICE permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_108
        :pswitch_e5
        :pswitch_c2
    .end packed-switch
.end method

.method public pauseRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 2123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2124
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "pauseRecording"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 2126
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2128
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 2130
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 2131
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->pauseRecording(Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 2134
    goto :goto_30

    .line 2135
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 2132
    :catch_28
    move-exception v5

    .line 2133
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in pauseRecording"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2135
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 2137
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2138
    nop

    .line 2139
    return-void

    .line 2135
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 2137
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "params":Landroid/os/Bundle;
    .restart local p3    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2138
    throw v4
.end method

.method public registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 13
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"    # I

    .line 1340
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1341
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1342
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const-string/jumbo v3, "registerCallback"

    invoke-static {v2, v0, v1, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 1344
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1346
    .local v3, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_50

    .line 1347
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v6

    .line 1348
    .local v6, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v7

    if-nez v7, :cond_34

    .line 1349
    const-string v7, "TvInputManagerService"

    const-string v8, "client process has already died"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 1351
    :cond_34
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcallbackPidUidMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v7

    .line 1352
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 1351
    invoke-interface {v7, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    .end local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :goto_47
    monitor-exit v5
    :try_end_48
    .catchall {:try_start_1c .. :try_end_48} :catchall_4d

    .line 1356
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1357
    nop

    .line 1358
    return-void

    .line 1354
    :catchall_4d
    move-exception v6

    :try_start_4e
    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    .end local v0    # "callingPid":I
    .end local v1    # "callingUid":I
    .end local v2    # "resolvedUserId":I
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local p2    # "userId":I
    :try_start_4f
    throw v6
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    .line 1356
    .restart local v0    # "callingPid":I
    .restart local v1    # "callingUid":I
    .restart local v2    # "resolvedUserId":I
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .restart local p2    # "userId":I
    :catchall_50
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1357
    throw v5
.end method

.method public relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "userId"    # I

    .line 1922
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1923
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "relayoutOverlayView"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1925
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1927
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1929
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1930
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->relayoutOverlayView(Landroid/graphics/Rect;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1933
    goto :goto_30

    .line 1934
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1931
    :catch_28
    move-exception v5

    .line 1932
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in relayoutOverlayView"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1934
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1936
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1937
    nop

    .line 1938
    return-void

    .line 1934
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "frame":Landroid/graphics/Rect;
    .end local p3    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1936
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "frame":Landroid/graphics/Rect;
    .restart local p3    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1937
    throw v4
.end method

.method public releaseSession(Landroid/os/IBinder;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1578
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1579
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "releaseSession"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1581
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1583
    .local v2, "identity":J
    const/4 v4, 0x0

    .line 1584
    .local v4, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    const/4 v5, 0x0

    .line 1585
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :try_start_17
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_41

    .line 1586
    :try_start_1e
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v7

    move-object v4, v7

    .line 1587
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7, p2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v7

    move-object v5, v7

    .line 1588
    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_3e

    .line 1589
    if-eqz v4, :cond_39

    .line 1590
    :try_start_2f
    invoke-static {v4, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    move-result-object v6

    .line 1592
    .local v6, "tvInputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v8, 0x4

    invoke-static {v7, v8, v4, v6}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_41

    .line 1596
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v6    # "tvInputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :cond_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1597
    nop

    .line 1598
    return-void

    .line 1588
    .restart local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .restart local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_3e
    move-exception v7

    :try_start_3f
    monitor-exit v6
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "userId":I
    :try_start_40
    throw v7
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 1596
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "userId":I
    :catchall_41
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1597
    throw v4
.end method

.method public releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    .registers 10
    .param p1, "deviceId"    # I
    .param p2, "hardware"    # Landroid/media/tv/ITvInputHardware;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2202
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 2204
    return-void

    .line 2207
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2208
    .local v0, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2209
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string/jumbo v5, "releaseTvInputHardware"

    invoke-static {v3, v4, v2, p3, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v3

    .line 2212
    .local v3, "resolvedUserId":I
    :try_start_24
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager;->releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_32

    .line 2215
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2216
    nop

    .line 2217
    return-void

    .line 2215
    :catchall_32
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2216
    throw v4
.end method

.method public removeBlockedRating(Ljava/lang/String;I)V
    .registers 10
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1462
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1463
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1464
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "removeBlockedRating"

    .line 1463
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1465
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1467
    .local v1, "identity":J
    :try_start_18
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_39

    .line 1468
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1469
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpersistentDataStore(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v5

    .line 1470
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    .line 1469
    invoke-virtual {v5, v6}, Lcom/android/server/tv/PersistentDataStore;->removeBlockedRating(Landroid/media/tv/TvContentRating;)V

    .line 1471
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_36

    .line 1473
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1474
    nop

    .line 1475
    return-void

    .line 1471
    :catchall_36
    move-exception v4

    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "rating":Ljava/lang/String;
    .end local p2    # "userId":I
    :try_start_38
    throw v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    .line 1473
    .restart local v0    # "resolvedUserId":I
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "rating":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catchall_39
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1474
    throw v3
.end method

.method public removeBroadcastInfo(Landroid/os/IBinder;II)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "requestId"    # I
    .param p3, "userId"    # I

    .line 2484
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2485
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2486
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const-string/jumbo v3, "removeBroadcastInfo"

    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 2488
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2490
    .local v3, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3e

    .line 2492
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, p1, v0, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v6

    .line 2494
    .local v6, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7, v6}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/media/tv/ITvInputSession;->removeBroadcastInfo(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    .line 2497
    .end local v6    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    goto :goto_36

    .line 2498
    :catchall_2c
    move-exception v6

    goto :goto_3c

    .line 2495
    :catch_2e
    move-exception v6

    .line 2496
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v7, "TvInputManagerService"

    const-string v8, "error in removeBroadcastInfo"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2498
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 2500
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2501
    nop

    .line 2502
    return-void

    .line 2498
    :goto_3c
    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_2c

    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .end local v2    # "resolvedUserId":I
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "requestId":I
    .end local p3    # "userId":I
    :try_start_3d
    throw v6
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 2500
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingPid":I
    .restart local v2    # "resolvedUserId":I
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "requestId":I
    .restart local p3    # "userId":I
    :catchall_3e
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2501
    throw v5
.end method

.method public removeHardwareDevice(I)V
    .registers 3
    .param p1, "deviceId"    # I

    .line 2615
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->onDeviceUnavailable(I)V

    .line 2616
    return-void
.end method

.method public removeOverlayView(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1943
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "removeOverlayView"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1945
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1947
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1949
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1950
    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->removeOverlayView()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1953
    goto :goto_30

    .line 1954
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1951
    :catch_28
    move-exception v5

    .line 1952
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in removeOverlayView"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1954
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1956
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1957
    nop

    .line 1958
    return-void

    .line 1954
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1956
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1957
    throw v4
.end method

.method public requestAd(Landroid/os/IBinder;Landroid/media/tv/AdRequest;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "request"    # Landroid/media/tv/AdRequest;
    .param p3, "userId"    # I

    .line 2506
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2507
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2508
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const-string/jumbo v3, "requestAd"

    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 2510
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2512
    .local v3, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3e

    .line 2514
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, p1, v0, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v6

    .line 2516
    .local v6, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7, v6}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/media/tv/ITvInputSession;->requestAd(Landroid/media/tv/AdRequest;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    .line 2519
    .end local v6    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    goto :goto_36

    .line 2520
    :catchall_2c
    move-exception v6

    goto :goto_3c

    .line 2517
    :catch_2e
    move-exception v6

    .line 2518
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v7, "TvInputManagerService"

    const-string v8, "error in requestAd"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2520
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 2522
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2523
    nop

    .line 2524
    return-void

    .line 2520
    :goto_3c
    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_2c

    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .end local v2    # "resolvedUserId":I
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "request":Landroid/media/tv/AdRequest;
    .end local p3    # "userId":I
    :try_start_3d
    throw v6
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 2522
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingPid":I
    .restart local v2    # "resolvedUserId":I
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "request":Landroid/media/tv/AdRequest;
    .restart local p3    # "userId":I
    :catchall_3e
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2523
    throw v5
.end method

.method public requestBroadcastInfo(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoRequest;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "request"    # Landroid/media/tv/BroadcastInfoRequest;
    .param p3, "userId"    # I

    .line 2462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2463
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2464
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const-string/jumbo v3, "requestBroadcastInfo"

    invoke-static {v2, v1, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 2466
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2468
    .local v3, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3e

    .line 2470
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, p1, v0, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v6

    .line 2472
    .local v6, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7, v6}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/media/tv/ITvInputSession;->requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    .line 2475
    .end local v6    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    goto :goto_36

    .line 2476
    :catchall_2c
    move-exception v6

    goto :goto_3c

    .line 2473
    :catch_2e
    move-exception v6

    .line 2474
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v7, "TvInputManagerService"

    const-string v8, "error in requestBroadcastInfo"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2476
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    .line 2478
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2479
    nop

    .line 2480
    return-void

    .line 2476
    :goto_3c
    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_2c

    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .end local v2    # "resolvedUserId":I
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "request":Landroid/media/tv/BroadcastInfoRequest;
    .end local p3    # "userId":I
    :try_start_3d
    throw v6
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 2478
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingPid":I
    .restart local v2    # "resolvedUserId":I
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "request":Landroid/media/tv/BroadcastInfoRequest;
    .restart local p3    # "userId":I
    :catchall_3e
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2479
    throw v5
.end method

.method public requestChannelBrowsable(Landroid/net/Uri;I)V
    .registers 15
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2436
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2437
    .local v0, "callingPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2438
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2437
    const-string/jumbo v4, "requestChannelBrowsable"

    invoke-static {v1, v2, v3, p2, v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 2439
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2441
    .local v2, "identity":J
    :try_start_19
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.tv.action.CHANNEL_BROWSABLE_REQUESTED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2442
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v5}, Lcom/android/server/tv/TvInputManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    .line 2443
    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 2444
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_65

    .line 2445
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 2446
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2447
    .local v8, "receiverPackageName":Ljava/lang/String;
    const-string v9, "android.media.tv.extra.CHANNEL_ID"

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2449
    const-string v9, "android.media.tv.extra.PACKAGE_NAME"

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2450
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2451
    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v9}, Lcom/android/server/tv/TvInputManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_64
    .catchall {:try_start_19 .. :try_end_64} :catchall_6a

    .line 2452
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "receiverPackageName":Ljava/lang/String;
    goto :goto_35

    .line 2455
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_65
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2456
    nop

    .line 2457
    return-void

    .line 2455
    :catchall_6a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2456
    throw v4
.end method

.method public resumeRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 2143
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2144
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "resumeRecording"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 2146
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2148
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 2150
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 2151
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->resumeRecording(Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 2154
    goto :goto_30

    .line 2155
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 2152
    :catch_28
    move-exception v5

    .line 2153
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in resumeRecording"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2155
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 2157
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2158
    nop

    .line 2159
    return-void

    .line 2155
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 2157
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "params":Landroid/os/Bundle;
    .restart local p3    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2158
    throw v4
.end method

.method public selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1839
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1840
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "selectTrack"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1842
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1844
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1846
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->selectTrack(ILjava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1850
    goto :goto_30

    .line 1851
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1848
    :catch_28
    move-exception v5

    .line 1849
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in selectTrack"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1851
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1853
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1854
    nop

    .line 1855
    return-void

    .line 1851
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "type":I
    .end local p3    # "trackId":Ljava/lang/String;
    .end local p4    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1853
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "type":I
    .restart local p3    # "trackId":Ljava/lang/String;
    .restart local p4    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1854
    throw v4
.end method

.method public sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 1881
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1882
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendAppPrivateCommand"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1884
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1886
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1888
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1889
    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1892
    goto :goto_30

    .line 1893
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1890
    :catch_28
    move-exception v5

    .line 1891
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in appPrivateCommand"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1893
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1895
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1896
    nop

    .line 1897
    return-void

    .line 1893
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "command":Ljava/lang/String;
    .end local p3    # "data":Landroid/os/Bundle;
    .end local p4    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1895
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "command":Ljava/lang/String;
    .restart local p3    # "data":Landroid/os/Bundle;
    .restart local p4    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1896
    throw v4
.end method

.method public sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 1296
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.NOTIFY_TV_INPUTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_dd

    .line 1302
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 1305
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_104

    :cond_24
    goto :goto_42

    :sswitch_25
    const-string v2, "android.media.tv.action.PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v1, 0x2

    goto :goto_42

    :sswitch_2f
    const-string v2, "android.media.tv.action.PREVIEW_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v1, 0x0

    goto :goto_42

    :sswitch_39
    const-string v2, "android.media.tv.action.WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    :goto_42
    const-string v0, "Invalid watch next program ID."

    const-string v2, "Invalid preview program ID."

    const-string v3, "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

    const-string v4, "android.media.tv.extra.PREVIEW_PROGRAM_ID"

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    packed-switch v1, :pswitch_data_112

    .line 1325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid TV input notifying action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1326
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1317
    :pswitch_6e
    invoke-virtual {p1, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v1, v9, v5

    if-ltz v1, :cond_85

    .line 1320
    invoke-virtual {p1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-ltz v1, :cond_7f

    goto :goto_a2

    .line 1321
    :cond_7f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1318
    :cond_85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1312
    :pswitch_8b
    invoke-virtual {p1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-ltz v1, :cond_94

    goto :goto_a2

    .line 1313
    :cond_94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1307
    :pswitch_9a
    invoke-virtual {p1, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-ltz v0, :cond_cf

    .line 1328
    :goto_a2
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1329
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1328
    const-string/jumbo v3, "sendTvInputNotifyIntent"

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1330
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1332
    .local v1, "identity":J
    :try_start_b7
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v3}, Lcom/android/server/tv/TvInputManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_c5
    .catchall {:try_start_b7 .. :try_end_c5} :catchall_ca

    .line 1334
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1335
    nop

    .line 1336
    return-void

    .line 1334
    :catchall_ca
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1335
    throw v3

    .line 1308
    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    :cond_cf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1303
    :cond_d5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify package name to notify."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1298
    :cond_dd
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t have permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_104
    .sparse-switch
        -0x98de898 -> :sswitch_39
        0x5d81b12d -> :sswitch_2f
        0x77e569e1 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_8b
        :pswitch_6e
    .end packed-switch
.end method

.method public setCaptionEnabled(Landroid/os/IBinder;ZI)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 1819
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1820
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setCaptionEnabled"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1822
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1824
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1826
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1827
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->setCaptionEnabled(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1830
    goto :goto_30

    .line 1831
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1828
    :catch_28
    move-exception v5

    .line 1829
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in setCaptionEnabled"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1831
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1833
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1834
    nop

    .line 1835
    return-void

    .line 1831
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "enabled":Z
    .end local p3    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1833
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "enabled":Z
    .restart local p3    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1834
    throw v4
.end method

.method public setInteractiveAppNotificationEnabled(Landroid/os/IBinder;ZI)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 1860
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1861
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setInteractiveAppNotificationEnabled"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1863
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1865
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1867
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1868
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->setInteractiveAppNotificationEnabled(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1871
    goto :goto_30

    .line 1872
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1869
    :catch_28
    move-exception v5

    .line 1870
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in setInteractiveAppNotificationEnabled"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1872
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1874
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1875
    nop

    .line 1876
    return-void

    .line 1872
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "enabled":Z
    .end local p3    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1874
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "enabled":Z
    .restart local p3    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1875
    throw v4
.end method

.method public setMainSession(Landroid/os/IBinder;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1602
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_HDMI_CEC_ACTIVE_SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_62

    .line 1611
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1612
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setMainSession"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1614
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1616
    .local v2, "identity":J
    :try_start_23
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_5d

    .line 1617
    :try_start_2a
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 1618
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, p1, :cond_3b

    .line 1619
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_5a

    .line 1637
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1619
    return-void

    .line 1624
    :cond_3b
    :try_start_3b
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v6

    .line 1625
    .local v6, "oldMainSessionToken":Landroid/os/IBinder;
    invoke-static {v5, p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fputmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)V

    .line 1629
    if-eqz p1, :cond_4a

    .line 1630
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v8, 0x1

    invoke-static {v7, p1, v8, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$msetMainLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    .line 1632
    :cond_4a
    if-eqz v6, :cond_54

    .line 1633
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    invoke-static {v7, v6, v8, v9, p2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$msetMainLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    .line 1635
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v6    # "oldMainSessionToken":Landroid/os/IBinder;
    :cond_54
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_3b .. :try_end_55} :catchall_5a

    .line 1637
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1638
    nop

    .line 1639
    return-void

    .line 1635
    :catchall_5a
    move-exception v5

    :try_start_5b
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "userId":I
    :try_start_5c
    throw v5
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    .line 1637
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "userId":I
    :catchall_5d
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1638
    throw v4

    .line 1605
    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    :cond_62
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have CHANGE_HDMI_CEC_ACTIVE_SOURCE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParentalControlsEnabled(ZI)V
    .registers 9
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1393
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1394
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1395
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "setParentalControlsEnabled"

    .line 1394
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1396
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1398
    .local v1, "identity":J
    :try_start_18
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_35

    .line 1399
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1400
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpersistentDataStore(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/tv/PersistentDataStore;->setParentalControlsEnabled(Z)V

    .line 1401
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_32

    .line 1403
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1404
    nop

    .line 1405
    return-void

    .line 1401
    :catchall_32
    move-exception v4

    :try_start_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "enabled":Z
    .end local p2    # "userId":I
    :try_start_34
    throw v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    .line 1403
    .restart local v0    # "resolvedUserId":I
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "enabled":Z
    .restart local p2    # "userId":I
    :catchall_35
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1404
    throw v3
.end method

.method public setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .registers 16
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "userId"    # I

    .line 1643
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1644
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setSurface"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1646
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1647
    .local v2, "identity":J
    const/4 v4, 0x0

    .line 1648
    .local v4, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    const/4 v5, 0x0

    .line 1650
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    const/4 v6, 0x3

    const/4 v7, 0x2

    :try_start_19
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_88

    .line 1652
    :try_start_20
    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v9, p3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v9

    move-object v5, v9

    .line 1653
    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v9, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v9

    move-object v4, v9

    .line 1655
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    if-nez v9, :cond_3e

    .line 1656
    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v9, v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v9

    invoke-interface {v9, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V

    goto :goto_4d

    .line 1658
    :cond_3e
    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-static {v9, v10, v11, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v9

    .line 1659
    invoke-interface {v9, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V

    .line 1661
    :goto_4d
    if-nez p2, :cond_51

    const/4 v9, 0x1

    goto :goto_52

    :cond_51
    const/4 v9, 0x0

    .line 1662
    .local v9, "isVisible":Z
    :goto_52
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisVisible(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v10

    if-eq v10, v9, :cond_60

    .line 1663
    invoke-static {v4, v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputisVisible(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V

    .line 1664
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v10, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mnotifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_60} :catch_63
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_20 .. :try_end_60} :catch_63
    .catchall {:try_start_20 .. :try_end_60} :catchall_61

    .line 1668
    .end local v9    # "isVisible":Z
    :cond_60
    goto :goto_6b

    .line 1669
    :catchall_61
    move-exception v9

    goto :goto_86

    .line 1666
    :catch_63
    move-exception v9

    .line 1667
    .local v9, "e":Ljava/lang/Exception;
    :try_start_64
    const-string v10, "TvInputManagerService"

    const-string v11, "error in setSurface"

    invoke-static {v10, v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1669
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_6b
    monitor-exit v8
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_61

    .line 1671
    if-eqz p2, :cond_71

    .line 1673
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1675
    :cond_71
    if-eqz v4, :cond_81

    .line 1676
    if-nez p2, :cond_76

    .line 1678
    goto :goto_77

    .line 1679
    :cond_76
    move v6, v7

    :goto_77
    nop

    .line 1680
    .local v6, "state":I
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 1681
    invoke-static {v4, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    move-result-object v8

    .line 1680
    invoke-static {v7, v6, v4, v8}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V

    .line 1683
    .end local v6    # "state":I
    :cond_81
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1684
    nop

    .line 1685
    return-void

    .line 1669
    :goto_86
    :try_start_86
    monitor-exit v8
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_61

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "surface":Landroid/view/Surface;
    .end local p3    # "userId":I
    :try_start_87
    throw v9
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    .line 1671
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .restart local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "surface":Landroid/view/Surface;
    .restart local p3    # "userId":I
    :catchall_88
    move-exception v8

    if-eqz p2, :cond_8e

    .line 1673
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1675
    :cond_8e
    if-eqz v4, :cond_9e

    .line 1676
    if-nez p2, :cond_93

    .line 1678
    goto :goto_94

    .line 1679
    :cond_93
    move v6, v7

    :goto_94
    nop

    .line 1680
    .restart local v6    # "state":I
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 1681
    invoke-static {v4, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    move-result-object v9

    .line 1680
    invoke-static {v7, v6, v4, v9}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V

    .line 1683
    .end local v6    # "state":I
    :cond_9e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1684
    throw v8
.end method

.method public setVolume(Landroid/os/IBinder;FI)V
    .registers 15
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "volume"    # F
    .param p3, "userId"    # I

    .line 1716
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1717
    .local v0, "REMOTE_VOLUME_ON":F
    const/4 v1, 0x0

    .line 1718
    .local v1, "REMOTE_VOLUME_OFF":F
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1719
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string/jumbo v5, "setVolume"

    invoke-static {v3, v4, v2, p3, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v3

    .line 1721
    .local v3, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1723
    .local v4, "identity":J
    :try_start_18
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_5f

    .line 1725
    :try_start_1f
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7, p1, v2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v7

    .line 1727
    .local v7, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v8, v7}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v8

    invoke-interface {v8, p2}, Landroid/media/tv/ITvInputSession;->setVolume(F)V

    .line 1728
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    if-eqz v8, :cond_4c

    .line 1731
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    const/16 v10, 0x3e8

    invoke-static {v8, v9, v10, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v8

    .line 1732
    const/4 v9, 0x0

    cmpl-float v10, p2, v9

    if-lez v10, :cond_48

    .line 1733
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_49

    :cond_48
    nop

    .line 1732
    :goto_49
    invoke-interface {v8, v9}, Landroid/media/tv/ITvInputSession;->setVolume(F)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_4c} :catch_4f
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1f .. :try_end_4c} :catch_4f
    .catchall {:try_start_1f .. :try_end_4c} :catchall_4d

    .line 1737
    .end local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_4c
    goto :goto_57

    .line 1738
    :catchall_4d
    move-exception v7

    goto :goto_5d

    .line 1735
    :catch_4f
    move-exception v7

    .line 1736
    .local v7, "e":Ljava/lang/Exception;
    :try_start_50
    const-string v8, "TvInputManagerService"

    const-string v9, "error in setVolume"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1738
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_57
    monitor-exit v6
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_4d

    .line 1740
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1741
    nop

    .line 1742
    return-void

    .line 1738
    :goto_5d
    :try_start_5d
    monitor-exit v6
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_4d

    .end local v0    # "REMOTE_VOLUME_ON":F
    .end local v1    # "REMOTE_VOLUME_OFF":F
    .end local v2    # "callingUid":I
    .end local v3    # "resolvedUserId":I
    .end local v4    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "volume":F
    .end local p3    # "userId":I
    :try_start_5e
    throw v7
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    .line 1740
    .restart local v0    # "REMOTE_VOLUME_ON":F
    .restart local v1    # "REMOTE_VOLUME_OFF":F
    .restart local v2    # "callingUid":I
    .restart local v3    # "resolvedUserId":I
    .restart local v4    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "volume":F
    .restart local p3    # "userId":I
    :catchall_5f
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1741
    throw v6
.end method

.method public startRecording(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "programUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 2084
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2085
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "startRecording"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 2087
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2089
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 2091
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 2095
    goto :goto_30

    .line 2096
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 2093
    :catch_28
    move-exception v5

    .line 2094
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in startRecording"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2096
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 2098
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2099
    nop

    .line 2100
    return-void

    .line 2096
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "programUri":Landroid/net/Uri;
    .end local p3    # "params":Landroid/os/Bundle;
    .end local p4    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 2098
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "programUri":Landroid/net/Uri;
    .restart local p3    # "params":Landroid/os/Bundle;
    .restart local p4    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2099
    throw v4
.end method

.method public stopRecording(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 2104
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2105
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "stopRecording"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 2107
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2109
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 2111
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->stopRecording()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 2114
    goto :goto_30

    .line 2115
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 2112
    :catch_28
    move-exception v5

    .line 2113
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in stopRecording"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2115
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 2117
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2118
    nop

    .line 2119
    return-void

    .line 2115
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 2117
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2118
    throw v4
.end method

.method public timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 2063
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2064
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftEnablePositionTracking"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 2066
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2068
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 2070
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 2071
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftEnablePositionTracking(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 2074
    goto :goto_30

    .line 2075
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 2072
    :catch_28
    move-exception v5

    .line 2073
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftEnablePositionTracking"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2075
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 2077
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2078
    nop

    .line 2079
    return-void

    .line 2075
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "enable":Z
    .end local p3    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 2077
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "enable":Z
    .restart local p3    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2078
    throw v4
.end method

.method public timeShiftPause(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1982
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1983
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftPause"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1985
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1987
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1989
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->timeShiftPause()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1992
    goto :goto_30

    .line 1993
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1990
    :catch_28
    move-exception v5

    .line 1991
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftPause"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1993
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1995
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1996
    nop

    .line 1997
    return-void

    .line 1993
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1995
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1996
    throw v4
.end method

.method public timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "recordedProgramUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1962
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1963
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftPlay"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1965
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1967
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1969
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftPlay(Landroid/net/Uri;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1973
    goto :goto_30

    .line 1974
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1971
    :catch_28
    move-exception v5

    .line 1972
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftPlay"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1974
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1976
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1977
    nop

    .line 1978
    return-void

    .line 1974
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "recordedProgramUri":Landroid/net/Uri;
    .end local p3    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1976
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "recordedProgramUri":Landroid/net/Uri;
    .restart local p3    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1977
    throw v4
.end method

.method public timeShiftResume(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 2001
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2002
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftResume"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 2004
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2006
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 2008
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 2009
    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->timeShiftResume()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 2012
    goto :goto_30

    .line 2013
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 2010
    :catch_28
    move-exception v5

    .line 2011
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftResume"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2013
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 2015
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2016
    nop

    .line 2017
    return-void

    .line 2013
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 2015
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2016
    throw v4
.end method

.method public timeShiftSeekTo(Landroid/os/IBinder;JI)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "timeMs"    # J
    .param p4, "userId"    # I

    .line 2021
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2022
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftSeekTo"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 2024
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2026
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 2028
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 2029
    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->timeShiftSeekTo(J)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 2032
    goto :goto_30

    .line 2033
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 2030
    :catch_28
    move-exception v5

    .line 2031
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftSeekTo"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2033
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 2035
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2036
    nop

    .line 2037
    return-void

    .line 2033
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "timeMs":J
    .end local p4    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 2035
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "timeMs":J
    .restart local p4    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2036
    throw v4
.end method

.method public timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/media/PlaybackParams;
    .param p3, "userId"    # I

    .line 2042
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2043
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftSetPlaybackParams"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 2045
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2047
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 2049
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 2050
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 2053
    goto :goto_30

    .line 2054
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 2051
    :catch_28
    move-exception v5

    .line 2052
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftSetPlaybackParams"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2054
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 2056
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2057
    nop

    .line 2058
    return-void

    .line 2054
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "params":Landroid/media/PlaybackParams;
    .end local p3    # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 2056
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "params":Landroid/media/PlaybackParams;
    .restart local p3    # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2057
    throw v4
.end method

.method public tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 21
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 1746
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1747
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1748
    .local v6, "callingPid":I
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const-string/jumbo v7, "tune"

    move/from16 v8, p4

    invoke-static {v0, v6, v5, v8, v7}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v7

    .line 1749
    .local v7, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1751
    .local v9, "identity":J
    :try_start_1f
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_be

    .line 1753
    :try_start_26
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0, v2, v5, v7}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/media/tv/ITvInputSession;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1755
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0, v7}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 1756
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    iget-object v12, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v12, v2, v5, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v12

    .line 1758
    .local v12, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_4c

    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;

    move-result-object v13

    .line 1759
    invoke-static {v13, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_57

    .line 1760
    :cond_4c
    invoke-static {v12, v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V

    .line 1761
    invoke-static {v12, v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/net/Uri;)V

    .line 1762
    iget-object v13, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v13, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mnotifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;)V

    .line 1764
    :cond_57
    invoke-static/range {p2 .. p2}, Landroid/media/tv/TvContract;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z

    move-result v13
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_5b} :catch_ae
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_26 .. :try_end_5b} :catch_ae
    .catchall {:try_start_26 .. :try_end_5b} :catchall_ac

    if-eqz v13, :cond_62

    .line 1766
    :try_start_5d
    monitor-exit v11
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_ac

    .line 1791
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1766
    return-void

    .line 1769
    :cond_62
    :try_start_62
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisRecordingSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v13
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_66} :catch_ae
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_62 .. :try_end_66} :catch_ae
    .catchall {:try_start_62 .. :try_end_66} :catchall_ac

    if-eqz v13, :cond_6d

    .line 1770
    :try_start_68
    monitor-exit v11
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_ac

    .line 1791
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1770
    return-void

    .line 1773
    :cond_6d
    :try_start_6d
    iget-object v13, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v15, 0x5

    .line 1776
    invoke-static {v12, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    move-result-object v14

    .line 1773
    invoke-static {v13, v15, v12, v14}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V

    .line 1778
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v13

    .line 1779
    .local v13, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcomponentName(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1780
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v13, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1781
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v13, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1782
    iput-object v4, v13, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1783
    iput-object v2, v13, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 1784
    iget-object v14, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmWatchLogHandler(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v13}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 1785
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_ab} :catch_ae
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_6d .. :try_end_ab} :catch_ae
    .catchall {:try_start_6d .. :try_end_ab} :catchall_ac

    .line 1788
    .end local v0    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v12    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v13    # "args":Lcom/android/internal/os/SomeArgs;
    goto :goto_b6

    .line 1789
    :catchall_ac
    move-exception v0

    goto :goto_bc

    .line 1786
    :catch_ae
    move-exception v0

    .line 1787
    .local v0, "e":Ljava/lang/Exception;
    :try_start_af
    const-string v12, "TvInputManagerService"

    const-string v13, "error in tune"

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1789
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b6
    monitor-exit v11
    :try_end_b7
    .catchall {:try_start_af .. :try_end_b7} :catchall_ac

    .line 1791
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1792
    nop

    .line 1793
    return-void

    .line 1789
    :goto_bc
    :try_start_bc
    monitor-exit v11
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_ac

    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v7    # "resolvedUserId":I
    .end local v9    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "channelUri":Landroid/net/Uri;
    .end local p3    # "params":Landroid/os/Bundle;
    .end local p4    # "userId":I
    :try_start_bd
    throw v0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_be

    .line 1791
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    .restart local v7    # "resolvedUserId":I
    .restart local v9    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "channelUri":Landroid/net/Uri;
    .restart local p3    # "params":Landroid/os/Bundle;
    .restart local p4    # "userId":I
    :catchall_be
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1792
    throw v0
.end method

.method public unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "unblockedRating"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1798
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1799
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1800
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "unblockContent"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1802
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1804
    .local v2, "identity":J
    :try_start_18
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_3b

    .line 1806
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1807
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->unblockContent(Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_2b
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1f .. :try_end_28} :catch_2b
    .catchall {:try_start_1f .. :try_end_28} :catchall_29

    .line 1810
    goto :goto_33

    .line 1811
    :catchall_29
    move-exception v5

    goto :goto_39

    .line 1808
    :catch_2b
    move-exception v5

    .line 1809
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2c
    const-string v6, "TvInputManagerService"

    const-string v7, "error in unblockContent"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1811
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_29

    .line 1813
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1814
    nop

    .line 1815
    return-void

    .line 1811
    :goto_39
    :try_start_39
    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_29

    .end local v0    # "callingUid":I
    .end local v1    # "resolvedUserId":I
    .end local v2    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "sessionToken":Landroid/os/IBinder;
    .end local p2    # "unblockedRating":Ljava/lang/String;
    .end local p3    # "userId":I
    :try_start_3a
    throw v5
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 1813
    .restart local v0    # "callingUid":I
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "sessionToken":Landroid/os/IBinder;
    .restart local p2    # "unblockedRating":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catchall_3b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1814
    throw v4
.end method

.method public unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 9
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"    # I

    .line 1362
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "unregisterCallback"

    .line 1362
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1364
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1366
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3a

    .line 1367
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1368
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1369
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcallbackPidUidMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    nop

    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_37

    .line 1372
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1373
    nop

    .line 1374
    return-void

    .line 1370
    :catchall_37
    move-exception v4

    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    .end local v0    # "resolvedUserId":I
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local p2    # "userId":I
    :try_start_39
    throw v4
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    .line 1372
    .restart local v0    # "resolvedUserId":I
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .restart local p2    # "userId":I
    :catchall_3a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1373
    throw v3
.end method

.method public updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V
    .registers 11
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;
    .param p2, "userId"    # I

    .line 1137
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1138
    .local v0, "inputInfoPackageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1139
    .local v1, "callingPackageName":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    .line 1140
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_42

    .line 1144
    :cond_1f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not allowed to change TvInputInfo for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1148
    :cond_42
    :goto_42
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string/jumbo v5, "updateTvInputInfo"

    .line 1148
    invoke-static {v2, v3, v4, p2, v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 1150
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1152
    .local v3, "identity":J
    :try_start_57
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_72

    .line 1153
    :try_start_5e
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v6

    .line 1154
    .local v6, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7, v6, p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mupdateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V

    .line 1155
    .end local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v5
    :try_end_6a
    .catchall {:try_start_5e .. :try_end_6a} :catchall_6f

    .line 1157
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1158
    nop

    .line 1159
    return-void

    .line 1155
    :catchall_6f
    move-exception v6

    :try_start_70
    monitor-exit v5
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    .end local v0    # "inputInfoPackageName":Ljava/lang/String;
    .end local v1    # "callingPackageName":Ljava/lang/String;
    .end local v2    # "resolvedUserId":I
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1    # "inputInfo":Landroid/media/tv/TvInputInfo;
    .end local p2    # "userId":I
    :try_start_71
    throw v6
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_72

    .line 1157
    .restart local v0    # "inputInfoPackageName":Ljava/lang/String;
    .restart local v1    # "callingPackageName":Ljava/lang/String;
    .restart local v2    # "resolvedUserId":I
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1    # "inputInfo":Landroid/media/tv/TvInputInfo;
    .restart local p2    # "userId":I
    :catchall_72
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1158
    throw v5
.end method
