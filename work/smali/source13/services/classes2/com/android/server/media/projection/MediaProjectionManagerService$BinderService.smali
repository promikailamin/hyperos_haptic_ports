.class final Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
.super Landroid/media/projection/IMediaProjectionManager$Stub;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .registers 2

    .line 311
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method public addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 420
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 425
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 427
    .local v0, "token":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$maddCallback(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 429
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 430
    nop

    .line 431
    return-void

    .line 429
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 430
    throw v2

    .line 422
    .end local v0    # "token":J
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;
    .registers 22
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "isPermanentGrant"    # Z

    .line 332
    move-object/from16 v1, p0

    move-object/from16 v10, p2

    iget-object v0, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_89

    .line 337
    if-eqz v10, :cond_80

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_80

    .line 342
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 344
    .local v11, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    .line 345
    .local v12, "callingUser":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 351
    .local v13, "callingToken":J
    :try_start_26
    iget-object v0, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v0, v10, v15, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_31} :catch_62
    .catchall {:try_start_26 .. :try_end_31} :catchall_60

    .line 354
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    nop

    .line 356
    :try_start_32
    new-instance v16, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget-object v3, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 357
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v8

    move-object/from16 v2, v16

    move/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v6, p2

    move v9, v11

    invoke-direct/range {v2 .. v9}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;IILjava/lang/String;IZI)V

    move-object/from16 v2, v16

    .line 359
    .local v2, "projection":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    if-eqz p4, :cond_5b

    .line 360
    iget-object v3, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object v3

    const/16 v4, 0x2e

    iget v5, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v6, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v15}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_5b
    .catchall {:try_start_32 .. :try_end_5b} :catchall_60

    .line 364
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_5b
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    nop

    .line 366
    return-object v2

    .line 364
    .end local v2    # "projection":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    :catchall_60
    move-exception v0

    goto :goto_7c

    .line 352
    :catch_62
    move-exception v0

    .line 353
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package matching :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "pid":I
    .end local v12    # "callingUser":Landroid/os/UserHandle;
    .end local v13    # "callingToken":J
    .end local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "type":I
    .end local p4    # "isPermanentGrant":Z
    throw v2
    :try_end_7c
    .catchall {:try_start_63 .. :try_end_7c} :catchall_60

    .line 364
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "pid":I
    .restart local v12    # "callingUser":Landroid/os/UserHandle;
    .restart local v13    # "callingToken":J
    .restart local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "type":I
    .restart local p4    # "isPermanentGrant":Z
    :goto_7c
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    throw v0

    .line 338
    .end local v11    # "pid":I
    .end local v12    # "callingUser":Landroid/os/UserHandle;
    .end local v13    # "callingToken":J
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "package name must not be empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_89
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_MEDIA_PROJECTION in order to grant projection permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 471
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "MediaProjectionManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 472
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 474
    .local v0, "token":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$mdump(Lcom/android/server/media/projection/MediaProjectionManagerService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 476
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 477
    nop

    .line 478
    return-void

    .line 476
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 477
    throw v2
.end method

.method public getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .registers 4

    .line 377
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 382
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 384
    .local v0, "token":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$mgetActiveProjectionInfo(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/projection/MediaProjectionInfo;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c

    .line 386
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    return-object v2

    .line 386
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 387
    throw v2

    .line 379
    .end local v0    # "token":J
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasProjectionPermission(ILjava/lang/String;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 316
    .local v0, "token":J
    const/4 v2, 0x0

    .line 318
    .local v2, "hasPermission":Z
    :try_start_5
    const-string v3, "android.permission.CAPTURE_VIDEO_OUTPUT"

    invoke-direct {p0, p2, v3}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object v3

    const/16 v4, 0x2e

    .line 320
    invoke-virtual {v3, v4, p1, p2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v3
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_25

    if-nez v3, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v3, 0x1

    :goto_1f
    or-int/2addr v2, v3

    .line 324
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 325
    nop

    .line 326
    return v2

    .line 324
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 325
    throw v3
.end method

.method public isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z
    .registers 4
    .param p1, "projection"    # Landroid/media/projection/IMediaProjection;

    .line 371
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 372
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 371
    invoke-static {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$misValidMediaProjection(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 435
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 442
    .local v0, "token":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$mremoveCallback(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 444
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 445
    nop

    .line 446
    return-void

    .line 444
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 445
    throw v2

    .line 437
    .end local v0    # "token":J
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to remove projection callbacks"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentRecordingSession(Landroid/view/ContentRecordingSession;Landroid/media/projection/IMediaProjection;)V
    .registers 8
    .param p1, "incomingSession"    # Landroid/view/ContentRecordingSession;
    .param p2, "projection"    # Landroid/media/projection/IMediaProjection;

    .line 454
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 456
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_2d

    .line 457
    :try_start_b
    invoke-virtual {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 460
    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    .line 461
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerInternal;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    .line 463
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_2a

    .line 465
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    nop

    .line 467
    return-void

    .line 458
    :cond_22
    :try_start_22
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Invalid media projection"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
    .end local p1    # "incomingSession":Landroid/view/ContentRecordingSession;
    .end local p2    # "projection":Landroid/media/projection/IMediaProjection;
    throw v3

    .line 463
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
    .restart local p1    # "incomingSession":Landroid/view/ContentRecordingSession;
    .restart local p2    # "projection":Landroid/media/projection/IMediaProjection;
    :catchall_2a
    move-exception v3

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
    .end local p1    # "incomingSession":Landroid/view/ContentRecordingSession;
    .end local p2    # "projection":Landroid/media/projection/IMediaProjection;
    :try_start_2c
    throw v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    .line 465
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
    .restart local p1    # "incomingSession":Landroid/view/ContentRecordingSession;
    .restart local p2    # "projection":Landroid/media/projection/IMediaProjection;
    :catchall_2d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    throw v2
.end method

.method public stopActiveProjection()V
    .registers 4

    .line 392
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_48

    .line 397
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 399
    .local v0, "token":J
    invoke-static {}, Lcom/android/server/media/projection/MediaProjectionManagerServiceStub;->get()Lcom/android/server/media/projection/MediaProjectionManagerServiceStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/media/projection/MediaProjectionManagerServiceStub;->isSupportMutilMediaProjection()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 401
    :try_start_1c
    invoke-static {}, Lcom/android/server/media/projection/MediaProjectionManagerServiceStub;->get()Lcom/android/server/media/projection/MediaProjectionManagerServiceStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/media/projection/MediaProjectionManagerServiceStub;->stopActiveProjection()V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_28

    .line 403
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 404
    nop

    .line 405
    return-void

    .line 403
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 404
    throw v2

    .line 409
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 410
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_43

    .line 413
    :cond_3e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 414
    nop

    .line 416
    return-void

    .line 413
    :catchall_43
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 414
    throw v2

    .line 394
    .end local v0    # "token":J
    :cond_48
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
