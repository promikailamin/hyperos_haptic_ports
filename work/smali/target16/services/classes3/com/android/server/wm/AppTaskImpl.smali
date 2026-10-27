.class public Lcom/android/server/wm/AppTaskImpl;
.super Landroid/app/IAppTask$Stub;
.source "AppTaskImpl.java"


# instance fields
.field public final mCallingUid:I

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskId:I


# direct methods
.method public static synthetic $r8$lambda$eFjoqfbR5yidy3tTjZKNgckXlZs(Lcom/android/server/wm/AppTaskImpl;Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;IILandroid/os/IRemoteCallback;Lcom/android/server/wm/TransitionController;Z)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/wm/AppTaskImpl;->lambda$moveTaskTo$1(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;IILandroid/os/IRemoteCallback;Lcom/android/server/wm/TransitionController;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$hESBDUSxO3XXhBVPS6iLe_YefCQ(Lcom/android/server/wm/AppTaskImpl;ILcom/android/server/wm/Task;Landroid/os/IRemoteCallback;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppTaskImpl;->lambda$moveTaskTo$0(ILcom/android/server/wm/Task;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V
    .registers 4

    .line 74
    invoke-direct {p0}, Landroid/app/IAppTask$Stub;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 76
    iput p2, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    .line 77
    iput p3, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    return-void
.end method


# virtual methods
.method public final checkCallerOrSystemOrRoot()V
    .registers 4

    .line 81
    iget v0, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_3c

    const/16 v0, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_3c

    .line 82
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_3c

    .line 83
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " does not match caller of getAppTasks(): "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_3c
    return-void
.end method

.method public finishAndRemoveTask()V
    .registers 12

    .line 100
    invoke-virtual {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 103
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 104
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_2f

    .line 108
    :try_start_17
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v3, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const-string v6, "finish-and-remove-task"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IZZLjava/lang/String;II)Z

    move-result v0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_4b

    if-eqz v0, :cond_32

    .line 114
    :try_start_27
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2f
    move-exception v0

    move-object p0, v0

    goto :goto_51

    .line 111
    :cond_32
    :try_start_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find task ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4b
    .catchall {:try_start_32 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v0

    move-object p0, v0

    .line 114
    :try_start_4d
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    throw p0

    .line 116
    :goto_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 7

    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 124
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_2f

    .line 126
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 131
    iget-object p0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/wm/RecentTasks;->createRecentTaskInfo(Lcom/android/server/wm/Task;ZZ)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_31

    .line 134
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2f

    .line 131
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_2f
    move-exception p0

    goto :goto_50

    :catchall_31
    move-exception p0

    goto :goto_4c

    .line 129
    :cond_33
    :try_start_33
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4c
    .catchall {:try_start_33 .. :try_end_4c} :catchall_31

    .line 134
    :goto_4c
    :try_start_4c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    throw p0

    .line 136
    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$moveTaskTo$0(ILcom/android/server/wm/Task;Landroid/os/IRemoteCallback;)V
    .registers 5

    .line 227
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 226
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/wm/AppTaskImpl;->reportTaskMoveRequestResult(IILandroid/graphics/Rect;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public final synthetic lambda$moveTaskTo$1(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;IILandroid/os/IRemoteCallback;Lcom/android/server/wm/TransitionController;Z)V
    .registers 15

    const/4 v0, 0x0

    if-eqz p7, :cond_25

    .line 232
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getRequestedLocation()Landroid/window/TransitionRequestInfo$RequestedLocation;

    move-result-object p7

    invoke-virtual {p7}, Landroid/window/TransitionRequestInfo$RequestedLocation;->getDisplayId()I

    move-result v2

    .line 233
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getRequestedLocation()Landroid/window/TransitionRequestInfo$RequestedLocation;

    move-result-object p7

    invoke-virtual {p7}, Landroid/window/TransitionRequestInfo$RequestedLocation;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 231
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AppTaskImpl;->validateTaskMoveRequest(ILandroid/graphics/Rect;Lcom/android/server/wm/Task;II)I

    move-result p0

    if-eqz p0, :cond_26

    const/4 p2, -0x1

    .line 238
    invoke-virtual {v1, p0, p2, v0, p5}, Lcom/android/server/wm/AppTaskImpl;->reportTaskMoveRequestResult(IILandroid/graphics/Rect;Landroid/os/IRemoteCallback;)V

    .line 243
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    return-void

    :cond_25
    move-object v4, p2

    .line 247
    :cond_26
    invoke-virtual {p6, p1, v4, v0, v0}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    const/4 p0, 0x1

    .line 248
    invoke-virtual {p1, v4, p0}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public moveTaskTo(ILandroid/graphics/Rect;Landroid/os/IRemoteCallback;)V
    .registers 16

    .line 190
    invoke-virtual {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 191
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 192
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 193
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 195
    :try_start_f
    const-string v0, "android.permission.REPOSITION_SELF_WINDOWS"

    invoke-static {v0, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v10, -0x1

    if-eqz v0, :cond_25

    .line 197
    invoke-virtual {p0, v6, v10, v7, p3}, Lcom/android/server/wm/AppTaskImpl;->reportTaskMoveRequestResult(IILandroid/graphics/Rect;Landroid/os/IRemoteCallback;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_21

    .line 252
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_21
    move-exception v0

    move-object p0, v0

    goto/16 :goto_92

    .line 201
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v11
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_21

    .line 202
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v1, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_48

    const/4 p1, 0x1

    .line 204
    invoke-virtual {p0, p1, v10, v7, p3}, Lcom/android/server/wm/AppTaskImpl;->reportTaskMoveRequestResult(IILandroid/graphics/Rect;Landroid/os/IRemoteCallback;)V

    .line 206
    monitor-exit v11
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_45

    .line 252
    :goto_3e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_45
    move-exception v0

    move-object p0, v0

    goto :goto_8d

    :cond_48
    if-ne p1, v10, :cond_4e

    .line 210
    :try_start_4a
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p1

    :cond_4e
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 213
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTaskImpl;->validateTaskMoveRequest(ILandroid/graphics/Rect;Lcom/android/server/wm/Task;II)I

    move-result p0

    move p1, v1

    if-eqz p0, :cond_5d

    .line 216
    invoke-virtual {v0, p0, v10, v7, p3}, Lcom/android/server/wm/AppTaskImpl;->reportTaskMoveRequestResult(IILandroid/graphics/Rect;Landroid/os/IRemoteCallback;)V

    .line 218
    monitor-exit v11

    goto :goto_3e

    .line 221
    :cond_5d
    iget-object p2, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v7

    move-object p2, v2

    .line 222
    new-instance v2, Lcom/android/server/wm/Transition;

    iget-object v1, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const/4 v10, 0x0

    invoke-direct {v2, v6, v10, v7, v1}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 224
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/Transition;->setRequestedLocation(ILandroid/graphics/Rect;)V

    .line 225
    new-instance p1, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, p0, v3, p3}, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppTaskImpl;ILcom/android/server/wm/Task;Landroid/os/IRemoteCallback;)V

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->addTransactionPresentedListener(Ljava/lang/Runnable;)V

    move-object v1, v0

    .line 228
    new-instance v0, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/AppTaskImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppTaskImpl;Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;IILandroid/os/IRemoteCallback;Lcom/android/server/wm/TransitionController;)V

    invoke-virtual {v7, v2, v0}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)Z

    .line 250
    monitor-exit v11
    :try_end_86
    .catchall {:try_start_4a .. :try_end_86} :catchall_45

    :try_start_86
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_21

    .line 252
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 250
    :goto_8d
    :try_start_8d
    monitor-exit v11
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_45

    :try_start_8e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_21

    .line 252
    :goto_92
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    throw p0
.end method

.method public moveToFront(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 141
    invoke-virtual {v0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 143
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 145
    iget-object v4, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 148
    :try_start_1a
    iget-object v4, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v15
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_90

    const/4 v4, 0x0

    if-eqz v1, :cond_31

    .line 151
    :try_start_25
    iget-object v6, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    move-object v7, v1

    goto :goto_32

    :catchall_2d
    move-exception v0

    move-wide/from16 v16, v13

    goto :goto_8b

    :cond_31
    move-object v7, v4

    .line 153
    :goto_32
    iget-object v1, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 154
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getBackgroundActivityLaunchController()Lcom/android/server/wm/BackgroundActivityStartController;

    move-result-object v1
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_2d

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v16, v13

    move-object v13, v4

    move-object/from16 v4, p2

    .line 155
    :try_start_46
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->blocks()Z

    move-result v4

    if-eqz v4, :cond_78

    iget-object v4, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v4

    if-nez v4, :cond_78

    .line 168
    const-string v0, "AppTaskImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTaskToFront blocked: : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    monitor-exit v15
    :try_end_6f
    .catchall {:try_start_46 .. :try_end_6f} :catchall_76

    .line 178
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_76
    move-exception v0

    goto :goto_8b

    .line 174
    :cond_78
    :try_start_78
    monitor-exit v15
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_76

    :try_start_79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 175
    iget-object v1, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v0, v0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v1, v3, v2, v0, v13}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I
    :try_end_85
    .catchall {:try_start_79 .. :try_end_85} :catchall_89

    .line 178
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_89
    move-exception v0

    goto :goto_93

    .line 174
    :goto_8b
    :try_start_8b
    monitor-exit v15
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_76

    :try_start_8c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_89

    :catchall_90
    move-exception v0

    move-wide/from16 v16, v13

    .line 178
    :goto_93
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    .line 92
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IAppTask$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 94
    const-string p1, "AppTaskImpl"

    invoke-static {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final reportTaskMoveRequestResult(IILandroid/graphics/Rect;Landroid/os/IRemoteCallback;)V
    .registers 6

    if-nez p4, :cond_3

    return-void

    .line 269
    :cond_3
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 270
    const-string v0, "result"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez p1, :cond_19

    .line 272
    const-string p1, "display_id"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    const-string p1, "bounds"

    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 277
    :cond_19
    :try_start_19
    invoke-interface {p4, p0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1c

    :catch_1c
    return-void
.end method

.method public requestWindowingLayer(ILandroid/os/IRemoteCallback;)V
    .registers 4

    .line 389
    invoke-virtual {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 390
    const-string p0, "The callback provided is null."

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 392
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 395
    const-string p1, "result"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 398
    :try_start_13
    invoke-interface {p2, p0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method

.method public setExcludeFromRecents(Z)V
    .registers 8

    .line 364
    invoke-virtual {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 367
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_3d

    .line 369
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 374
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p1, :cond_2a

    const/high16 p1, 0x800000

    .line 376
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_35

    :catchall_28
    move-exception p0

    goto :goto_58

    .line 378
    :cond_2a
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const v3, -0x800001

    and-int/2addr p1, v3

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_28

    .line 382
    :goto_35
    :try_start_35
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3d
    move-exception p0

    goto :goto_5c

    .line 372
    :cond_3f
    :try_start_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find task ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_58
    .catchall {:try_start_3f .. :try_end_58} :catchall_28

    .line 382
    :goto_58
    :try_start_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 383
    throw p0

    .line 384
    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startActivity(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 12

    .line 331
    invoke-virtual {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p4, p2}, Landroid/app/ActivityManagerInternal;->addCreatorToken(Landroid/content/Intent;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 338
    iget-object v1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 339
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_80

    .line 344
    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 348
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 349
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 350
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 351
    iget-object p0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    const-string v4, "AppTaskImpl"

    invoke-virtual {p0, p4, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 353
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 354
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 355
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 356
    invoke-virtual {p0, p6, v1, v3}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;II)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 357
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 358
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStarter;->setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 359
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p0

    return p0

    :catchall_67
    move-exception p0

    goto :goto_99

    .line 346
    :cond_69
    :try_start_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad app thread "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 342
    :cond_80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to find task ID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :goto_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_69 .. :try_end_9a} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final validateTaskMoveRequest(ILandroid/graphics/Rect;Lcom/android/server/wm/Task;II)I
    .registers 12

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 291
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 p0, 0x3

    return p0

    .line 296
    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p1, p4, p5, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p0, 0x2

    return p0

    .line 301
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 302
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    const/4 p4, 0x4

    if-nez p1, :cond_24

    return p4

    .line 306
    :cond_24
    iget p1, v0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    int-to-float p1, p1

    .line 307
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->density:F

    .line 308
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    mul-float/2addr p1, p5

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    cmpg-double p1, v0, v4

    if-ltz p1, :cond_6b

    .line 309
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-double p1, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_4a

    goto :goto_6b

    .line 313
    :cond_4a
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getSelfMovable()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5c

    const/4 p4, 0x5

    if-nez p1, :cond_5b

    .line 316
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    if-ne p1, p4, :cond_5b

    goto :goto_5c

    :cond_5b
    return p4

    .line 321
    :cond_5c
    :goto_5c
    iget-object p0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p0

    if-nez p0, :cond_69

    return p2

    :cond_69
    const/4 p0, 0x0

    return p0

    :cond_6b
    :goto_6b
    return p4
.end method
