.class public Lcom/android/server/wm/SnapshotController;
.super Ljava/lang/Object;
.source "SnapshotController.java"


# instance fields
.field public final mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

.field public final mObsoleteSnapshots:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSnapshotManagerService:Lcom/android/server/wm/SnapshotController$SnapshotManagerService;

.field public final mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

.field public final mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;


# direct methods
.method public static synthetic $r8$lambda$TV29UzMtxQKVnhnWpRUevvp_os4(Lcom/android/server/wm/SnapshotController;Landroid/hardware/HardwareBuffer;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotController;->lambda$new$1(Landroid/hardware/HardwareBuffer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ibbxI7ud-kkaypzOJwL5fxr1fg(Lcom/android/server/wm/SnapshotController;Landroid/hardware/HardwareBuffer;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotController;->lambda$new$0(Landroid/hardware/HardwareBuffer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/SnapshotController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;-><init>(Lcom/android/server/wm/SnapshotController;)V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotManagerService:Lcom/android/server/wm/SnapshotController$SnapshotManagerService;

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 66
    new-instance v0, Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-direct {v0}, Lcom/android/server/wm/SnapshotPersistQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 67
    new-instance v1, Lcom/android/server/wm/TaskSnapshotController;

    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V

    iput-object v1, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 68
    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController;

    invoke-direct {v2, p1, v0}, Lcom/android/server/wm/ActivitySnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V

    iput-object v2, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 69
    new-instance p1, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SnapshotController;)V

    .line 83
    invoke-virtual {v1, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->setSnapshotReleaser(Ljava/util/function/Consumer;)V

    .line 84
    invoke-virtual {v2, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->setSnapshotReleaser(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static isTransitionClose(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const/4 v0, 0x4

    if-eq p0, v0, :cond_d

    const/16 v0, 0xe

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static isTransitionOpen(I)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v1, 0x3

    if-eq p0, v1, :cond_d

    const/16 v1, 0xd

    if-ne p0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    return v0
.end method


# virtual methods
.method public final closeObsoleteSnapshots()V
    .registers 4

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2f

    .line 257
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_11
    if-ltz v0, :cond_2f

    .line 258
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/HardwareBuffer;

    if-eqz v1, :cond_2c

    .line 259
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 260
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_2f
    :goto_2f
    return-void
.end method

.method public convertToLowResSnapshot(ILandroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;
    .registers 7

    const/16 v0, 0x20

    const-wide/16 v1, 0x20

    .line 338
    :try_start_4
    const-string v3, "createLowResSnapshot"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 339
    iget-object v3, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 340
    invoke-virtual {v3, p2}, Lcom/android/server/wm/TaskSnapshotController;->createLowResSnapshot(Landroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 342
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/SnapshotPersistQueue;->updateKnownLowResSnapshotIfPossible(ILandroid/window/TaskSnapshot;)V
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_17

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_20

    .line 346
    :cond_19
    :goto_19
    invoke-virtual {p2, v0}, Landroid/window/TaskSnapshot;->removeReference(I)V

    .line 347
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    .line 346
    :goto_20
    invoke-virtual {p2, v0}, Landroid/window/TaskSnapshot;->removeReference(I)V

    .line 347
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 348
    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AbsAppSnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivitySnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 277
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SnapshotPersistQueue;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getTaskSnapshotInner(ILcom/android/server/wm/Task;JI)Landroid/window/TaskSnapshot;
    .registers 14

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p5, v0, :cond_7

    move v0, v2

    goto :goto_8

    :cond_7
    move v0, v1

    .line 287
    :goto_8
    iget-object v3, p0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    .line 288
    :try_start_10
    iget-object v4, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v4, p1, p5}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(II)Landroid/window/TaskSnapshot;

    move-result-object p5

    const/4 v4, 0x0

    const/16 v5, 0x10

    if-eqz p5, :cond_32

    .line 291
    invoke-virtual {p5}, Landroid/window/TaskSnapshot;->getCaptureTime()J

    move-result-wide p0

    cmp-long p0, p0, p3

    if-lez p0, :cond_2d

    .line 292
    invoke-virtual {p5, v5}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 293
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p5

    :catchall_2b
    move-exception p0

    goto :goto_7f

    .line 295
    :cond_2d
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    .line 298
    :cond_32
    :try_start_32
    iget-object p5, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/4 v6, 0x3

    invoke-virtual {p5, p1, v6}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(II)Landroid/window/TaskSnapshot;

    move-result-object p5

    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-lez v6, :cond_4e

    if-eqz p5, :cond_4e

    .line 302
    invoke-virtual {p5}, Landroid/window/TaskSnapshot;->getCaptureTime()J

    move-result-wide v6

    cmp-long p3, v6, p3

    if-gtz p3, :cond_4e

    .line 303
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    :cond_4e
    if-eqz v0, :cond_5f

    .line 306
    :try_start_50
    iget-object p3, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-boolean p3, p3, Lcom/android/server/wm/TaskSnapshotController;->mOnlyCacheLowResSnapshot:Z

    if-eqz p3, :cond_5f

    if-eqz p5, :cond_5f

    .line 307
    invoke-virtual {p5}, Landroid/window/TaskSnapshot;->isLowResolution()Z

    move-result p3

    if-nez p3, :cond_5f

    move v1, v2

    :cond_5f
    if-eqz v1, :cond_66

    const/16 p3, 0x20

    .line 309
    invoke-virtual {p5, p3}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 311
    :cond_66
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_50 .. :try_end_67} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v1, :cond_76

    .line 315
    invoke-virtual {p0, p1, p5}, Lcom/android/server/wm/SnapshotController;->convertToLowResSnapshot(ILandroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;

    move-result-object p3

    if-eqz p3, :cond_76

    .line 317
    invoke-virtual {p3, v5}, Landroid/window/TaskSnapshot;->addReference(I)V

    return-object p3

    .line 322
    :cond_76
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget p2, p2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, p1, p2, v0, v5}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshotFromDisk(IIZI)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0

    .line 311
    :goto_7f
    :try_start_7f
    monitor-exit v3
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$new$0(Landroid/hardware/HardwareBuffer;)V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 72
    :try_start_8
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 73
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13
    move-exception p0

    goto :goto_36

    .line 75
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 76
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mObsoleteSnapshots:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 78
    :cond_2e
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 80
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_36
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$new$1(Landroid/hardware/HardwareBuffer;)V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SnapshotController;Landroid/hardware/HardwareBuffer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 3

    .line 106
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivitySnapshotController;->notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method public notifySnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .registers 3

    .line 352
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotManagerService:Lcom/android/server/wm/SnapshotController$SnapshotManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->notifySnapshotChanged(ILandroid/window/TaskSnapshot;)V

    return-void
.end method

.method public notifySnapshotInvalidate(I)V
    .registers 2

    .line 356
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotManagerService:Lcom/android/server/wm/SnapshotController$SnapshotManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotController$SnapshotManagerService;->notifySnapshotInvalidate(I)V

    return-void
.end method

.method public onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    .line 102
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 97
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onTransactionReady(ILjava/util/ArrayList;)V
    .registers 10

    .line 112
    invoke-static {p1}, Lcom/android/server/wm/SnapshotController;->isTransitionOpen(I)Z

    move-result v0

    .line 113
    invoke-static {p1}, Lcom/android/server/wm/SnapshotController;->isTransitionClose(I)Z

    move-result v1

    if-nez v0, :cond_12

    if-nez v1, :cond_12

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_12

    goto/16 :goto_a4

    .line 118
    :cond_12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_1a
    if-ltz p1, :cond_9d

    .line 119
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 121
    iget v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_29

    goto/16 :goto_99

    .line 122
    :cond_29
    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_99

    .line 123
    :cond_32
    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_5d

    .line 130
    iget-boolean v5, v4, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v5, :cond_5d

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_5d

    iget-object v5, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 131
    invoke-virtual {v5, v4}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 132
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 133
    iget-object v5, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V

    :cond_5d
    if-eqz v1, :cond_60

    goto :goto_99

    .line 139
    :cond_60
    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_70

    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 140
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_99

    .line 141
    :cond_70
    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_7d

    .line 142
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_83

    .line 143
    :cond_7d
    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    :goto_83
    if-eqz v3, :cond_99

    .line 144
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_99

    if-nez v2, :cond_96

    .line 146
    new-instance v2, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;

    invoke-direct {v2, v0}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;-><init>(Lcom/android/server/wm/SnapshotController-IA;)V

    .line 148
    :cond_96
    invoke-virtual {v2, v3}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->put(Lcom/android/server/wm/ActivityRecord;)V

    :cond_99
    :goto_99
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_1a

    :cond_9d
    if-eqz v2, :cond_a4

    .line 153
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/SnapshotController$ActivitiesByTask;->recordSnapshot(Lcom/android/server/wm/ActivitySnapshotController;)V

    :cond_a4
    :goto_a4
    return-void
.end method

.method public onTransitionFinish(ILjava/util/ArrayList;)V
    .registers 9

    .line 211
    invoke-static {p1}, Lcom/android/server/wm/SnapshotController;->isTransitionOpen(I)Z

    move-result v0

    .line 212
    invoke-static {p1}, Lcom/android/server/wm/SnapshotController;->isTransitionClose(I)Z

    move-result v1

    if-nez v0, :cond_10

    if-nez v1, :cond_10

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_16

    .line 214
    :cond_10
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 215
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotController;->closeObsoleteSnapshots()V

    return-void

    .line 218
    :cond_1a
    const-string p1, "SnapshotController_analysis"

    const-wide/16 v0, 0x20

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivitySnapshotController;->beginSnapshotProcess()V

    .line 220
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_31
    if-ltz v2, :cond_54

    .line 222
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 223
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_4e

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-nez v4, :cond_4e

    .line 224
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_4e

    goto :goto_51

    .line 227
    :cond_4e
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_51
    add-int/lit8 v2, v2, -0x1

    goto :goto_31

    .line 229
    :cond_54
    iget-object v2, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivitySnapshotController;->handleTransitionFinish(Ljava/util/ArrayList;)V

    .line 230
    iget-object p1, p0, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivitySnapshotController;->endSnapshotProcess()V

    .line 232
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_64
    if-ltz p1, :cond_97

    .line 233
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 234
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_94

    .line 235
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_94

    .line 238
    iget-object v2, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v4, v3, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(II)Landroid/window/TaskSnapshot;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 245
    iget-object v2, p0, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v4, v3, Lcom/android/server/wm/Task;->mTaskId:I

    iget v3, v3, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/TaskSnapshotController;->removeAndDeleteSnapshot(II)V

    :cond_94
    add-int/lit8 p1, p1, -0x1

    goto :goto_64

    .line 249
    :cond_97
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotController;->closeObsoleteSnapshots()V

    .line 250
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public setPause(Z)V
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotPersistQueue;->setPaused(Z)V

    return-void
.end method

.method public systemReady()V
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/android/server/wm/SnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotPersistQueue;->systemReady()V

    return-void
.end method
