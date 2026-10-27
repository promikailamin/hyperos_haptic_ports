.class Lcom/android/server/wm/RecentsAnimationController$3;
.super Landroid/view/IRecentsAnimationController$Stub;
.source "RecentsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RecentsAnimationController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 256
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {p0}, Landroid/view/IRecentsAnimationController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public animateNavigationBarToApp(J)V
    .registers 7
    .param p1, "duration"    # J

    .line 456
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 458
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1d

    .line 459
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->animateNavigationBarForAppLaunch(J)V

    .line 460
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1a

    .line 462
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 463
    nop

    .line 464
    return-void

    .line 460
    :catchall_1a
    move-exception v3

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$3;
    .end local p1    # "duration":J
    :try_start_1c
    throw v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    .line 462
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$3;
    .restart local p1    # "duration":J
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 463
    throw v2
.end method

.method public cleanupScreenshot()V
    .registers 4

    .line 411
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 415
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v2}, Lcom/android/server/wm/RecentsAnimationController;->continueDeferredCancelAnimation()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 417
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    nop

    .line 419
    return-void

    .line 417
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    throw v2
.end method

.method public detachNavigationBarFromApp(Z)V
    .registers 7
    .param p1, "moveHomeToTop"    # Z

    .line 442
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 444
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_32

    .line 445
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    if-nez p1, :cond_1a

    iget-boolean v4, v3, Lcom/android/server/wm/RecentsAnimationController;->mIsAddingTaskToTargets:Z

    if-eqz v4, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v4, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v4, 0x1

    :goto_1b
    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentsAnimationController;->restoreNavigationBarFromApp(Z)V

    .line 447
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 448
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_2f

    .line 450
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    nop

    .line 452
    return-void

    .line 448
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$3;
    .end local p1    # "moveHomeToTop":Z
    :try_start_31
    throw v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 450
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$3;
    .restart local p1    # "moveHomeToTop":Z
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    throw v2
.end method

.method public finish(ZZ)V
    .registers 14
    .param p1, "moveHomeToTop"    # Z
    .param p2, "sendUserLeaveHint"    # Z

    .line 313
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_27

    move v0, p1

    .local v0, "protoLogParam0":Z
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    .local v3, "protoLogParam1":Z
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x1a9493ea

    const/16 v6, 0xf

    const/4 v7, 0x0

    new-array v8, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 315
    .end local v0    # "protoLogParam0":Z
    .end local v3    # "protoLogParam1":Z
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 319
    .local v3, "token":J
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    move-result-object v0

    if-eqz p1, :cond_34

    .line 320
    goto :goto_35

    .line 321
    :cond_34
    move v1, v2

    .line 319
    :goto_35
    invoke-interface {v0, v1, p2}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZ)V
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_3d

    .line 323
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    nop

    .line 325
    return-void

    .line 323
    :catchall_3d
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    throw v0
.end method

.method public hideCurrentInputMethod()V
    .registers 3

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isImeAttachedToApp()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 392
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 393
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 394
    .local v0, "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    if-eqz v0, :cond_1b

    .line 395
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    .line 400
    .end local v0    # "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    :cond_1b
    return-void
.end method

.method public removeTask(I)Z
    .registers 6
    .param p1, "taskId"    # I

    .line 430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 432
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1d

    .line 433
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3, p1}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$mremoveTaskInternal(Lcom/android/server/wm/RecentsAnimationController;I)Z

    move-result v3

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1a

    .line 436
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 433
    return v3

    .line 434
    :catchall_1a
    move-exception v3

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$3;
    .end local p1    # "taskId":I
    :try_start_1c
    throw v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    .line 436
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$3;
    .restart local p1    # "taskId":I
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 437
    throw v2
.end method

.method public screenshotTask(I)Landroid/window/TaskSnapshot;
    .registers 13
    .param p1, "taskId"    # I

    .line 260
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_27

    int-to-long v4, p1

    .local v4, "protoLogParam0":J
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v0

    .local v0, "protoLogParam1":Z
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0xafd244c

    const/16 v8, 0xd

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v6, v7, v8, v2, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 262
    .end local v0    # "protoLogParam1":Z
    .end local v4    # "protoLogParam0":J
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 264
    .local v4, "token":J
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_90

    .line 265
    :try_start_36
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 266
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_8d

    .line 284
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 266
    return-object v2

    .line 268
    :cond_43
    :try_start_43
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    .local v6, "i":I
    :goto_4e
    if-ltz v6, :cond_88

    .line 269
    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v7}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 270
    .local v7, "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-static {v7}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v8

    .line 271
    .local v8, "task":Lcom/android/server/wm/Task;
    iget v9, v8, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v9, p1, :cond_85

    .line 272
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 274
    .local v2, "snapshotController":Lcom/android/server/wm/TaskSnapshotController;
    new-array v1, v1, [Lcom/android/server/wm/Task;

    aput-object v8, v1, v3

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    .line 275
    .local v1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 276
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V

    .line 277
    iget v9, v8, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, p1, v9, v3, v3}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v3

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_43 .. :try_end_81} :catchall_8d

    .line 284
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 277
    return-object v3

    .line 268
    .end local v1    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    .end local v2    # "snapshotController":Lcom/android/server/wm/TaskSnapshotController;
    .end local v7    # "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .end local v8    # "task":Lcom/android/server/wm/Task;
    :cond_85
    add-int/lit8 v6, v6, -0x1

    goto :goto_4e

    .line 281
    .end local v6    # "i":I
    :cond_88
    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_8d

    .line 284
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 281
    return-object v2

    .line 282
    :catchall_8d
    move-exception v1

    :try_start_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    .end local v4    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$3;
    .end local p1    # "taskId":I
    :try_start_8f
    throw v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    .line 284
    .restart local v4    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$3;
    .restart local p1    # "taskId":I
    :catchall_90
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    throw v0
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .registers 10
    .param p1, "behindSystemBars"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 332
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_7f

    .line 333
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_1b
    if-ltz v3, :cond_3f

    .line 334
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v5}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v5}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v5

    .line 335
    .local v5, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v7}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmTargetActivityType(Lcom/android/server/wm/RecentsAnimationController;)I

    move-result v7

    if-eq v6, v7, :cond_3c

    .line 336
    invoke-virtual {v5, p1}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 333
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :cond_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 339
    .end local v3    # "i":I
    :cond_3f
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->maybeFinishStylusHandwriting()V

    .line 340
    if-nez p1, :cond_6b

    .line 344
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isImeAttachedToApp()Z

    move-result v3

    if-nez v3, :cond_64

    .line 345
    const-class v3, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 346
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 347
    .local v3, "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    if-eqz v3, :cond_63

    .line 348
    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    .line 351
    .end local v3    # "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    :cond_63
    goto :goto_6b

    .line 356
    :cond_64
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(Z)V

    .line 360
    :cond_6b
    :goto_6b
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 361
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_f .. :try_end_77} :catchall_7c

    .line 363
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    nop

    .line 365
    return-void

    .line 361
    :catchall_7c
    move-exception v3

    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$3;
    .end local p1    # "behindSystemBars":Z
    :try_start_7e
    throw v3
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7f

    .line 363
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$3;
    .restart local p1    # "behindSystemBars":Z
    :catchall_7f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    throw v2
.end method

.method public setDeferCancelUntilNextTransition(ZZ)V
    .registers 5
    .param p1, "defer"    # Z
    .param p2, "screenshot"    # Z

    .line 404
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 405
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->setDeferredCancel(ZZ)V

    .line 406
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 407
    return-void

    .line 406
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .registers 14
    .param p1, "taskId"    # I
    .param p2, "finishTransaction"    # Landroid/window/PictureInPictureSurfaceTransaction;
    .param p3, "overlay"    # Landroid/view/SurfaceControl;

    .line 292
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    int-to-long v2, p1

    .local v2, "protoLogParam0":J
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam1":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x9c60c62

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v0, v7, v1

    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 294
    .end local v0    # "protoLogParam1":Ljava/lang/String;
    .end local v2    # "protoLogParam0":J
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 296
    .local v2, "token":J
    :try_start_23
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_62

    .line 297
    :try_start_2e
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_39
    if-ltz v4, :cond_59

    .line 298
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v1}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 299
    .local v1, "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-static {v1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v5, p1, :cond_56

    .line 300
    invoke-static {v1, p2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fputmFinishTransaction(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;Landroid/window/PictureInPictureSurfaceTransaction;)V

    .line 301
    invoke-static {v1, p3}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fputmFinishOverlay(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;Landroid/view/SurfaceControl;)V

    .line 302
    goto :goto_59

    .line 297
    .end local v1    # "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    :cond_56
    add-int/lit8 v4, v4, -0x1

    goto :goto_39

    .line 305
    .end local v4    # "i":I
    :cond_59
    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_2e .. :try_end_5a} :catchall_5f

    .line 307
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    nop

    .line 309
    return-void

    .line 305
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$3;
    .end local p1    # "taskId":I
    .end local p2    # "finishTransaction":Landroid/window/PictureInPictureSurfaceTransaction;
    .end local p3    # "overlay":Landroid/view/SurfaceControl;
    :try_start_61
    throw v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    .line 307
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$3;
    .restart local p1    # "taskId":I
    .restart local p2    # "finishTransaction":Landroid/window/PictureInPictureSurfaceTransaction;
    .restart local p3    # "overlay":Landroid/view/SurfaceControl;
    :catchall_62
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    throw v0
.end method

.method public setInputConsumerEnabled(Z)V
    .registers 11
    .param p1, "enabled"    # Z

    .line 369
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v2

    .local v2, "protoLogParam1":Z
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x48b44425

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 371
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Z
    :cond_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 373
    .local v2, "token":J
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_66

    .line 374
    :try_start_35
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 375
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_63

    .line 383
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    return-void

    .line 377
    :cond_42
    :try_start_42
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4, p1}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fputmInputConsumerEnabled(Lcom/android/server/wm/RecentsAnimationController;Z)V

    .line 378
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    .line 379
    .local v4, "inputMonitor":Lcom/android/server/wm/InputMonitor;
    invoke-virtual {v4, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 380
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v1}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 381
    .end local v4    # "inputMonitor":Lcom/android/server/wm/InputMonitor;
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_42 .. :try_end_5e} :catchall_63

    .line 383
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    nop

    .line 385
    return-void

    .line 381
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$3;
    .end local p1    # "enabled":Z
    :try_start_65
    throw v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    .line 383
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimationController$3;
    .restart local p1    # "enabled":Z
    :catchall_66
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    throw v0
.end method

.method public setWillFinishToHome(Z)V
    .registers 4
    .param p1, "willFinishToHome"    # Z

    .line 423
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 424
    :try_start_b
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentsAnimationController;->setWillFinishToHome(Z)V

    .line 425
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v1
.end method
