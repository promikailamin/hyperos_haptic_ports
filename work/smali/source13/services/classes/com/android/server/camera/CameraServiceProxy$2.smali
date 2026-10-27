.class Lcom/android/server/camera/CameraServiceProxy$2;
.super Landroid/hardware/ICameraServiceProxy$Stub;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 470
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getRotateAndCropOverride(Ljava/lang/String;II)I
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lensFacing"    # I
    .param p3, "userId"    # I

    .line 473
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "CameraService_proxy"

    const/4 v2, 0x0

    const/16 v3, 0x417

    if-eq v0, v3, :cond_2c

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling UID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return v2

    .line 479
    :cond_2c
    const/4 v0, 0x0

    .line 480
    .local v0, "taskInfo":Lcom/android/server/camera/CameraServiceProxy$TaskInfo;
    const/4 v3, 0x0

    .line 484
    .local v3, "recentTasks":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :try_start_2e
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5, v2, p3}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v4
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_37} :catch_130

    move-object v3, v4

    .line 489
    nop

    .line 491
    if-eqz v3, :cond_12a

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12a

    .line 492
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 493
    .local v5, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 494
    new-instance v4, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;

    invoke-direct {v4}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;-><init>()V

    move-object v0, v4

    .line 495
    iget v4, v5, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iput v4, v0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->frontTaskId:I

    .line 496
    iget-object v4, v5, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eqz v4, :cond_75

    const/4 v4, 0x1

    goto :goto_76

    :cond_75
    move v4, v2

    :goto_76
    iput-boolean v4, v0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isResizeable:Z

    .line 498
    iget v4, v5, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    iput v4, v0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    .line 499
    iget v4, v5, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    iput v4, v0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->userId:I

    .line 500
    iget-object v4, v5, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 501
    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    .line 503
    iget-object v4, v5, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 504
    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    .line 506
    goto :goto_96

    .line 508
    .end local v5    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_95
    goto :goto_4d

    .line 510
    :cond_96
    :goto_96
    if-nez v0, :cond_af

    .line 511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recent tasks don\'t include camera client package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return v2

    .line 524
    :cond_af
    if-eqz v0, :cond_c6

    const-wide/32 v4, 0xb476b84

    iget v6, v0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->userId:I

    .line 526
    invoke-static {v6}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 524
    invoke-static {v4, v5, p1, v6}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 527
    const-string v4, "OVERRIDE_CAMERA_ROTATE_AND_CROP_DEFAULTS enabled!"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return v2

    .line 530
    :cond_c6
    const/4 v4, 0x0

    .line 531
    .local v4, "ignoreResizableAndSdkCheck":Z
    if-eqz v0, :cond_de

    const-wide/32 v5, 0xb6a427e

    iget v7, v0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->userId:I

    .line 533
    invoke-static {v7}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 531
    invoke-static {v5, v6, p1, v7}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_de

    .line 534
    const-string v5, "OVERRIDE_CAMERA_RESIZABLE_AND_SDK_CHECK enabled!"

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v4, 0x1

    .line 538
    :cond_de
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v5}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmContext(Lcom/android/server/camera/CameraServiceProxy;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 540
    .local v5, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v5, :cond_124

    .line 541
    iget v6, v0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 542
    .local v6, "display":Landroid/view/Display;
    if-nez v6, :cond_10f

    .line 543
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid display id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return v2

    .line 547
    :cond_10f
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 548
    .end local v6    # "display":Landroid/view/Display;
    .local v1, "displayRotation":I
    nop

    .line 553
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v2}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmContext(Lcom/android/server/camera/CameraServiceProxy;)Landroid/content/Context;

    move-result-object v6

    move-object v7, p1

    move-object v8, v0

    move v9, v1

    move v10, p2

    move v11, v4

    invoke-static/range {v6 .. v11}, Lcom/android/server/camera/CameraServiceProxy;->getCropRotateScale(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/camera/CameraServiceProxy$TaskInfo;IIZ)I

    move-result v2

    return v2

    .line 549
    .end local v1    # "displayRotation":I
    :cond_124
    const-string v6, "Failed to query display manager!"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return v2

    .line 516
    .end local v4    # "ignoreResizableAndSdkCheck":Z
    .end local v5    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_12a
    const-string v4, "Recent task list is empty!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v2

    .line 486
    :catch_130
    move-exception v4

    .line 487
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Failed to query recent tasks!"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v2
.end method

.method public isCameraDisabled()Z
    .registers 4

    .line 592
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v0}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmContext(Lcom/android/server/camera/CameraServiceProxy;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 593
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_19

    .line 594
    const-string v1, "CameraService_proxy"

    const-string v2, "Failed to get the device policy manager service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v1, 0x0

    return v1

    .line 597
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public notifyCameraState(Landroid/hardware/CameraSessionStats;)V
    .registers 9
    .param p1, "cameraState"    # Landroid/hardware/CameraSessionStats;

    .line 570
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_2b

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_proxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void

    .line 575
    :cond_2b
    invoke-virtual {p1}, Landroid/hardware/CameraSessionStats;->getNewCameraState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$smcameraStateToString(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "state":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/CameraSessionStats;->getFacing()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$smcameraFacingToString(I)Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "facingStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v2, p1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$mupdateActivityCount(Lcom/android/server/camera/CameraServiceProxy;Landroid/hardware/CameraSessionStats;)V

    .line 586
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v2}, Lcom/android/server/camera/CameraServiceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/CameraSessionStats;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/CameraSessionStats;->getNewCameraState()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/CameraSessionStats;->getClientName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/CameraSessionStats;->getApiLevel()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/camera/impl/CameraTrackExtStub;->trackCameraState(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    .line 588
    return-void
.end method

.method public pingForUserUpdate()V
    .registers 3

    .line 559
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_2b

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_proxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void

    .line 564
    :cond_2b
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$mnotifySwitchWithRetries(Lcom/android/server/camera/CameraServiceProxy;I)V

    .line 565
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v0, v1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$mnotifyDeviceStateWithRetries(Lcom/android/server/camera/CameraServiceProxy;I)V

    .line 566
    return-void
.end method
