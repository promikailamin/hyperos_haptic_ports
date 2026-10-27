.class Lcom/android/server/wm/BackNavigationController;
.super Ljava/lang/Object;
.source "BackNavigationController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackNavigationController"


# instance fields
.field private mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createRemoteAnimationTargetLocked(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Landroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;
    .registers 23
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "animLeash"    # Landroid/view/SurfaceControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/Task;",
            "Landroid/view/SurfaceControl;",
            ")",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    .local p0, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    move-object/from16 v3, p3

    .line 362
    new-instance v18, Landroid/view/RemoteAnimationTarget;

    move-object/from16 v0, v18

    move-object/from16 v14, p2

    iget v1, v14, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v2, Landroid/graphics/Rect;

    move-object v5, v2

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    move-object v6, v2

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getPrefixOrderIndex()I

    move-result v7

    new-instance v2, Landroid/graphics/Point;

    move-object v8, v2

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Rect;

    move-object v9, v2

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    move-object v10, v2

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v11

    .line 377
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    move-object/from16 v13, p1

    iget v2, v13, Lcom/android/server/wm/ActivityRecord;->windowType:I

    move/from16 v17, v2

    const/4 v2, 0x1

    const/4 v12, 0x1

    const/16 v16, 0x0

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    .line 362
    return-object v18
.end method

.method private getActivitySnapshot(Lcom/android/server/wm/Task;Landroid/content/ComponentName;)Landroid/hardware/HardwareBuffer;
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "activityComponent"    # Landroid/content/ComponentName;

    .line 419
    iget-object v0, p1, Lcom/android/server/wm/Task;->mBackScreenshots:Ljava/util/HashMap;

    .line 420
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    .line 421
    .local v0, "backBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return-object v1
.end method

.method private getTaskSnapshot(II)Landroid/hardware/HardwareBuffer;
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 427
    return-object v1

    .line 429
    :cond_6
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    .line 431
    .local v0, "snapshot":Landroid/window/TaskSnapshot;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    :cond_12
    return-object v1
.end method

.method static isEnabled()Z
    .registers 2

    .line 57
    const-string/jumbo v0, "persist.wm.debug.predictive_back"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method static isScreenshotEnabled()Z
    .registers 2

    .line 61
    const-string/jumbo v0, "persist.wm.debug.predictive_back_screenshot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method static synthetic lambda$startBackNavigation$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "finalTask"    # Lcom/android/server/wm/Task;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 219
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private needsScreenshot(I)Z
    .registers 4
    .param p1, "backType"    # I

    .line 435
    invoke-static {}, Lcom/android/server/wm/BackNavigationController;->isScreenshotEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 436
    return v1

    .line 438
    :cond_8
    packed-switch p1, :pswitch_data_e

    .line 443
    const/4 v0, 0x1

    return v0

    .line 441
    :pswitch_d
    return v1

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private onBackNavigationDone(Landroid/os/Bundle;Lcom/android/server/wm/WindowContainer;ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 21
    .param p1, "result"    # Landroid/os/Bundle;
    .param p3, "backType"    # I
    .param p4, "task"    # Lcom/android/server/wm/Task;
    .param p5, "prevActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p6, "requestAnimation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;I",
            "Lcom/android/server/wm/Task;",
            "Lcom/android/server/wm/ActivityRecord;",
            "Z)V"
        }
    .end annotation

    .line 385
    .local p2, "windowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    move-object v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 386
    .local v3, "surfaceControl":Landroid/view/SurfaceControl;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_17

    const-string v6, "TriggerBack"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    move v6, v4

    goto :goto_18

    :cond_17
    move v6, v5

    .line 388
    .local v6, "triggerBack":Z
    :goto_18
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v7, :cond_3d

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam1":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam2":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x6a082819

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v7, v12, v5

    aput-object v8, v12, v4

    const/4 v13, 0x2

    aput-object v9, v12, v13

    const-string/jumbo v13, "onBackNavigationDone backType=%s, task=%s, prevActivity=%s"

    invoke-static {v10, v11, v5, v13, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 391
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    .end local v9    # "protoLogParam2":Ljava/lang/String;
    :cond_3d
    move/from16 v7, p3

    if-ne v7, v4, :cond_7b

    if-eqz p6, :cond_7b

    .line 392
    if-eqz v6, :cond_57

    .line 393
    if-eqz v3, :cond_57

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v8

    if-eqz v8, :cond_57

    .line 396
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    .line 397
    .local v8, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v8, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 398
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 401
    .end local v8    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_57
    if-eqz v2, :cond_7d

    if-nez v6, :cond_7d

    .line 403
    iget-object v8, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 404
    iput-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 405
    sget-boolean v8, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v8, :cond_7d

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x2a63f6e7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v5

    const-string v11, "Setting Activity.mLauncherTaskBehind to false. Activity=%s"

    invoke-static {v9, v10, v5, v11, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 407
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    goto :goto_7d

    .line 410
    :cond_7b
    iput-boolean v5, v1, Lcom/android/server/wm/Task;->mBackGestureStarted:Z

    .line 412
    :cond_7d
    :goto_7d
    move-object v4, p0

    move-object/from16 v5, p2

    invoke-direct {p0, v5}, Lcom/android/server/wm/BackNavigationController;->resetSurfaces(Lcom/android/server/wm/WindowContainer;)V

    .line 413
    return-void
.end method

.method private resetSurfaces(Lcom/android/server/wm/WindowContainer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 447
    .local p1, "windowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 448
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x15f452c

    const/4 v3, 0x0

    const-string v4, "Back: Reset surfaces"

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 449
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 450
    .local v1, "tx":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 451
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v2, :cond_34

    .line 452
    nop

    .line 453
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 452
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 454
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 456
    .end local v1    # "tx":Landroid/view/SurfaceControl$Transaction;
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 457
    return-void

    .line 456
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method


# virtual methods
.method synthetic lambda$startBackNavigation$1$com-android-server-wm-BackNavigationController(Lcom/android/server/wm/WindowContainer;)V
    .registers 2
    .param p1, "finalRemovedWindowContainer"    # Lcom/android/server/wm/WindowContainer;

    .line 338
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackNavigationController;->resetSurfaces(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method synthetic lambda$startBackNavigation$2$com-android-server-wm-BackNavigationController(Lcom/android/server/wm/WindowContainer;ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ZLandroid/os/Bundle;)V
    .registers 14
    .param p1, "finalRemovedWindowContainer"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "finalBackType"    # I
    .param p3, "finalTask"    # Lcom/android/server/wm/Task;
    .param p4, "finalprevActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "requestAnimation"    # Z
    .param p6, "result"    # Landroid/os/Bundle;

    .line 348
    move-object v0, p0

    move-object v1, p6

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/BackNavigationController;->onBackNavigationDone(Landroid/os/Bundle;Lcom/android/server/wm/WindowContainer;ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method setTaskSnapshotController(Lcom/android/server/wm/TaskSnapshotController;)V
    .registers 2
    .param p1, "taskSnapshotController"    # Lcom/android/server/wm/TaskSnapshotController;

    .line 460
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 461
    return-void
.end method

.method startBackNavigation(Lcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceControl$Transaction;Z)Landroid/window/BackNavigationInfo;
    .registers 38
    .param p1, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "tx"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "requestAnimation"    # Z

    .line 89
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-nez p2, :cond_d

    .line 90
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    move-object v10, v0

    .end local p2    # "tx":Landroid/view/SurfaceControl$Transaction;
    .local v0, "tx":Landroid/view/SurfaceControl$Transaction;
    goto :goto_f

    .line 89
    .end local v0    # "tx":Landroid/view/SurfaceControl$Transaction;
    .restart local p2    # "tx":Landroid/view/SurfaceControl$Transaction;
    :cond_d
    move-object/from16 v10, p2

    .line 93
    .end local p2    # "tx":Landroid/view/SurfaceControl$Transaction;
    .local v10, "tx":Landroid/view/SurfaceControl$Transaction;
    :goto_f
    const/4 v1, -0x1

    .line 96
    .local v1, "backType":I
    const/4 v2, 0x0

    .line 99
    .local v2, "currentActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v3, 0x0

    .line 103
    .local v3, "currentTask":Lcom/android/server/wm/Task;
    const/4 v4, 0x0

    .line 109
    .local v4, "prevTask":Lcom/android/server/wm/Task;
    const/4 v5, 0x0

    .line 110
    .local v5, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v6, 0x0

    .line 111
    .local v6, "animationLeashParent":Landroid/view/SurfaceControl;
    const/4 v7, 0x0

    .line 112
    .local v7, "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    const/4 v11, 0x0

    .line 116
    .local v11, "topAppTarget":Landroid/view/RemoteAnimationTarget;
    new-instance v0, Landroid/window/BackNavigationInfo$Builder;

    invoke-direct {v0}, Landroid/window/BackNavigationInfo$Builder;-><init>()V

    move-object v12, v0

    .line 117
    .local v12, "infoBuilder":Landroid/window/BackNavigationInfo$Builder;
    iget-object v13, v9, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 120
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 121
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 122
    .local v0, "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v14

    .line 124
    .local v14, "focusedWindowToken":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v15
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_591

    .line 126
    .local v15, "window":Lcom/android/server/wm/WindowState;
    move/from16 p2, v1

    .end local v1    # "backType":I
    .local p2, "backType":I
    if-nez v15, :cond_8f

    .line 127
    :try_start_37
    iget-object v1, v9, Lcom/android/server/wm/WindowManagerService;->mEmbeddedWindowController:Lcom/android/server/wm/EmbeddedWindowController;

    .line 128
    invoke-virtual {v1, v14}, Lcom/android/server/wm/EmbeddedWindowController;->getByFocusToken(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    move-result-object v1

    .line 129
    .local v1, "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    if-eqz v1, :cond_79

    .line 130
    sget-boolean v18, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v18, :cond_69

    move-object/from16 v18, v0

    .end local v0    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .local v18, "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    move-object/from16 v19, v1

    .end local v1    # "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .local v19, "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    const-string v1, "Current focused window is embeddedWindow. Dispatch KEYCODE_BACK."
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_84

    move-object/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v21, "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :try_start_4e
    move-object/from16 v16, v2

    check-cast v16, [Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_5e

    move-object/from16 v22, v3

    move-object/from16 v20, v4

    const v3, -0x66599900

    const/4 v4, 0x0

    .end local v3    # "currentTask":Lcom/android/server/wm/Task;
    .end local v4    # "prevTask":Lcom/android/server/wm/Task;
    .local v20, "prevTask":Lcom/android/server/wm/Task;
    .local v22, "currentTask":Lcom/android/server/wm/Task;
    :try_start_5a
    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_73

    .line 314
    .end local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .end local v15    # "window":Lcom/android/server/wm/WindowState;
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v19    # "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .end local v20    # "prevTask":Lcom/android/server/wm/Task;
    .end local v22    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v3    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v4    # "prevTask":Lcom/android/server/wm/Task;
    :catchall_5e
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v20, v4

    move/from16 v1, p2

    move-object/from16 v2, v21

    .end local v3    # "currentTask":Lcom/android/server/wm/Task;
    .end local v4    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v20    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v22    # "currentTask":Lcom/android/server/wm/Task;
    goto/16 :goto_5a2

    .line 130
    .end local v20    # "prevTask":Lcom/android/server/wm/Task;
    .end local v21    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v0    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v1    # "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .restart local v2    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v4    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .restart local v15    # "window":Lcom/android/server/wm/WindowState;
    :cond_69
    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v20, v4

    .line 132
    .end local v0    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v1    # "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .end local v2    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "currentTask":Lcom/android/server/wm/Task;
    .end local v4    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v19    # "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .restart local v20    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v21    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v22    # "currentTask":Lcom/android/server/wm/Task;
    :goto_73
    monitor-exit v13
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_ad

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    return-object v1

    .line 129
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v19    # "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .end local v20    # "prevTask":Lcom/android/server/wm/Task;
    .end local v21    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v0    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v1    # "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .restart local v2    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v4    # "prevTask":Lcom/android/server/wm/Task;
    :cond_79
    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v20, v4

    .end local v0    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v1    # "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .end local v2    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "currentTask":Lcom/android/server/wm/Task;
    .end local v4    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v19    # "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .restart local v20    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v21    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v22    # "currentTask":Lcom/android/server/wm/Task;
    goto :goto_97

    .line 314
    .end local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .end local v15    # "window":Lcom/android/server/wm/WindowState;
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v19    # "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .end local v20    # "prevTask":Lcom/android/server/wm/Task;
    .end local v21    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v2    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v4    # "prevTask":Lcom/android/server/wm/Task;
    :catchall_84
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v20, v4

    move/from16 v1, p2

    .end local v2    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "currentTask":Lcom/android/server/wm/Task;
    .end local v4    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v20    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v21    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v22    # "currentTask":Lcom/android/server/wm/Task;
    goto/16 :goto_5a2

    .line 126
    .end local v20    # "prevTask":Lcom/android/server/wm/Task;
    .end local v21    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v0    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v2    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v4    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .restart local v15    # "window":Lcom/android/server/wm/WindowState;
    :cond_8f
    move-object/from16 v18, v0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v20, v4

    .line 140
    .end local v0    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v2    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "currentTask":Lcom/android/server/wm/Task;
    .end local v4    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v20    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v21    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v22    # "currentTask":Lcom/android/server/wm/Task;
    :goto_97
    if-eqz v15, :cond_b8

    .line 141
    :try_start_99
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v0, :cond_b8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x3b75a2a9

    const-string v2, "Focused window found using getFocusedWindowToken"

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b8

    .line 314
    .end local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .end local v15    # "window":Lcom/android/server/wm/WindowState;
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    :catchall_ad
    move-exception v0

    move/from16 v1, p2

    move-object/from16 v4, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    goto/16 :goto_5a2

    .line 145
    .restart local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .restart local v15    # "window":Lcom/android/server/wm/WindowState;
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    :cond_b8
    :goto_b8
    const/4 v0, 0x0

    .line 146
    .local v0, "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    if-eqz v15, :cond_fb

    .line 154
    nop

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    .line 156
    .local v1, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v1, :cond_f9

    .line 158
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RecentsAnimationController;->shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 159
    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController;->getTargetAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    move-object v15, v2

    .line 160
    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController;->getBackInvokedInfo()Landroid/window/OnBackInvokedCallbackInfo;

    move-result-object v2

    move-object v0, v2

    .line 161
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v2, :cond_ef

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v4, "Current focused window being animated by recents. Overriding back callback to recents controller callback."

    const/4 v3, 0x0

    move-object/from16 v16, v3

    check-cast v16, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v19, v1

    const v0, -0x1aea253a

    const/4 v1, 0x0

    .end local v0    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v1    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .local v19, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .local v23, "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    invoke-static {v2, v0, v1, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_ee
    .catchall {:try_start_99 .. :try_end_ee} :catchall_ad

    goto :goto_f3

    .end local v19    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .end local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v0    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v1    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    :cond_ef
    move-object/from16 v23, v0

    move-object/from16 v19, v1

    .line 166
    .end local v0    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v1    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .restart local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    :goto_f3
    move-object/from16 v0, v23

    goto :goto_fb

    .line 157
    .end local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v0    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v1    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    :cond_f6
    move-object/from16 v19, v1

    .end local v1    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .restart local v19    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    goto :goto_fb

    .line 156
    .end local v19    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .restart local v1    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    :cond_f9
    move-object/from16 v19, v1

    .line 166
    .end local v1    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    :cond_fb
    :goto_fb
    if-nez v15, :cond_142

    .line 169
    :try_start_fd
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v1, :cond_114

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x4b59d9c6    # 1.4277062E7f

    const-string v3, "No focused window, defaulting to top current task\'s window"

    const/4 v4, 0x0

    move-object/from16 v16, v4

    check-cast v16, [Ljava/lang/Object;
    :try_end_10d
    .catchall {:try_start_fd .. :try_end_10d} :catchall_135

    move-object/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v19, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :try_start_110
    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_116

    .end local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v5    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_114
    move-object/from16 v19, v5

    .line 171
    .end local v5    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :goto_116
    iget-object v1, v9, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1
    :try_end_11c
    .catchall {:try_start_110 .. :try_end_11c} :catchall_128

    move-object v3, v1

    .line 172
    .end local v22    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v3    # "currentTask":Lcom/android/server/wm/Task;
    :try_start_11d
    new-instance v1, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v1}, Lcom/android/server/wm/Task;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    move-object v15, v1

    goto :goto_146

    .line 314
    .end local v0    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v3    # "currentTask":Lcom/android/server/wm/Task;
    .end local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .end local v15    # "window":Lcom/android/server/wm/WindowState;
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v22    # "currentTask":Lcom/android/server/wm/Task;
    :catchall_128
    move-exception v0

    move/from16 v1, p2

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    goto/16 :goto_5a2

    .end local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v5    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :catchall_135
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v1, p2

    move-object/from16 v4, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    .end local v5    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    goto/16 :goto_5a2

    .line 166
    .end local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v0    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v5    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .restart local v15    # "window":Lcom/android/server/wm/WindowState;
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    :cond_142
    move-object/from16 v19, v5

    .end local v5    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    move-object/from16 v3, v22

    .line 176
    .end local v22    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v3    # "currentTask":Lcom/android/server/wm/Task;
    :goto_146
    const/4 v1, 0x0

    .line 177
    .local v1, "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    if-eqz v15, :cond_19b

    .line 178
    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;
    :try_end_14b
    .catchall {:try_start_11d .. :try_end_14b} :catchall_190

    .line 179
    .end local v21    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :try_start_14b
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    move-object v3, v4

    .line 180
    if-eqz v0, :cond_154

    .line 181
    move-object v4, v0

    goto :goto_158

    .line 182
    :cond_154
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getOnBackInvokedCallbackInfo()Landroid/window/OnBackInvokedCallbackInfo;

    move-result-object v4

    :goto_158
    move-object v1, v4

    .line 183
    if-nez v1, :cond_168

    .line 184
    const-string v4, "BackNavigationController"

    const-string v5, "No callback registered, returning null."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    monitor-exit v13
    :try_end_163
    .catchall {:try_start_14b .. :try_end_163} :catchall_187

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v4, 0x0

    return-object v4

    .line 187
    :cond_168
    :try_start_168
    invoke-virtual {v1}, Landroid/window/OnBackInvokedCallbackInfo;->isSystemCallback()Z

    move-result v4
    :try_end_16c
    .catchall {:try_start_168 .. :try_end_16c} :catchall_187

    if-nez v4, :cond_170

    .line 188
    const/4 v4, 0x4

    .end local p2    # "backType":I
    .local v4, "backType":I
    goto :goto_172

    .line 187
    .end local v4    # "backType":I
    .restart local p2    # "backType":I
    :cond_170
    move/from16 v4, p2

    .line 190
    .end local p2    # "backType":I
    .restart local v4    # "backType":I
    :goto_172
    :try_start_172
    invoke-virtual {v1}, Landroid/window/OnBackInvokedCallbackInfo;->getCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/window/BackNavigationInfo$Builder;->setOnBackInvokedCallback(Landroid/window/IOnBackInvokedCallback;)Landroid/window/BackNavigationInfo$Builder;
    :try_end_179
    .catchall {:try_start_172 .. :try_end_179} :catchall_17f

    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    goto :goto_1a0

    .line 314
    .end local v0    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v1    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .end local v15    # "window":Lcom/android/server/wm/WindowState;
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    :catchall_17f
    move-exception v0

    move v1, v4

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    goto/16 :goto_5a2

    .end local v4    # "backType":I
    .restart local p2    # "backType":I
    :catchall_187
    move-exception v0

    move/from16 v1, p2

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    goto/16 :goto_5a2

    .end local v2    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v21    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_190
    move-exception v0

    move/from16 v1, p2

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    move-object/from16 v2, v21

    goto/16 :goto_5a2

    .line 177
    .restart local v0    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v1    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .restart local v15    # "window":Lcom/android/server/wm/WindowState;
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    :cond_19b
    move/from16 v4, p2

    move-object v2, v3

    move-object/from16 v3, v21

    .line 193
    .end local v21    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local p2    # "backType":I
    .local v2, "currentTask":Lcom/android/server/wm/Task;
    .local v3, "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "backType":I
    :goto_1a0
    :try_start_1a0
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z
    :try_end_1a2
    .catchall {:try_start_1a0 .. :try_end_1a2} :catchall_57c

    const/16 v21, 0x3

    const/16 v22, 0x2

    move-object/from16 v23, v0

    .end local v0    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    if-eqz v5, :cond_1ed

    :try_start_1aa
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .local v24, "protoLogParam1":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .local v25, "protoLogParam2":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .local v26, "protoLogParam3":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    move-object/from16 v28, v1

    .end local v1    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .local v28, "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    const-string/jumbo v1, "startBackNavigation currentTask=%s, topRunningActivity=%s, callbackInfo=%s, currentFocus=%s"
    :try_end_1c1
    .catchall {:try_start_1aa .. :try_end_1c1} :catchall_1dc

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    const/4 v6, 0x4

    .end local v6    # "animationLeashParent":Landroid/view/SurfaceControl;
    .end local v7    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    .local v30, "animationLeashParent":Landroid/view/SurfaceControl;
    .local v31, "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    :try_start_1c6
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v7, v6

    const/4 v6, 0x1

    aput-object v24, v7, v6

    aput-object v25, v7, v22

    aput-object v26, v7, v21

    move-object/from16 v29, v5

    const/4 v5, 0x0

    const v6, -0x4c1e860a

    .end local v5    # "protoLogParam0":Ljava/lang/String;
    .local v29, "protoLogParam0":Ljava/lang/String;
    invoke-static {v0, v6, v5, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f3

    .line 314
    .end local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .end local v15    # "window":Lcom/android/server/wm/WindowState;
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v24    # "protoLogParam1":Ljava/lang/String;
    .end local v25    # "protoLogParam2":Ljava/lang/String;
    .end local v26    # "protoLogParam3":Ljava/lang/String;
    .end local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v29    # "protoLogParam0":Ljava/lang/String;
    .end local v30    # "animationLeashParent":Landroid/view/SurfaceControl;
    .end local v31    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    .restart local v6    # "animationLeashParent":Landroid/view/SurfaceControl;
    .restart local v7    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    :catchall_1dc
    move-exception v0

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move v1, v4

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    .end local v6    # "animationLeashParent":Landroid/view/SurfaceControl;
    .end local v7    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    .restart local v30    # "animationLeashParent":Landroid/view/SurfaceControl;
    .restart local v31    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    goto/16 :goto_5a2

    .line 193
    .end local v30    # "animationLeashParent":Landroid/view/SurfaceControl;
    .end local v31    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    .restart local v1    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v6    # "animationLeashParent":Landroid/view/SurfaceControl;
    .restart local v7    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    .restart local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .restart local v15    # "window":Lcom/android/server/wm/WindowState;
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    :cond_1ed
    move-object/from16 v28, v1

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    .line 197
    .end local v1    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v6    # "animationLeashParent":Landroid/view/SurfaceControl;
    .end local v7    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    .restart local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v30    # "animationLeashParent":Landroid/view/SurfaceControl;
    .restart local v31    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    :goto_1f3
    if-nez v15, :cond_213

    .line 198
    const-string v0, "BackNavigationController"

    const-string v1, "Window is null, returning null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    monitor-exit v13
    :try_end_1fd
    .catchall {:try_start_1c6 .. :try_end_1fd} :catchall_202

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    return-object v1

    .line 314
    .end local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .end local v15    # "window":Lcom/android/server/wm/WindowState;
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    :catchall_202
    move-exception v0

    move v1, v4

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    goto/16 :goto_5a2

    .line 207
    .restart local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .restart local v15    # "window":Lcom/android/server/wm/WindowState;
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    :cond_213
    const/4 v0, 0x4

    if-eq v4, v0, :cond_553

    if-eqz v3, :cond_553

    if-eqz v2, :cond_553

    .line 210
    :try_start_21a
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_22c

    move-object/from16 v21, v2

    move-object/from16 v24, v3

    move-object/from16 v29, v11

    move-object/from16 v32, v14

    move-object/from16 v22, v15

    goto/16 :goto_55d

    .line 217
    :cond_22c
    move-object v0, v2

    .line 218
    .local v0, "finalTask":Lcom/android/server/wm/Task;
    new-instance v1, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 220
    .local v1, "prevActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v5
    :try_end_23e
    .catchall {:try_start_21a .. :try_end_23e} :catchall_53e

    const/4 v6, 0x1

    if-le v5, v6, :cond_253

    :try_start_241
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5
    :try_end_24a
    .catchall {:try_start_241 .. :try_end_24a} :catchall_202

    if-eq v5, v15, :cond_253

    .line 224
    const/4 v4, 0x0

    .line 225
    move-object v5, v15

    move v7, v4

    move-object v6, v5

    move-object/from16 v5, v20

    .end local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v5, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    goto :goto_29b

    .line 226
    .end local v5    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_253
    if-eqz v1, :cond_25c

    .line 228
    const/4 v4, 0x2

    .line 229
    move-object v5, v3

    move v7, v4

    move-object v6, v5

    move-object/from16 v5, v20

    .end local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v5    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    goto :goto_29b

    .line 230
    .end local v5    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_25c
    :try_start_25c
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result v5

    if-eqz v5, :cond_269

    .line 232
    move-object v5, v2

    .line 233
    .end local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v5    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v4, 0x1

    move v7, v4

    move-object v6, v5

    move-object/from16 v5, v20

    goto :goto_29b

    .line 234
    .end local v5    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_269
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v5
    :try_end_26d
    .catchall {:try_start_25c .. :try_end_26d} :catchall_53e

    if-eqz v5, :cond_296

    .line 238
    :try_start_26f
    iget-object v5, v2, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/RootWindowContainer;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v5
    :try_end_275
    .catchall {:try_start_26f .. :try_end_275} :catchall_202

    .line 239
    .end local v20    # "prevTask":Lcom/android/server/wm/Task;
    .local v5, "prevTask":Lcom/android/server/wm/Task;
    move-object v6, v2

    .line 240
    .end local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v6, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :try_start_276
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    move-object v1, v7

    .line 241
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v7
    :try_end_27f
    .catchall {:try_start_276 .. :try_end_27f} :catchall_287

    if-eqz v7, :cond_284

    .line 242
    const/4 v4, 0x1

    move v7, v4

    goto :goto_29b

    .line 244
    :cond_284
    const/4 v4, 0x3

    move v7, v4

    goto :goto_29b

    .line 314
    .end local v0    # "finalTask":Lcom/android/server/wm/Task;
    .end local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .end local v15    # "window":Lcom/android/server/wm/WindowState;
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    :catchall_287
    move-exception v0

    move v1, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    goto/16 :goto_5a2

    .line 234
    .end local v5    # "prevTask":Lcom/android/server/wm/Task;
    .end local v6    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v0    # "finalTask":Lcom/android/server/wm/Task;
    .restart local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .restart local v15    # "window":Lcom/android/server/wm/WindowState;
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v20    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    :cond_296
    move v7, v4

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    .line 247
    .end local v4    # "backType":I
    .end local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v20    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v5    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v6    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v7, "backType":I
    :goto_29b
    :try_start_29b
    invoke-virtual {v12, v7}, Landroid/window/BackNavigationInfo$Builder;->setType(I)Landroid/window/BackNavigationInfo$Builder;
    :try_end_29e
    .catchall {:try_start_29b .. :try_end_29e} :catchall_523

    .line 249
    if-eqz v5, :cond_2b2

    :try_start_2a0
    iget v4, v5, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_2b3

    .line 314
    .end local v0    # "finalTask":Lcom/android/server/wm/Task;
    .end local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .end local v15    # "window":Lcom/android/server/wm/WindowState;
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    :catchall_2a3
    move-exception v0

    move-object v4, v5

    move-object v5, v6

    move v1, v7

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    goto/16 :goto_5a2

    .line 249
    .restart local v0    # "finalTask":Lcom/android/server/wm/Task;
    .restart local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .restart local v15    # "window":Lcom/android/server/wm/WindowState;
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    :cond_2b2
    const/4 v4, 0x0

    .line 250
    .local v4, "prevTaskId":I
    :goto_2b3
    if-eqz v5, :cond_2ba

    move-object/from16 v24, v0

    .end local v0    # "finalTask":Lcom/android/server/wm/Task;
    .local v24, "finalTask":Lcom/android/server/wm/Task;
    iget v0, v5, Lcom/android/server/wm/Task;->mUserId:I
    :try_end_2b9
    .catchall {:try_start_2a0 .. :try_end_2b9} :catchall_2a3

    goto :goto_2bd

    .end local v24    # "finalTask":Lcom/android/server/wm/Task;
    .restart local v0    # "finalTask":Lcom/android/server/wm/Task;
    :cond_2ba
    move-object/from16 v24, v0

    .end local v0    # "finalTask":Lcom/android/server/wm/Task;
    .restart local v24    # "finalTask":Lcom/android/server/wm/Task;
    const/4 v0, 0x0

    :goto_2bd
    move/from16 v19, v0

    .line 252
    .local v19, "prevUserId":I
    :try_start_2bf
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z
    :try_end_2c1
    .catchall {:try_start_2bf .. :try_end_2c1} :catchall_523

    if-eqz v0, :cond_31a

    if-eqz v1, :cond_2c8

    :try_start_2c5
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;
    :try_end_2c7
    .catchall {:try_start_2c5 .. :try_end_2c7} :catchall_2a3

    goto :goto_2c9

    :cond_2c8
    const/4 v0, 0x0

    :goto_2c9
    :try_start_2c9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_2cd
    .catchall {:try_start_2c9 .. :try_end_2cd} :catchall_309

    .local v0, "protoLogParam0":Ljava/lang/String;
    if-eqz v5, :cond_2d4

    :try_start_2cf
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v20
    :try_end_2d3
    .catchall {:try_start_2cf .. :try_end_2d3} :catchall_2a3

    goto :goto_2d6

    :cond_2d4
    const/16 v20, 0x0

    :goto_2d6
    :try_start_2d6
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .local v20, "protoLogParam1":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "protoLogParam2":Ljava/lang/String;
    invoke-static {v7}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "protoLogParam3":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;
    :try_end_2e8
    .catchall {:try_start_2d6 .. :try_end_2e8} :catchall_309

    move-object/from16 v29, v11

    .end local v11    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .local v29, "topAppTarget":Landroid/view/RemoteAnimationTarget;
    :try_start_2ea
    const-string v11, "Previous Destination is Activity:%s Task:%s removedContainer:%s, backType=%s"

    move-object/from16 v32, v14

    const/4 v14, 0x4

    .end local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .local v32, "focusedWindowToken":Landroid/os/IBinder;
    new-array v14, v14, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v0, v14, v17

    const/16 v27, 0x1

    aput-object v20, v14, v27

    aput-object v25, v14, v22

    aput-object v26, v14, v21

    move-object/from16 p2, v0

    move-object/from16 v22, v15

    const v0, 0x1fb4069e

    const/4 v15, 0x0

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v15    # "window":Lcom/android/server/wm/WindowState;
    .local v22, "window":Lcom/android/server/wm/WindowState;
    .local p2, "protoLogParam0":Ljava/lang/String;
    invoke-static {v9, v0, v15, v11, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_320

    .line 314
    .end local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "prevTaskId":I
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v19    # "prevUserId":I
    .end local v20    # "protoLogParam1":Ljava/lang/String;
    .end local v22    # "window":Lcom/android/server/wm/WindowState;
    .end local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v24    # "finalTask":Lcom/android/server/wm/Task;
    .end local v25    # "protoLogParam2":Ljava/lang/String;
    .end local v26    # "protoLogParam3":Ljava/lang/String;
    .end local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v29    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .end local v32    # "focusedWindowToken":Landroid/os/IBinder;
    .end local p2    # "protoLogParam0":Ljava/lang/String;
    .restart local v11    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    :catchall_309
    move-exception v0

    move-object/from16 v29, v11

    move-object v4, v5

    move-object v5, v6

    move v1, v7

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    .end local v11    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .restart local v29    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    goto/16 :goto_5a2

    .line 252
    .end local v29    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .restart local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "prevTaskId":I
    .restart local v11    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .restart local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .restart local v15    # "window":Lcom/android/server/wm/WindowState;
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v19    # "prevUserId":I
    .restart local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v24    # "finalTask":Lcom/android/server/wm/Task;
    .restart local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    :cond_31a
    move-object/from16 v29, v11

    move-object/from16 v32, v14

    move-object/from16 v22, v15

    .line 260
    .end local v11    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .end local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .end local v15    # "window":Lcom/android/server/wm/WindowState;
    .restart local v22    # "window":Lcom/android/server/wm/WindowState;
    .restart local v29    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .restart local v32    # "focusedWindowToken":Landroid/os/IBinder;
    :goto_320
    const/4 v0, 0x1

    if-ne v7, v0, :cond_33c

    .line 263
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->hasCommittedReparentToAnimationLeash()Z

    move-result v0

    if-nez v0, :cond_33c

    const/4 v0, 0x1

    goto :goto_33d

    .line 314
    .end local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "prevTaskId":I
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v19    # "prevUserId":I
    .end local v22    # "window":Lcom/android/server/wm/WindowState;
    .end local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v24    # "finalTask":Lcom/android/server/wm/Task;
    .end local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v32    # "focusedWindowToken":Landroid/os/IBinder;
    :catchall_32b
    move-exception v0

    move-object v4, v5

    move-object v5, v6

    move v1, v7

    move-object/from16 v11, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    goto/16 :goto_5a2

    .line 263
    .restart local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "prevTaskId":I
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v19    # "prevUserId":I
    .restart local v22    # "window":Lcom/android/server/wm/WindowState;
    .restart local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v24    # "finalTask":Lcom/android/server/wm/Task;
    .restart local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v32    # "focusedWindowToken":Landroid/os/IBinder;
    :cond_33c
    const/4 v0, 0x0

    .line 265
    .local v0, "prepareAnimation":Z
    :goto_33d
    if-eqz v0, :cond_3a2

    .line 266
    nop

    .line 267
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v9, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 269
    .local v9, "taskWindowConfiguration":Landroid/app/WindowConfiguration;
    invoke-virtual {v12, v9}, Landroid/window/BackNavigationInfo$Builder;->setTaskWindowConfiguration(Landroid/app/WindowConfiguration;)Landroid/window/BackNavigationInfo$Builder;

    .line 272
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BackPreview Leash for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 273
    invoke-virtual {v11, v14}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    .line 274
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    .line 275
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    .line 276
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v11

    .line 277
    .local v11, "animLeash":Landroid/view/SurfaceControl;
    invoke-virtual {v6, v10, v11}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 278
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v14
    :try_end_37a
    .catchall {:try_start_2ea .. :try_end_37a} :catchall_32b

    .line 279
    .end local v30    # "animationLeashParent":Landroid/view/SurfaceControl;
    .local v14, "animationLeashParent":Landroid/view/SurfaceControl;
    :try_start_37a
    invoke-static {v6, v3, v2, v11}, Lcom/android/server/wm/BackNavigationController;->createRemoteAnimationTargetLocked(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Landroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;

    move-result-object v15
    :try_end_37e
    .catchall {:try_start_37a .. :try_end_37e} :catchall_392

    .line 282
    .end local v29    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .local v15, "topAppTarget":Landroid/view/RemoteAnimationTarget;
    :try_start_37e
    invoke-virtual {v12, v15}, Landroid/window/BackNavigationInfo$Builder;->setDepartingAnimationTarget(Landroid/view/RemoteAnimationTarget;)Landroid/window/BackNavigationInfo$Builder;
    :try_end_381
    .catchall {:try_start_37e .. :try_end_381} :catchall_383

    move-object v11, v15

    goto :goto_3a6

    .line 314
    .end local v0    # "prepareAnimation":Z
    .end local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "prevTaskId":I
    .end local v9    # "taskWindowConfiguration":Landroid/app/WindowConfiguration;
    .end local v11    # "animLeash":Landroid/view/SurfaceControl;
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v19    # "prevUserId":I
    .end local v22    # "window":Lcom/android/server/wm/WindowState;
    .end local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v24    # "finalTask":Lcom/android/server/wm/Task;
    .end local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v32    # "focusedWindowToken":Landroid/os/IBinder;
    :catchall_383
    move-exception v0

    move-object v4, v5

    move-object v5, v6

    move v1, v7

    move-object v6, v14

    move-object v11, v15

    move-object/from16 v7, v31

    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    goto/16 :goto_5a2

    .end local v15    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .restart local v29    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    :catchall_392
    move-exception v0

    move-object v4, v5

    move-object v5, v6

    move v1, v7

    move-object v6, v14

    move-object/from16 v11, v29

    move-object/from16 v7, v31

    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    goto/16 :goto_5a2

    .line 265
    .end local v14    # "animationLeashParent":Landroid/view/SurfaceControl;
    .restart local v0    # "prepareAnimation":Z
    .restart local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "prevTaskId":I
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v19    # "prevUserId":I
    .restart local v22    # "window":Lcom/android/server/wm/WindowState;
    .restart local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v24    # "finalTask":Lcom/android/server/wm/Task;
    .restart local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v30    # "animationLeashParent":Landroid/view/SurfaceControl;
    .restart local v32    # "focusedWindowToken":Landroid/os/IBinder;
    :cond_3a2
    move-object/from16 v11, v29

    move-object/from16 v14, v30

    .line 288
    .end local v29    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .end local v30    # "animationLeashParent":Landroid/view/SurfaceControl;
    .local v11, "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .restart local v14    # "animationLeashParent":Landroid/view/SurfaceControl;
    :goto_3a6
    :try_start_3a6
    invoke-direct {v8, v7}, Lcom/android/server/wm/BackNavigationController;->needsScreenshot(I)Z

    move-result v9
    :try_end_3aa
    .catchall {:try_start_3a6 .. :try_end_3aa} :catchall_50b

    if-eqz v9, :cond_3c9

    if-eqz v1, :cond_3c9

    :try_start_3ae
    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3c9

    .line 290
    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 291
    invoke-direct {v8, v2, v9}, Lcom/android/server/wm/BackNavigationController;->getActivitySnapshot(Lcom/android/server/wm/Task;Landroid/content/ComponentName;)Landroid/hardware/HardwareBuffer;

    move-result-object v9
    :try_end_3b8
    .catchall {:try_start_3ae .. :try_end_3b8} :catchall_3bb

    move-object/from16 v31, v9

    .end local v31    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    .local v9, "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    goto :goto_3c9

    .line 314
    .end local v0    # "prepareAnimation":Z
    .end local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "prevTaskId":I
    .end local v9    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v19    # "prevUserId":I
    .end local v22    # "window":Lcom/android/server/wm/WindowState;
    .end local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v24    # "finalTask":Lcom/android/server/wm/Task;
    .end local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v32    # "focusedWindowToken":Landroid/os/IBinder;
    .restart local v31    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    :catchall_3bb
    move-exception v0

    move-object v4, v5

    move-object v5, v6

    move v1, v7

    move-object v6, v14

    move-object/from16 v7, v31

    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    goto/16 :goto_5a2

    .line 295
    .restart local v0    # "prepareAnimation":Z
    .restart local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "prevTaskId":I
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v19    # "prevUserId":I
    .restart local v22    # "window":Lcom/android/server/wm/WindowState;
    .restart local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v24    # "finalTask":Lcom/android/server/wm/Task;
    .restart local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v32    # "focusedWindowToken":Landroid/os/IBinder;
    :cond_3c9
    :goto_3c9
    const/4 v9, 0x1

    if-ne v7, v9, :cond_439

    if-eqz p3, :cond_439

    if-eqz v5, :cond_439

    .line 297
    :try_start_3d0
    iput-boolean v9, v2, Lcom/android/server/wm/Task;->mBackGestureStarted:Z

    .line 300
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    move-object v1, v9

    .line 301
    if-eqz v1, :cond_421

    .line 302
    iget-boolean v9, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z
    :try_end_3db
    .catchall {:try_start_3d0 .. :try_end_3db} :catchall_428

    if-nez v9, :cond_3e2

    .line 303
    const/4 v9, 0x1

    :try_start_3de
    invoke-virtual {v1, v9}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V
    :try_end_3e1
    .catchall {:try_start_3de .. :try_end_3e1} :catchall_3bb

    goto :goto_3e3

    .line 302
    :cond_3e2
    const/4 v9, 0x1

    .line 305
    :goto_3e3
    :try_start_3e3
    iput-boolean v9, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 306
    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v9, :cond_406

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam0":Ljava/lang/String;
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    move/from16 p2, v0

    .end local v0    # "prepareAnimation":Z
    .local p2, "prepareAnimation":Z
    const-string v0, "Setting Activity.mLauncherTaskBehind to true. Activity=%s"
    :try_end_3f3
    .catchall {:try_start_3e3 .. :try_end_3f3} :catchall_428

    move-object/from16 v21, v2

    move-object/from16 v25, v3

    const/4 v2, 0x1

    .end local v2    # "currentTask":Lcom/android/server/wm/Task;
    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v21, "currentTask":Lcom/android/server/wm/Task;
    .local v25, "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :try_start_3f8
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v9, v3, v2

    move-object/from16 v26, v9

    const v9, 0x3884820e

    .end local v9    # "protoLogParam0":Ljava/lang/String;
    .local v26, "protoLogParam0":Ljava/lang/String;
    invoke-static {v15, v9, v2, v0, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_40c

    .end local v21    # "currentTask":Lcom/android/server/wm/Task;
    .end local v25    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v26    # "protoLogParam0":Ljava/lang/String;
    .end local p2    # "prepareAnimation":Z
    .restart local v0    # "prepareAnimation":Z
    .restart local v2    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_406
    move/from16 p2, v0

    move-object/from16 v21, v2

    move-object/from16 v25, v3

    .line 309
    .end local v0    # "prepareAnimation":Z
    .end local v2    # "currentTask":Lcom/android/server/wm/Task;
    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v21    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v25    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local p2    # "prepareAnimation":Z
    :goto_40c
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    :try_end_413
    .catchall {:try_start_3f8 .. :try_end_413} :catchall_414

    goto :goto_43f

    .line 314
    .end local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "prevTaskId":I
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v19    # "prevUserId":I
    .end local v22    # "window":Lcom/android/server/wm/WindowState;
    .end local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v24    # "finalTask":Lcom/android/server/wm/Task;
    .end local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v32    # "focusedWindowToken":Landroid/os/IBinder;
    .end local p2    # "prepareAnimation":Z
    :catchall_414
    move-exception v0

    move-object v4, v5

    move-object v5, v6

    move v1, v7

    move-object v6, v14

    move-object/from16 v3, v21

    move-object/from16 v2, v25

    move-object/from16 v7, v31

    goto/16 :goto_5a2

    .line 301
    .end local v21    # "currentTask":Lcom/android/server/wm/Task;
    .end local v25    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "prepareAnimation":Z
    .restart local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "prevTaskId":I
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v19    # "prevUserId":I
    .restart local v22    # "window":Lcom/android/server/wm/WindowState;
    .restart local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v24    # "finalTask":Lcom/android/server/wm/Task;
    .restart local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v32    # "focusedWindowToken":Landroid/os/IBinder;
    :cond_421
    move/from16 p2, v0

    move-object/from16 v21, v2

    move-object/from16 v25, v3

    .end local v0    # "prepareAnimation":Z
    .end local v2    # "currentTask":Lcom/android/server/wm/Task;
    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v21    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v25    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local p2    # "prepareAnimation":Z
    goto :goto_43f

    .line 314
    .end local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "prevTaskId":I
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v19    # "prevUserId":I
    .end local v21    # "currentTask":Lcom/android/server/wm/Task;
    .end local v22    # "window":Lcom/android/server/wm/WindowState;
    .end local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v24    # "finalTask":Lcom/android/server/wm/Task;
    .end local v25    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v32    # "focusedWindowToken":Landroid/os/IBinder;
    .end local p2    # "prepareAnimation":Z
    .restart local v2    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_428
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v25, v3

    move-object v4, v5

    move-object v5, v6

    move v1, v7

    move-object v6, v14

    move-object/from16 v3, v21

    move-object/from16 v2, v25

    move-object/from16 v7, v31

    .end local v2    # "currentTask":Lcom/android/server/wm/Task;
    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v21    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v25    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    goto/16 :goto_5a2

    .line 295
    .end local v21    # "currentTask":Lcom/android/server/wm/Task;
    .end local v25    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "prepareAnimation":Z
    .restart local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "prevTaskId":I
    .restart local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v19    # "prevUserId":I
    .restart local v22    # "window":Lcom/android/server/wm/WindowState;
    .restart local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v24    # "finalTask":Lcom/android/server/wm/Task;
    .restart local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v32    # "focusedWindowToken":Landroid/os/IBinder;
    :cond_439
    move/from16 p2, v0

    move-object/from16 v21, v2

    move-object/from16 v25, v3

    .line 314
    .end local v0    # "prepareAnimation":Z
    .end local v2    # "currentTask":Lcom/android/server/wm/Task;
    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v22    # "window":Lcom/android/server/wm/WindowState;
    .end local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v24    # "finalTask":Lcom/android/server/wm/Task;
    .end local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v32    # "focusedWindowToken":Landroid/os/IBinder;
    .restart local v21    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v25    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_43f
    move-object v9, v1

    .end local v1    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .local v9, "prevActivity":Lcom/android/server/wm/ActivityRecord;
    :try_start_440
    monitor-exit v13
    :try_end_441
    .catchall {:try_start_440 .. :try_end_441} :catchall_4f5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 317
    if-eqz v11, :cond_492

    invoke-direct {v8, v7}, Lcom/android/server/wm/BackNavigationController;->needsScreenshot(I)Z

    move-result v0

    if-eqz v0, :cond_492

    if-eqz v5, :cond_492

    if-nez v31, :cond_492

    .line 319
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackPreview Screenshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 321
    invoke-virtual {v0, v14}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 322
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 324
    .local v0, "builder":Landroid/view/SurfaceControl$Builder;
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/window/BackNavigationInfo$Builder;->setScreenshotSurface(Landroid/view/SurfaceControl;)Landroid/window/BackNavigationInfo$Builder;

    .line 325
    move/from16 v13, v19

    .end local v19    # "prevUserId":I
    .local v13, "prevUserId":I
    invoke-direct {v8, v4, v13}, Lcom/android/server/wm/BackNavigationController;->getTaskSnapshot(II)Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 326
    .end local v31    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    .local v1, "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    invoke-virtual {v12, v1}, Landroid/window/BackNavigationInfo$Builder;->setScreenshotBuffer(Landroid/hardware/HardwareBuffer;)Landroid/window/BackNavigationInfo$Builder;

    .line 331
    iget-object v2, v11, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v31, v1

    goto :goto_494

    .line 317
    .end local v0    # "builder":Landroid/view/SurfaceControl$Builder;
    .end local v1    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    .end local v13    # "prevUserId":I
    .restart local v19    # "prevUserId":I
    .restart local v31    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    :cond_492
    move/from16 v13, v19

    .line 334
    .end local v19    # "prevUserId":I
    .restart local v13    # "prevUserId":I
    :goto_494
    move-object v15, v6

    .line 335
    .local v15, "finalRemovedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-eqz v15, :cond_4e2

    .line 337
    move-object/from16 v3, v25

    .end local v25    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :try_start_499
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    new-instance v1, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v8, v15}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/BackNavigationController;Lcom/android/server/wm/WindowContainer;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4a4
    .catch Landroid/os/RemoteException; {:try_start_499 .. :try_end_4a4} :catch_4ca

    .line 343
    nop

    .line 345
    move/from16 v17, v4

    .end local v4    # "prevTaskId":I
    .local v17, "prevTaskId":I
    move v4, v7

    .line 346
    .local v4, "finalBackType":I
    move-object v2, v6

    .end local v6    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v2, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    move-object v6, v9

    .line 347
    .local v6, "finalprevActivity":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v20, v5

    .end local v5    # "prevTask":Lcom/android/server/wm/Task;
    .local v20, "prevTask":Lcom/android/server/wm/Task;
    move-object/from16 v5, v21

    .line 348
    .local v5, "finalTask":Lcom/android/server/wm/Task;
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;

    move-object/from16 p2, v1

    move-object/from16 v18, v9

    move-object v9, v2

    .end local v2    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v9, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v18, "prevActivity":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v2, p0

    move-object/from16 v24, v3

    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v24, "currentActivity":Lcom/android/server/wm/ActivityRecord;
    move-object v3, v15

    move/from16 v19, v7

    .end local v7    # "backType":I
    .local v19, "backType":I
    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackNavigationController;Lcom/android/server/wm/WindowContainer;ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 351
    .local v0, "onBackNavigationDone":Landroid/os/RemoteCallback;
    invoke-virtual {v12, v0}, Landroid/window/BackNavigationInfo$Builder;->setOnBackNavigationDone(Landroid/os/RemoteCallback;)Landroid/window/BackNavigationInfo$Builder;

    goto :goto_4ed

    .line 339
    .end local v0    # "onBackNavigationDone":Landroid/os/RemoteCallback;
    .end local v17    # "prevTaskId":I
    .end local v18    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v19    # "backType":I
    .end local v20    # "prevTask":Lcom/android/server/wm/Task;
    .end local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v4, "prevTaskId":I
    .local v5, "prevTask":Lcom/android/server/wm/Task;
    .local v6, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v7    # "backType":I
    .local v9, "prevActivity":Lcom/android/server/wm/ActivityRecord;
    :catch_4ca
    move-exception v0

    move-object/from16 v24, v3

    move/from16 v17, v4

    move-object/from16 v20, v5

    move/from16 v19, v7

    move-object/from16 v18, v9

    move-object v9, v6

    .line 340
    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "prevTaskId":I
    .end local v5    # "prevTask":Lcom/android/server/wm/Task;
    .end local v6    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v7    # "backType":I
    .local v0, "e":Landroid/os/RemoteException;
    .local v9, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v17    # "prevTaskId":I
    .restart local v18    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v19    # "backType":I
    .restart local v20    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    const-string v1, "BackNavigationController"

    const-string v2, "Failed to link to death"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    invoke-direct {v8, v9}, Lcom/android/server/wm/BackNavigationController;->resetSurfaces(Lcom/android/server/wm/WindowContainer;)V

    .line 342
    const/4 v1, 0x0

    return-object v1

    .line 335
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v17    # "prevTaskId":I
    .end local v18    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v19    # "backType":I
    .end local v20    # "prevTask":Lcom/android/server/wm/Task;
    .end local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "prevTaskId":I
    .restart local v5    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v6    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v7    # "backType":I
    .local v9, "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v25    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_4e2
    move/from16 v17, v4

    move-object/from16 v20, v5

    move/from16 v19, v7

    move-object/from16 v18, v9

    move-object/from16 v24, v25

    move-object v9, v6

    .line 354
    .end local v4    # "prevTaskId":I
    .end local v5    # "prevTask":Lcom/android/server/wm/Task;
    .end local v6    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v7    # "backType":I
    .end local v25    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v9, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v17    # "prevTaskId":I
    .restart local v18    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v19    # "backType":I
    .restart local v20    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_4ed
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 355
    invoke-virtual {v12}, Landroid/window/BackNavigationInfo$Builder;->build()Landroid/window/BackNavigationInfo;

    move-result-object v0

    return-object v0

    .line 314
    .end local v9    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v13    # "prevUserId":I
    .end local v15    # "finalRemovedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v17    # "prevTaskId":I
    .end local v18    # "prevActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v19    # "backType":I
    .end local v20    # "prevTask":Lcom/android/server/wm/Task;
    .end local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v6    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v7    # "backType":I
    .restart local v25    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_4f5
    move-exception v0

    move-object/from16 v20, v5

    move-object v9, v6

    move/from16 v19, v7

    move-object/from16 v24, v25

    move-object v5, v9

    move-object v6, v14

    move/from16 v1, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move-object/from16 v2, v24

    move-object/from16 v7, v31

    .end local v5    # "prevTask":Lcom/android/server/wm/Task;
    .end local v6    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v7    # "backType":I
    .end local v25    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v19    # "backType":I
    .restart local v20    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    goto/16 :goto_5a2

    .end local v9    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v19    # "backType":I
    .end local v20    # "prevTask":Lcom/android/server/wm/Task;
    .end local v21    # "currentTask":Lcom/android/server/wm/Task;
    .end local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v2, "currentTask":Lcom/android/server/wm/Task;
    .restart local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v6    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v7    # "backType":I
    :catchall_50b
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v24, v3

    move-object/from16 v20, v5

    move-object v9, v6

    move/from16 v19, v7

    move-object v5, v9

    move-object v6, v14

    move/from16 v1, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move-object/from16 v2, v24

    move-object/from16 v7, v31

    .end local v2    # "currentTask":Lcom/android/server/wm/Task;
    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "prevTask":Lcom/android/server/wm/Task;
    .end local v6    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v7    # "backType":I
    .restart local v9    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v19    # "backType":I
    .restart local v20    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v21    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    goto/16 :goto_5a2

    .end local v9    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v14    # "animationLeashParent":Landroid/view/SurfaceControl;
    .end local v19    # "backType":I
    .end local v20    # "prevTask":Lcom/android/server/wm/Task;
    .end local v21    # "currentTask":Lcom/android/server/wm/Task;
    .end local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v6    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v7    # "backType":I
    .restart local v30    # "animationLeashParent":Landroid/view/SurfaceControl;
    :catchall_523
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v24, v3

    move-object/from16 v20, v5

    move-object v9, v6

    move/from16 v19, v7

    move-object/from16 v29, v11

    move-object v5, v9

    move/from16 v1, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move-object/from16 v2, v24

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    .end local v2    # "currentTask":Lcom/android/server/wm/Task;
    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "prevTask":Lcom/android/server/wm/Task;
    .end local v6    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v7    # "backType":I
    .end local v11    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .restart local v9    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v19    # "backType":I
    .restart local v20    # "prevTask":Lcom/android/server/wm/Task;
    .restart local v21    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v29    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    goto/16 :goto_5a2

    .end local v9    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v21    # "currentTask":Lcom/android/server/wm/Task;
    .end local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v29    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .restart local v2    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v4, "backType":I
    .restart local v11    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .local v19, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :catchall_53e
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v24, v3

    move-object/from16 v29, v11

    move v1, v4

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move-object/from16 v2, v24

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    .end local v2    # "currentTask":Lcom/android/server/wm/Task;
    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .restart local v21    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v29    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    goto :goto_5a2

    .line 207
    .end local v21    # "currentTask":Lcom/android/server/wm/Task;
    .end local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v29    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .restart local v2    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v11    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .local v14, "focusedWindowToken":Landroid/os/IBinder;
    .local v15, "window":Lcom/android/server/wm/WindowState;
    .local v18, "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .restart local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .restart local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    :cond_553
    move-object/from16 v21, v2

    move-object/from16 v24, v3

    move-object/from16 v29, v11

    move-object/from16 v32, v14

    move-object/from16 v22, v15

    .line 211
    .end local v2    # "currentTask":Lcom/android/server/wm/Task;
    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .end local v14    # "focusedWindowToken":Landroid/os/IBinder;
    .end local v15    # "window":Lcom/android/server/wm/WindowState;
    .restart local v21    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v22    # "window":Lcom/android/server/wm/WindowState;
    .restart local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v29    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .restart local v32    # "focusedWindowToken":Landroid/os/IBinder;
    :goto_55d
    nop

    .line 212
    :try_start_55e
    invoke-virtual {v12, v4}, Landroid/window/BackNavigationInfo$Builder;->setType(I)Landroid/window/BackNavigationInfo$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/window/BackNavigationInfo$Builder;->build()Landroid/window/BackNavigationInfo;

    move-result-object v0

    monitor-exit v13
    :try_end_567
    .catchall {:try_start_55e .. :try_end_567} :catchall_56b

    .line 211
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 314
    .end local v18    # "windowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    .end local v22    # "window":Lcom/android/server/wm/WindowState;
    .end local v23    # "overrideCallbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v28    # "callbackInfo":Landroid/window/OnBackInvokedCallbackInfo;
    .end local v32    # "focusedWindowToken":Landroid/os/IBinder;
    :catchall_56b
    move-exception v0

    move v1, v4

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move-object/from16 v2, v24

    move-object/from16 v11, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    goto :goto_5a2

    .end local v21    # "currentTask":Lcom/android/server/wm/Task;
    .end local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v29    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .end local v30    # "animationLeashParent":Landroid/view/SurfaceControl;
    .end local v31    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    .restart local v2    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v6, "animationLeashParent":Landroid/view/SurfaceControl;
    .local v7, "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    .restart local v11    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    :catchall_57c
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v24, v3

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v29, v11

    move v1, v4

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move-object/from16 v2, v24

    .end local v2    # "currentTask":Lcom/android/server/wm/Task;
    .end local v3    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "animationLeashParent":Landroid/view/SurfaceControl;
    .end local v7    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    .end local v11    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .restart local v21    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v29    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .restart local v30    # "animationLeashParent":Landroid/view/SurfaceControl;
    .restart local v31    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    goto :goto_5a2

    .end local v19    # "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v20    # "prevTask":Lcom/android/server/wm/Task;
    .end local v21    # "currentTask":Lcom/android/server/wm/Task;
    .end local v24    # "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v29    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    .end local v30    # "animationLeashParent":Landroid/view/SurfaceControl;
    .end local v31    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    .local v1, "backType":I
    .local v2, "currentActivity":Lcom/android/server/wm/ActivityRecord;
    .local v3, "currentTask":Lcom/android/server/wm/Task;
    .local v4, "prevTask":Lcom/android/server/wm/Task;
    .local v5, "removedWindowContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .restart local v6    # "animationLeashParent":Landroid/view/SurfaceControl;
    .restart local v7    # "screenshotBuffer":Landroid/hardware/HardwareBuffer;
    .restart local v11    # "topAppTarget":Landroid/view/RemoteAnimationTarget;
    :catchall_591
    move-exception v0

    move/from16 p2, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v29, v11

    :goto_5a2
    :try_start_5a2
    monitor-exit v13
    :try_end_5a3
    .catchall {:try_start_5a2 .. :try_end_5a3} :catchall_5a7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5a7
    move-exception v0

    goto :goto_5a2
.end method

.method startBackNavigation(Lcom/android/server/wm/WindowManagerService;Z)Landroid/window/BackNavigationInfo;
    .registers 4
    .param p1, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "requestAnimation"    # Z

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/BackNavigationController;->startBackNavigation(Lcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceControl$Transaction;Z)Landroid/window/BackNavigationInfo;

    move-result-object v0

    return-object v0
.end method
