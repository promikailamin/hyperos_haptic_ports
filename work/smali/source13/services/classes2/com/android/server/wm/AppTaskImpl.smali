.class Lcom/android/server/wm/AppTaskImpl;
.super Landroid/app/IAppTask$Stub;
.source "AppTaskImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppTaskImpl"


# instance fields
.field private final mCallingUid:I

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mTaskId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "taskId"    # I
    .param p3, "callingUid"    # I

    .line 46
    invoke-direct {p0}, Landroid/app/IAppTask$Stub;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 48
    iput p2, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    .line 49
    iput p3, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    .line 50
    return-void
.end method

.method private checkCallerOrSystemOrRoot()V
    .registers 4

    .line 53
    iget v0, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_40

    const/16 v0, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_40

    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_40

    .line 55
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match caller of getAppTasks(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_40
    :goto_40
    return-void
.end method


# virtual methods
.method public finishAndRemoveTask()V
    .registers 9

    .line 72
    invoke-direct {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_49

    .line 78
    .local v1, "origId":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "finish-and-remove-task"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_43

    if-eqz v3, :cond_28

    .line 83
    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    nop

    .line 85
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 86
    return-void

    .line 80
    .restart local v1    # "origId":J
    :cond_28
    :try_start_28
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    throw v3
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_43

    .line 83
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    :catchall_43
    move-exception v3

    :try_start_44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    nop

    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    throw v3

    .line 85
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 8

    .line 90
    invoke-direct {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 93
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_50

    .line 95
    .local v1, "origId":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 97
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_2f

    .line 100
    iget-object v4, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Lcom/android/server/wm/RecentTasks;->createRecentTaskInfo(Lcom/android/server/wm/Task;ZZ)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_4a

    .line 103
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_50

    .line 100
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    .line 98
    :cond_2f
    :try_start_2f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find task ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    throw v4
    :try_end_4a
    .catchall {:try_start_2f .. :try_end_4a} :catchall_4a

    .line 103
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    :catchall_4a
    move-exception v3

    :try_start_4b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    nop

    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    throw v3

    .line 105
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveToFront(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    .registers 24
    .param p1, "appThread"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 110
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v14, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 112
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 113
    .local v15, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 114
    .local v13, "callingUid":I
    iget-object v0, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 117
    .local v16, "origId":J
    :try_start_1a
    iget-object v0, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v12
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_9f

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_92

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v2, :cond_32

    .line 120
    :try_start_25
    iget-object v3, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2d

    move-object v0, v3

    goto :goto_32

    .line 136
    .end local v0    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :catchall_2d
    move-exception v0

    move-object/from16 v18, v12

    move v2, v13

    goto :goto_96

    .line 122
    .restart local v0    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_32
    :goto_32
    :try_start_32
    iget-object v3, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    const-string/jumbo v4, "moveToFront"

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_92

    .line 124
    .local v3, "starter":Lcom/android/server/wm/ActivityStarter;
    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move v4, v13

    move v5, v15

    move-object/from16 v6, p2

    move-object v9, v0

    move/from16 v11, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v19

    move v2, v13

    .end local v13    # "callingUid":I
    .local v2, "callingUid":I
    move-object/from16 v13, v20

    :try_start_57
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;Landroid/app/ActivityOptions;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 126
    iget-object v4, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v4

    if-nez v4, :cond_7f

    .line 127
    monitor-exit v18
    :try_end_66
    .catchall {:try_start_57 .. :try_end_66} :catchall_9d

    .line 140
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    return-void

    .line 131
    :cond_6d
    :try_start_6d
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v4

    invoke-virtual {v4, v2, v15, v14}, Lcom/android/server/wm/ActivityStarterStub;->isAllowedStartActivity(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 133
    monitor-exit v18
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_9d

    .line 140
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    return-void

    .line 136
    .end local v0    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v3    # "starter":Lcom/android/server/wm/ActivityStarter;
    :cond_7f
    :try_start_7f
    monitor-exit v18
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_9d

    :try_start_80
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 137
    iget-object v0, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v3, v1, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v15, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I
    :try_end_8d
    .catchall {:try_start_80 .. :try_end_8d} :catchall_9b

    .line 140
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    nop

    .line 142
    return-void

    .line 136
    .end local v2    # "callingUid":I
    .restart local v13    # "callingUid":I
    :catchall_92
    move-exception v0

    move-object/from16 v18, v12

    move v2, v13

    .end local v13    # "callingUid":I
    .restart local v2    # "callingUid":I
    :goto_96
    :try_start_96
    monitor-exit v18
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_9d

    :try_start_97
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v2    # "callingUid":I
    .end local v15    # "callingPid":I
    .end local v16    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .end local p1    # "appThread":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    throw v0
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_9b

    .line 140
    .restart local v2    # "callingUid":I
    .restart local v15    # "callingPid":I
    .restart local v16    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .restart local p1    # "appThread":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    :catchall_9b
    move-exception v0

    goto :goto_a1

    .line 136
    :catchall_9d
    move-exception v0

    goto :goto_96

    .line 140
    .end local v2    # "callingUid":I
    .restart local v13    # "callingUid":I
    :catchall_9f
    move-exception v0

    move v2, v13

    .end local v13    # "callingUid":I
    .restart local v2    # "callingUid":I
    :goto_a1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IAppTask$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 65
    :catch_5
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "AppTaskImpl"

    invoke-static {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setExcludeFromRecents(Z)V
    .registers 9
    .param p1, "exclude"    # Z

    .line 178
    invoke-direct {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 181
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_5d

    .line 183
    .local v1, "origId":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 185
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_3c

    .line 188
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    .line 189
    .local v4, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_28

    .line 190
    const/high16 v5, 0x800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_33

    .line 192
    :cond_28
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const v6, -0x800001

    and-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_57

    .line 196
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_33
    :try_start_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    nop

    .line 198
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 199
    return-void

    .line 186
    .restart local v1    # "origId":J
    .restart local v3    # "task":Lcom/android/server/wm/Task;
    :cond_3c
    :try_start_3c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find task ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .end local p1    # "exclude":Z
    throw v4
    :try_end_57
    .catchall {:try_start_3c .. :try_end_57} :catchall_57

    .line 196
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .restart local p1    # "exclude":Z
    :catchall_57
    move-exception v3

    :try_start_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    nop

    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .end local p1    # "exclude":Z
    throw v3

    .line 198
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .restart local p1    # "exclude":Z
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startActivity(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 14
    .param p1, "whoThread"    # Landroid/os/IBinder;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "bOptions"    # Landroid/os/Bundle;

    .line 147
    invoke-direct {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 153
    .local v0, "callingUser":I
    iget-object v1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 154
    iget-object v2, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 156
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_71

    .line 159
    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v3

    .line 160
    .local v3, "appThread":Landroid/app/IApplicationThread;
    if-eqz v3, :cond_58

    .line 163
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_8c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 165
    iget-object v1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    const-string v4, "AppTaskImpl"

    invoke-virtual {v1, p4, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 166
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 167
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 168
    invoke-virtual {v1, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 169
    invoke-virtual {v1, p5}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 170
    invoke-virtual {v1, p6}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 171
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 172
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v1

    .line 165
    return v1

    .line 161
    :cond_58
    :try_start_58
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad app thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUser":I
    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .end local p1    # "whoThread":Landroid/os/IBinder;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "intent":Landroid/content/Intent;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .end local p6    # "bOptions":Landroid/os/Bundle;
    throw v4

    .line 157
    .end local v3    # "appThread":Landroid/app/IApplicationThread;
    .restart local v0    # "callingUser":I
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .restart local p1    # "whoThread":Landroid/os/IBinder;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "callingFeatureId":Ljava/lang/String;
    .restart local p4    # "intent":Landroid/content/Intent;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    .restart local p6    # "bOptions":Landroid/os/Bundle;
    :cond_71
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUser":I
    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .end local p1    # "whoThread":Landroid/os/IBinder;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "intent":Landroid/content/Intent;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .end local p6    # "bOptions":Landroid/os/Bundle;
    throw v3

    .line 163
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .restart local v0    # "callingUser":I
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .restart local p1    # "whoThread":Landroid/os/IBinder;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "callingFeatureId":Ljava/lang/String;
    .restart local p4    # "intent":Landroid/content/Intent;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    .restart local p6    # "bOptions":Landroid/os/Bundle;
    :catchall_8c
    move-exception v2

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_58 .. :try_end_8e} :catchall_8c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
