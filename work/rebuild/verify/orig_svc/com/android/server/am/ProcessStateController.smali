.class public Lcom/android/server/am/ProcessStateController;
.super Ljava/lang/Object;
.source "ProcessStateController.java"


# instance fields
.field public mBatchSession:Lcom/android/server/am/psc/SyncBatchSession;

.field public final mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

.field public final mLock:Ljava/lang/Object;

.field public final mOomAdjuster:Lcom/android/server/am/OomAdjuster;

.field public final mProcLock:Ljava/lang/Object;

.field public final mProcessLruUpdater:Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;

.field public final mServiceBinderCallUpdater:Ljava/util/function/BiConsumer;

.field public final mStagingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final mTopChangeCallback:Ljava/util/function/Consumer;


# direct methods
.method public static synthetic $r8$lambda$0TGLkE4vaGdArZAz6Huw38ist6g(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ConnectionRecord;Ljava/lang/Boolean;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ProcessStateController;->lambda$new$0(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ConnectionRecord;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3p8ZlIp28Z4QMbQUpHQ25GJKHr0(Lcom/android/server/am/ProcessStateController;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ConnectionRecord;Ljava/lang/Boolean;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ProcessStateController;->lambda$new$1(Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ConnectionRecord;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JcElQKPkDszKeKltr0DTcgU8hq0(Lcom/android/server/am/ProcessStateController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController;->runFullUpdateImpl(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j441ci62TaPfk1anHIx6hNkKxHU(Lcom/android/server/am/ProcessStateController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController;->runPendingUpdateImpl(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalState(Lcom/android/server/am/ProcessStateController;)Lcom/android/server/am/ProcessStateController$GlobalState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/ProcessStateController;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetActivityStateFlags(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessStateController;->setActivityStateFlags(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetExpandedNotificationShade(Lcom/android/server/am/ProcessStateController;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController;->setExpandedNotificationShade(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetHasActivity(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessStateController;->setHasActivity(Lcom/android/server/am/psc/ProcessRecordInternal;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetHasRecentTasks(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessStateController;->setHasRecentTasks(Lcom/android/server/am/psc/ProcessRecordInternal;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetHeavyWeightProcess(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController;->setHeavyWeightProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetHomeProcess(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController;->setHomeProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPerceptibleTaskStoppedTimeMillis(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;J)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ProcessStateController;->setPerceptibleTaskStoppedTimeMillis(Lcom/android/server/am/psc/ProcessRecordInternal;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPreviousProcess(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController;->setPreviousProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTopProcess(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController;->setTopProcess(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTopProcessState(Lcom/android/server/am/ProcessStateController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController;->setTopProcessState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVisibleDozeUiProcess(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController;->setVisibleDozeUiProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/Consumer;Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;Lcom/android/server/am/OomAdjuster$Injector;Lcom/android/server/am/OomAdjuster$Callback;)V
    .registers 19

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v5, Lcom/android/server/am/ProcessStateController$GlobalState;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/android/server/am/ProcessStateController$GlobalState;-><init>(Lcom/android/server/am/ProcessStateController-IA;)V

    iput-object v5, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController;->mStagingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 88
    new-instance v0, Lcom/android/server/am/OomAdjusterImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjusterImpl;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/OomAdjuster$GlobalState;Lcom/android/server/am/OomAdjuster$Injector;Lcom/android/server/am/OomAdjuster$Callback;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 91
    iput-object p5, p0, Lcom/android/server/am/ProcessStateController;->mLock:Ljava/lang/Object;

    .line 92
    iput-object p6, p0, Lcom/android/server/am/ProcessStateController;->mProcLock:Ljava/lang/Object;

    .line 93
    iput-object p7, p0, Lcom/android/server/am/ProcessStateController;->mTopChangeCallback:Ljava/util/function/Consumer;

    move-object/from16 p2, p8

    .line 94
    iput-object p2, p0, Lcom/android/server/am/ProcessStateController;->mProcessLruUpdater:Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;

    .line 95
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 96
    new-instance p3, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2, p1}, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessStateController;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;)V

    iput-object p3, p0, Lcom/android/server/am/ProcessStateController;->mServiceBinderCallUpdater:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/Consumer;Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;Lcom/android/server/am/OomAdjuster$Injector;Lcom/android/server/am/OomAdjuster$Callback;Lcom/android/server/am/ProcessStateController-IA;)V
    .registers 12

    .line 0
    invoke-direct/range {p0 .. p10}, Lcom/android/server/am/ProcessStateController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/Consumer;Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;Lcom/android/server/am/OomAdjuster$Injector;Lcom/android/server/am/OomAdjuster$Callback;)V

    return-void
.end method


# virtual methods
.method public addConnection(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;)V
    .registers 3

    .line 713
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->addConnection(Lcom/android/server/am/ConnectionRecord;)V

    return-void
.end method

.method public addExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 5

    .line 614
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/am/ContentProviderRecord;->addExternalProcessHandleLocked(Landroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method

.method public addProviderConnection(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderConnection;)V
    .registers 3

    .line 640
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProviderRecord;->addProviderConnection(Lcom/android/server/am/ContentProviderConnection;)V

    return-void
.end method

.method public addPublishedProvider(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)Z
    .registers 4

    .line 593
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 594
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProviderRecord;->hasProvider(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p0, 0x0

    return p0

    .line 595
    :cond_a
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ProcessProviderRecord;->installProvider(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    const/4 p0, 0x1

    return p0
.end method

.method public clearShortFgsInfo(Lcom/android/server/am/ServiceRecord;)V
    .registers 2

    .line 847
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearShortFgsInfo()V

    return-void
.end method

.method public final commitStagedEvents()V
    .registers 2

    .line 917
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-static {v0}, Lcom/android/server/am/ProcessStateController$GlobalState;->-$$Nest$mcommitStagedState(Lcom/android/server/am/ProcessStateController$GlobalState;)V

    .line 921
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mStagingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 922
    :goto_7
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 923
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    :cond_17
    return-void
.end method

.method public createActivityStateAsyncUpdater(Landroid/os/Looper;)Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;
    .registers 5

    .line 239
    new-instance v0, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateController;->mStagingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;-><init>(Lcom/android/server/am/ProcessStateController;Landroid/os/Looper;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/android/server/am/ProcessStateController-IA;)V

    return-object v0
.end method

.method public enqueueUpdateTarget(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 153
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public forceProcessStateUpTo(Lcom/android/server/am/ProcessRecord;I)V
    .registers 5

    .line 466
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getReportedProcState()I

    move-result v0

    if-le v0, p2, :cond_1c

    .line 468
    iget-object v1, p0, Lcom/android/server/am/ProcessStateController;->mProcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 469
    :try_start_9
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setReportedProcState(I)V

    .line 470
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurProcState(I)V

    .line 471
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawProcState(I)V

    .line 472
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/OomAdjuster;->onProcessStateChanged(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    .line 473
    monitor-exit v1

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw p0

    :cond_1c
    return-void
.end method

.method public final getBatchSession()Lcom/android/server/am/psc/SyncBatchSession;
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mBatchSession:Lcom/android/server/am/psc/SyncBatchSession;

    if-nez v0, :cond_15

    .line 133
    new-instance v0, Lcom/android/server/am/psc/SyncBatchSession;

    new-instance v1, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessStateController;)V

    new-instance v2, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ProcessStateController;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/psc/SyncBatchSession;-><init>(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController;->mBatchSession:Lcom/android/server/am/psc/SyncBatchSession;

    .line 136
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mBatchSession:Lcom/android/server/am/psc/SyncBatchSession;

    return-object p0
.end method

.method public getBoundServiceSessionFor(Lcom/android/server/am/ConnectionRecord;)Lcom/android/server/am/BoundServiceSession;
    .registers 5

    const-wide v0, 0x400000000L

    .line 247
    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->notHasFlag(J)Z

    move-result v0

    if-eqz v0, :cond_18

    const-wide v0, 0x800000000L

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->notHasFlag(J)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x0

    return-object p0

    .line 253
    :cond_18
    iget-object v0, p1, Lcom/android/server/am/ConnectionRecord;->mBoundServiceSession:Lcom/android/server/am/BoundServiceSession;

    if-eqz v0, :cond_1d

    return-object v0

    .line 256
    :cond_1d
    new-instance v0, Lcom/android/server/am/BoundServiceSession;

    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mServiceBinderCallUpdater:Ljava/util/function/BiConsumer;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 257
    invoke-virtual {p1}, Lcom/android/server/am/ConnectionRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/BoundServiceSession;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/server/am/ConnectionRecord;->mBoundServiceSession:Lcom/android/server/am/BoundServiceSession;

    return-object v0
.end method

.method public getOomAdjuster()Lcom/android/server/am/OomAdjuster;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    return-object p0
.end method

.method public final synthetic lambda$new$0(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ConnectionRecord;Ljava/lang/Boolean;)V
    .registers 4

    .line 97
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 98
    :try_start_4
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->setOngoingCalls(Z)Z

    move-result p3

    if-eqz p3, :cond_1a

    .line 99
    iget-object p2, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p2, p2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/16 p3, 0x19

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ProcessStateController;->runUpdate(Lcom/android/server/am/ProcessRecord;I)Z

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_1f

    .line 101
    :cond_1a
    :goto_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1f
    :try_start_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$new$1(Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ConnectionRecord;Ljava/lang/Boolean;)V
    .registers 6

    .line 96
    new-instance v0, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/am/ProcessStateController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessStateController;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ConnectionRecord;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public noteBroadcastDeliveryEnded(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 907
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getReceivers()Lcom/android/server/am/ProcessReceiverRecord;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->setIsReceivingBroadcast(Z)V

    .line 908
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getReceivers()Lcom/android/server/am/ProcessReceiverRecord;

    move-result-object p0

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->setBroadcastReceiverSchedGroup(I)V

    .line 911
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    return-void
.end method

.method public noteBroadcastDeliveryStarted(Lcom/android/server/am/ProcessRecord;I)V
    .registers 4

    .line 894
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getReceivers()Lcom/android/server/am/ProcessReceiverRecord;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->setIsReceivingBroadcast(Z)V

    .line 895
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getReceivers()Lcom/android/server/am/ProcessReceiverRecord;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->setBroadcastReceiverSchedGroup(I)V

    .line 898
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    return-void
.end method

.method public onCleanupApplicationRecord(Lcom/android/server/am/ProcessServiceRecord;)V
    .registers 2

    .line 806
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->onCleanupApplicationRecordLocked()V

    return-void
.end method

.method public removeAllConnections(Lcom/android/server/am/ProcessServiceRecord;)V
    .registers 2

    .line 731
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->removeAllConnections()V

    .line 732
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->removeAllSdkSandboxConnections()V

    return-void
.end method

.method public removeConnection(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;)V
    .registers 3

    .line 722
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->removeConnection(Lcom/android/server/am/ConnectionRecord;)V

    return-void
.end method

.method public removeExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)Z
    .registers 3

    .line 623
    invoke-virtual {p1, p2}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public removeLruProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 491
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mProcessLruUpdater:Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;

    invoke-interface {p0, p1}, Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public removeProviderConnection(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderConnection;)V
    .registers 3

    .line 649
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProviderRecord;->removeProviderConnection(Lcom/android/server/am/ContentProviderConnection;)Z

    return-void
.end method

.method public removePublishedProvider(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 3

    .line 604
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 605
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProviderRecord;->removeProvider(Ljava/lang/String;)V

    return-void
.end method

.method public removeUpdateTarget(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 3

    .line 161
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V

    return-void
.end method

.method public runFollowUpUpdate()V
    .registers 1

    .line 229
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController;->commitStagedEvents()V

    .line 230
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->updateOomAdjFollowUpTargetsLocked()V

    return-void
.end method

.method public runFullUpdate(I)V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mBatchSession:Lcom/android/server/am/psc/SyncBatchSession;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/am/psc/BatchSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 212
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController;->getBatchSession()Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/psc/SyncBatchSession;->setFullUpdate()V

    return-void

    .line 215
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController;->runFullUpdateImpl(I)V

    return-void
.end method

.method public final runFullUpdateImpl(I)V
    .registers 2

    .line 219
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController;->commitStagedEvents()V

    .line 220
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(I)V

    return-void
.end method

.method public runPendingUpdate(I)V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mBatchSession:Lcom/android/server/am/psc/SyncBatchSession;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/am/psc/BatchSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 195
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController;->runPendingUpdateImpl(I)V

    return-void
.end method

.method public final runPendingUpdateImpl(I)V
    .registers 2

    .line 200
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController;->commitStagedEvents()V

    .line 201
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return-void
.end method

.method public runUpdate(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mBatchSession:Lcom/android/server/am/psc/SyncBatchSession;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/am/psc/BatchSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController;->enqueueUpdateTarget(Lcom/android/server/am/ProcessRecord;)V

    const/4 p0, 0x0

    return p0

    .line 176
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessStateController;->runUpdateimpl(Lcom/android/server/am/ProcessRecord;I)Z

    move-result p0

    return p0
.end method

.method public final runUpdateimpl(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 3

    .line 181
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateController;->commitStagedEvents()V

    .line 182
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    move-result p0

    return p0
.end method

.method public setActiveInstrumentation(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)V
    .registers 3

    .line 461
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V

    return-void
.end method

.method public final setActivityStateFlags(Lcom/android/server/am/psc/ProcessRecordInternal;I)V
    .registers 3

    .line 572
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setActivityStateFlags(I)V

    return-void
.end method

.method public setAttachingProcessStatesLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 443
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->setAttachingProcessStatesLSP(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public setBackupTarget(Lcom/android/server/am/ProcessRecord;I)V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-static {v0}, Lcom/android/server/am/ProcessStateController$GlobalState;->-$$Nest$fgetmBackupTargets(Lcom/android/server/am/ProcessStateController$GlobalState;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_f

    return-void

    .line 389
    :cond_f
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-static {p0}, Lcom/android/server/am/ProcessStateController$GlobalState;->-$$Nest$fgetmBackupTargets(Lcom/android/server/am/ProcessStateController$GlobalState;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setExecServicesFg(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .registers 3

    .line 741
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->setExecServicesFg(Z)V

    return-void
.end method

.method public final setExpandedNotificationShade(Z)V
    .registers 2

    .line 344
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessStateController$GlobalState;->-$$Nest$fputmExpandedNotificationShade(Lcom/android/server/am/ProcessStateController$GlobalState;Z)V

    return-void
.end method

.method public setForcingToImportant(Lcom/android/server/am/psc/ProcessRecordInternal;Ljava/lang/Object;)V
    .registers 3

    .line 551
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getForcingToImportant()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_7

    return-void

    .line 552
    :cond_7
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setForcingToImportant(Ljava/lang/Object;)V

    return-void
.end method

.method public setForegroundServiceType(Lcom/android/server/am/psc/ServiceRecordInternal;I)V
    .registers 3

    .line 831
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ServiceRecordInternal;->setForegroundServiceType(I)V

    return-void
.end method

.method public setHasAboveClient(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .registers 3

    .line 788
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->setHasAboveClient(Z)V

    return-void
.end method

.method public final setHasActivity(Lcom/android/server/am/psc/ProcessRecordInternal;Z)V
    .registers 3

    .line 567
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setHasActivities(Z)V

    return-void
.end method

.method public setHasClientActivities(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .registers 3

    .line 762
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->setHasClientActivities(Z)V

    return-void
.end method

.method public setHasForegroundServices(Lcom/android/server/am/ProcessServiceRecord;ZIZ)V
    .registers 5

    .line 752
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/am/ProcessServiceRecord;->setHasForegroundServices(ZIZ)V

    return-void
.end method

.method public setHasOverlayUi(Lcom/android/server/am/psc/ProcessRecordInternal;Z)Z
    .registers 3

    .line 517
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasOverlayUi()Z

    move-result p0

    if-ne p0, p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 518
    :cond_8
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setHasOverlayUi(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setHasRecentTasks(Lcom/android/server/am/psc/ProcessRecordInternal;Z)V
    .registers 3

    .line 583
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setHasRecentTask(Z)V

    return-void
.end method

.method public setHasShownUi(Lcom/android/server/am/psc/ProcessRecordInternal;Z)V
    .registers 3

    .line 561
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasShownUi()Z

    move-result p0

    if-ne p0, p2, :cond_7

    return-void

    .line 562
    :cond_7
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setHasShownUi(Z)V

    return-void
.end method

.method public setHasTopUi(Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 3

    .line 502
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasTopUi()Z

    move-result p0

    if-ne p0, p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 506
    :cond_8
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setHasTopUi(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setHeavyWeightProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 366
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessStateController$GlobalState;->-$$Nest$fputmHeavyWeightProcess(Lcom/android/server/am/ProcessStateController$GlobalState;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public final setHomeProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 361
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessStateController$GlobalState;->-$$Nest$fputmHomeProcess(Lcom/android/server/am/ProcessStateController$GlobalState;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public setHostProcess(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 814
    iput-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    return-void
.end method

.method public setIsForegroundService(Lcom/android/server/am/psc/ServiceRecordInternal;Z)V
    .registers 3

    .line 822
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ServiceRecordInternal;->setIsForeground(Z)V

    return-void
.end method

.method public setIsLastMemoryLevelNormal(Z)V
    .registers 2

    .line 417
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessStateController$GlobalState;->-$$Nest$fputmIsLastMemoryLevelNormal(Lcom/android/server/am/ProcessStateController$GlobalState;Z)V

    return-void
.end method

.method public setLastProviderTime(Lcom/android/server/am/ProcessRecord;J)V
    .registers 4

    .line 631
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/psc/ProcessProviderRecordInternal;->setLastProviderTime(J)V

    return-void
.end method

.method public setLastTopAlmostPerceptibleBindRequest(Lcom/android/server/am/psc/ServiceRecordInternal;J)V
    .registers 4

    .line 874
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/psc/ServiceRecordInternal;->setLastTopAlmostPerceptibleBindRequestUptimeMs(J)V

    return-void
.end method

.method public setMaxAdj(Lcom/android/server/am/psc/ProcessRecordInternal;I)V
    .registers 3

    .line 435
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setMaxAdj(I)V

    return-void
.end method

.method public setPendingFinishAttach(Lcom/android/server/am/psc/ProcessRecordInternal;Z)V
    .registers 3

    .line 452
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setPendingFinishAttach(Z)V

    return-void
.end method

.method public final setPerceptibleTaskStoppedTimeMillis(Lcom/android/server/am/psc/ProcessRecordInternal;J)V
    .registers 4

    .line 578
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setPerceptibleTaskStoppedTimeMillis(J)V

    return-void
.end method

.method public final setPreviousProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 356
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessStateController$GlobalState;->-$$Nest$fputmPreviousProcess(Lcom/android/server/am/ProcessStateController$GlobalState;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public setRunningRemoteAnimation(Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 3

    .line 531
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isRunningRemoteAnimation()Z

    move-result p0

    if-ne p0, p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 536
    :cond_8
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setIsRunningRemoteAnimation(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setServiceLastActivityTime(Lcom/android/server/am/psc/ServiceRecordInternal;J)V
    .registers 4

    .line 856
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/psc/ServiceRecordInternal;->setLastActivity(J)V

    return-void
.end method

.method public setShortFgsInfo(Lcom/android/server/am/ServiceRecord;J)V
    .registers 4

    .line 839
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ServiceRecord;->setShortFgsInfo(J)V

    return-void
.end method

.method public setStartRequested(Lcom/android/server/am/psc/ServiceRecordInternal;Z)V
    .registers 3

    .line 864
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ServiceRecordInternal;->setStartRequested(Z)V

    return-void
.end method

.method public final setTopProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 349
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-static {v0}, Lcom/android/server/am/ProcessStateController$GlobalState;->-$$Nest$fgetmTopProcess(Lcom/android/server/am/ProcessStateController$GlobalState;)Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object v0

    if-ne v0, p1, :cond_9

    return-void

    .line 350
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-static {v0, p1}, Lcom/android/server/am/ProcessStateController$GlobalState;->-$$Nest$fputmTopProcess(Lcom/android/server/am/ProcessStateController$GlobalState;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    .line 351
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mTopChangeCallback:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTopProcessState(I)V
    .registers 2

    .line 339
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessStateController$GlobalState;->-$$Nest$fputmTopProcessState(Lcom/android/server/am/ProcessStateController$GlobalState;I)V

    return-void
.end method

.method public setTreatLikeActivity(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .registers 3

    .line 771
    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->setTreatLikeActivity(Z)V

    return-void
.end method

.method public setUidTempAllowlistStateLSP(IZ)V
    .registers 3

    .line 426
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->setUidTempAllowlistStateLSP(IZ)V

    return-void
.end method

.method public final setVisibleDozeUiProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 371
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessStateController$GlobalState;->-$$Nest$fputmShowingUiWhileDozingProcess(Lcom/android/server/am/ProcessStateController$GlobalState;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public setWakefulness(I)V
    .registers 3

    .line 379
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {p0, v0}, Lcom/android/server/am/ProcessStateController$GlobalState;->-$$Nest$fputmIsAwake(Lcom/android/server/am/ProcessStateController$GlobalState;Z)V

    return-void
.end method

.method public startBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public startExecutingService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)V
    .registers 3

    .line 686
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->startExecutingService(Lcom/android/server/am/ServiceRecord;)V

    return-void
.end method

.method public startService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)Z
    .registers 3

    .line 659
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->startService(Lcom/android/server/am/ServiceRecord;)Z

    move-result p0

    return p0
.end method

.method public startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public stopAllExecutingServices(Lcom/android/server/am/ProcessServiceRecord;)V
    .registers 2

    .line 704
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->stopAllExecutingServices()V

    return-void
.end method

.method public stopAllServices(Lcom/android/server/am/ProcessServiceRecord;)V
    .registers 2

    .line 677
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->stopAllServices()V

    return-void
.end method

.method public stopBackupTarget(I)V
    .registers 2

    .line 403
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-static {p0}, Lcom/android/server/am/ProcessStateController$GlobalState;->-$$Nest$fgetmBackupTargets(Lcom/android/server/am/ProcessStateController$GlobalState;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-void
.end method

.method public stopExecutingService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)V
    .registers 3

    .line 695
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->stopExecutingService(Lcom/android/server/am/ServiceRecord;)V

    return-void
.end method

.method public stopService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)Z
    .registers 3

    .line 668
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    move-result p0

    return p0
.end method

.method public updateHasAboveClientLocked(Lcom/android/server/am/ProcessServiceRecord;)V
    .registers 2

    .line 798
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->updateHasAboveClientLocked()V

    return-void
.end method

.method public updateHasTopStartedAlmostPerceptibleServices(Lcom/android/server/am/ProcessServiceRecord;)V
    .registers 2

    .line 884
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    return-void
.end method

.method public updateLruProcess(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 483
    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mProcessLruUpdater:Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    return-void
.end method
