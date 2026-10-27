.class public Lcom/android/server/wm/SnapshotController$SnapshotManagerService;
.super Landroid/window/ITaskSnapshotManager$Stub;
.source "SnapshotController.java"


# instance fields
.field public final mRemoteTaskSnapshotListeners:Landroid/os/RemoteCallbackList;

.field public final synthetic this$0:Lcom/android/server/wm/SnapshotController;


# direct methods
.method public static synthetic $r8$lambda$5Bg0y87sJZBT4HHc381xfiJSty0(Lcom/android/server/wm/SnapshotController$SnapshotManagerService;ILandroid/window/TaskSnapshot;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->lambda$notifySnapshotChanged$1(ILandroid/window/TaskSnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DTjPrUlRprEOIu1vkxJOhtEiSnU(ILandroid/window/ITaskSnapshotListener;)V
    .registers 2

    .line 465
    invoke-interface {p1, p0}, Landroid/window/ITaskSnapshotListener;->onTaskSnapshotInvalidated(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QOWBIby3npxePpy41YwHJHFIg9k(Lcom/android/server/wm/SnapshotController$SnapshotManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->lambda$notifySnapshotInvalidate$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_APK1TAYluZQA9ZLOKFZ7pKWtuI(ILandroid/window/TaskSnapshot;Landroid/window/ITaskSnapshotListener;)V
    .registers 3

    .line 458
    invoke-interface {p2, p0, p1}, Landroid/window/ITaskSnapshotListener;->onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/SnapshotController;)V
    .registers 2

    .line 359
    iput-object p1, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->this$0:Lcom/android/server/wm/SnapshotController;

    invoke-direct {p0}, Landroid/window/ITaskSnapshotManager$Stub;-><init>()V

    .line 474
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->mRemoteTaskSnapshotListeners:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public final forAllRemoteListeners(Lcom/android/server/wm/SnapshotController$SnapshotManagerService$TaskSnapshotConsumer;)V
    .registers 4

    .line 487
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->mRemoteTaskSnapshotListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 490
    :try_start_a
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->mRemoteTaskSnapshotListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/window/ITaskSnapshotListener;

    invoke-interface {p1, v1}, Lcom/android/server/wm/SnapshotController$SnapshotManagerService$TaskSnapshotConsumer;->accept(Landroid/window/ITaskSnapshotListener;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_15

    :catch_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 495
    :cond_18
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->mRemoteTaskSnapshotListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public getTaskSnapshot(IJI)Landroid/window/TaskSnapshot;
    .registers 16

    .line 364
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 366
    :try_start_4
    invoke-static {p4}, Landroid/window/TaskSnapshotManager;->validateResolution(I)V

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->this$0:Lcom/android/server/wm/SnapshotController;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotController;->-$$Nest$fgetmService(Lcom/android/server/wm/SnapshotController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_5a

    .line 369
    :try_start_13
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->this$0:Lcom/android/server/wm/SnapshotController;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotController;->-$$Nest$fgetmService(Lcom/android/server/wm/SnapshotController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v7

    if-nez v7, :cond_49

    .line 372
    const-string p0, "WindowManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getTaskSnapshot: taskId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_13 .. :try_end_3e} :catchall_46

    .line 379
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :catchall_46
    move-exception v0

    move-object p0, v0

    goto :goto_5d

    .line 375
    :cond_49
    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_46

    :try_start_4a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 376
    iget-object v5, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->this$0:Lcom/android/server/wm/SnapshotController;

    move v6, p1

    move-wide v8, p2

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/SnapshotController;->getTaskSnapshotInner(ILcom/android/server/wm/Task;JI)Landroid/window/TaskSnapshot;

    move-result-object p0
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_5a

    .line 379
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_5a
    move-exception v0

    move-object p0, v0

    goto :goto_62

    .line 375
    :goto_5d
    :try_start_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_46

    :try_start_5e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_5a

    .line 379
    :goto_62
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 380
    throw p0
.end method

.method public final synthetic lambda$notifySnapshotChanged$1(ILandroid/window/TaskSnapshot;)V
    .registers 4

    .line 458
    new-instance v0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/SnapshotController$SnapshotManagerService$$ExternalSyntheticLambda3;-><init>(ILandroid/window/TaskSnapshot;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->forAllRemoteListeners(Lcom/android/server/wm/SnapshotController$SnapshotManagerService$TaskSnapshotConsumer;)V

    const/4 p0, 0x1

    .line 459
    invoke-virtual {p2, p0}, Landroid/window/TaskSnapshot;->removeReference(I)V

    return-void
.end method

.method public final synthetic lambda$notifySnapshotInvalidate$3(I)V
    .registers 3

    .line 464
    new-instance v0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/wm/SnapshotController$SnapshotManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->forAllRemoteListeners(Lcom/android/server/wm/SnapshotController$SnapshotManagerService$TaskSnapshotConsumer;)V

    return-void
.end method

.method public notifySnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .registers 5

    const/4 v0, 0x1

    .line 456
    invoke-virtual {p2, v0}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->this$0:Lcom/android/server/wm/SnapshotController;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotController;->-$$Nest$fgetmService(Lcom/android/server/wm/SnapshotController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/SnapshotController$SnapshotManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/SnapshotController$SnapshotManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SnapshotController$SnapshotManagerService;ILandroid/window/TaskSnapshot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifySnapshotInvalidate(I)V
    .registers 4

    .line 464
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->this$0:Lcom/android/server/wm/SnapshotController;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotController;->-$$Nest$fgetmService(Lcom/android/server/wm/SnapshotController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/SnapshotController$SnapshotManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/SnapshotController$SnapshotManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SnapshotController$SnapshotManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerTaskSnapshotListener(Landroid/window/ITaskSnapshotListener;)V
    .registers 3

    .line 440
    const-string v0, "registerTaskStackListener()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 441
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->mRemoteTaskSnapshotListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public takeTaskSnapshot(IZZ)Landroid/window/TaskSnapshot;
    .registers 11

    .line 386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    if-eqz p3, :cond_14

    .line 391
    :try_start_7
    iget-object p3, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->this$0:Lcom/android/server/wm/SnapshotController;

    iget-object p3, p3, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-boolean p3, p3, Lcom/android/server/wm/TaskSnapshotController;->mOnlyCacheLowResSnapshot:Z

    if-eqz p3, :cond_14

    move p3, v2

    goto :goto_15

    :catchall_11
    move-exception p0

    goto/16 :goto_ab

    :cond_14
    const/4 p3, 0x0

    .line 393
    :goto_15
    iget-object v3, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->this$0:Lcom/android/server/wm/SnapshotController;

    invoke-static {v3}, Lcom/android/server/wm/SnapshotController;->-$$Nest$fgetmService(Lcom/android/server/wm/SnapshotController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_11

    .line 394
    :try_start_21
    iget-object v4, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->this$0:Lcom/android/server/wm/SnapshotController;

    invoke-static {v4}, Lcom/android/server/wm/SnapshotController;->-$$Nest$fgetmService(Lcom/android/server/wm/SnapshotController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_83

    .line 396
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_83

    :cond_37
    const/16 v5, 0x10

    if-eqz p2, :cond_4e

    .line 407
    iget-object p2, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->this$0:Lcom/android/server/wm/SnapshotController;

    iget-object p2, p2, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    if-eqz p3, :cond_44

    const/16 v6, 0x20

    goto :goto_45

    :cond_44
    move v6, v5

    :goto_45
    invoke-virtual {p2, v2, v6}, Lcom/android/server/wm/TaskSnapshotController;->getRecordSnapshotSupplier(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    move-result-object p2

    move-object v2, p2

    move-object p2, v4

    goto :goto_57

    :catchall_4c
    move-exception p0

    goto :goto_a6

    .line 412
    :cond_4e
    iget-object p2, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->this$0:Lcom/android/server/wm/SnapshotController;

    iget-object p2, p2, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {p2, v2}, Lcom/android/server/wm/AbsAppSnapshotController;->snapshot(Lcom/android/server/wm/WindowContainer;)Landroid/window/TaskSnapshot;

    move-result-object p2

    move-object v2, v4

    .line 414
    :goto_57
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_4c

    :try_start_58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-nez p2, :cond_65

    if-eqz v2, :cond_65

    .line 417
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/window/TaskSnapshot;
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_11

    :cond_65
    if-nez p2, :cond_6b

    .line 433
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :cond_6b
    if-eqz p3, :cond_7c

    .line 423
    :try_start_6d
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->this$0:Lcom/android/server/wm/SnapshotController;

    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SnapshotController;->convertToLowResSnapshot(ILandroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;

    move-result-object p0

    if-eqz p0, :cond_7c

    .line 426
    invoke-virtual {p0, v5}, Landroid/window/TaskSnapshot;->addReference(I)V
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_11

    .line 433
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 430
    :cond_7c
    :try_start_7c
    invoke-virtual {p2, v5}, Landroid/window/TaskSnapshot;->addReference(I)V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_11

    .line 433
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    .line 397
    :cond_83
    :goto_83
    :try_start_83
    const-string p0, "WindowManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "takeTaskSnapshot: taskId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found or not visible"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_83 .. :try_end_9f} :catchall_4c

    .line 433
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .line 414
    :goto_a6
    :try_start_a6
    monitor-exit v3
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_4c

    :try_start_a7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_11

    .line 433
    :goto_ab
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 434
    throw p0
.end method

.method public unregisterTaskSnapshotListener(Landroid/window/ITaskSnapshotListener;)V
    .registers 3

    .line 447
    const-string v0, "unregisterTaskStackListener()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 448
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->mRemoteTaskSnapshotListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
