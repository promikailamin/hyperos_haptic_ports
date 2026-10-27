.class public Lcom/android/server/am/ProcessRecord;
.super Lcom/android/server/am/psc/ProcessRecordInternal;
.source "ProcessRecord.java"

# interfaces
.implements Lcom/android/server/wm/WindowProcessListener;


# instance fields
.field public final appZygote:Z

.field public volatile info:Landroid/content/pm/ApplicationInfo;

.field public final mBackgroundStartPrivileges:Landroid/util/ArrayMap;

.field public mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

.field public volatile mBindApplicationTime:J

.field public volatile mBindMountPending:Z

.field public mCompat:Landroid/content/res/CompatibilityInfo;

.field public mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mDebugging:Z

.field public mDisabledCompatChanges:[J

.field public mDyingPid:I

.field public final mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

.field public mGids:[I

.field public volatile mHostingRecord:Lcom/android/server/am/HostingRecord;

.field public mInFullBackup:Z

.field public mInstr:Lcom/android/server/am/ActiveInstrumentation;

.field public mInstructionSet:Ljava/lang/String;

.field public mIsolatedEntryPointArgs:[Ljava/lang/String;

.field public mKillTime:J

.field public mLogChangeChecksToStatsD:Z

.field public mLoggableCompatChanges:[J

.field public volatile mMountMode:I

.field public mOnewayThread:Landroid/app/IApplicationThread;

.field public final mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

.field public mPendingStart:Z

.field public volatile mPersistent:Z

.field public mPid:I

.field public mPkgDeps:Landroid/util/ArraySet;

.field public final mPkgList:Lcom/android/server/am/PackageList;

.field public volatile mPredecessor:Lcom/android/server/am/ProcessRecord;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public volatile mProcessGroupCreated:Z

.field public final mProfile:Lcom/android/server/am/ProcessProfileRecord;

.field public final mProviders:Lcom/android/server/am/ProcessProviderRecord;

.field public final mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

.field public volatile mRemoved:Z

.field public mRequiredAbi:Ljava/lang/String;

.field public volatile mSeInfo:Ljava/lang/String;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mServices:Lcom/android/server/am/ProcessServiceRecord;

.field public mShortStringName:Ljava/lang/String;

.field public volatile mSkipProcessGroupCreation:Z

.field public volatile mStartElapsedTime:J

.field public mStartSeq:J

.field public volatile mStartUid:I

.field public volatile mStartUptime:J

.field public mStringName:Ljava/lang/String;

.field public volatile mSuccessor:Lcom/android/server/am/ProcessRecord;

.field public mSuccessorStartRunnable:Ljava/lang/Runnable;

.field public mThread:Lcom/android/server/am/ApplicationThreadDeferred;

.field public mUidRecord:Lcom/android/server/am/UidRecord;

.field public mUnlocked:Z

.field public mUsingWrapper:Z

.field public mWaitedForDebugger:Z

.field public volatile mWasForceStopped:Z

.field public final mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

.field public final processInfo:Landroid/content/pm/ProcessInfo;

.field public final sdkSandboxClientAppPackage:Ljava/lang/String;

.field public final sdkSandboxClientAppVolumeUuid:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$HANeJKZz4r720moq9uNElrY05J8(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 2

    .line 1517
    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz p1, :cond_9

    if-eq p1, p0, :cond_9

    .line 1518
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    :cond_9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 18

    move/from16 v0, p6

    .line 529
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-direct {p0, p3, p4, p1, v1}, Lcom/android/server/am/psc/ProcessRecordInternal;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 111
    new-instance v1, Lcom/android/server/am/PackageList;

    invoke-direct {v1, p0}, Lcom/android/server/am/PackageList;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 322
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 330
    sget-object v2, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    .line 531
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 532
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 533
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 535
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x0

    if-eqz v2, :cond_58

    if-lez v0, :cond_37

    .line 538
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getProcessesForUid(I)Landroid/util/ArrayMap;

    move-result-object p3

    if-eqz p3, :cond_44

    move-object/from16 v0, p7

    .line 539
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ProcessInfo;

    goto :goto_45

    .line 542
    :cond_37
    invoke-virtual {v2, p4}, Landroid/content/pm/PackageManagerInternal;->getProcessesForUid(I)Landroid/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 543
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ProcessInfo;

    goto :goto_45

    :cond_44
    move-object p3, v3

    :goto_45
    if-eqz p3, :cond_59

    .line 545
    iget-object v0, p3, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-nez v0, :cond_59

    iget v0, p3, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_59

    iget v0, p3, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-ne v0, v2, :cond_59

    iget v0, p3, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-ne v0, v2, :cond_59

    :cond_58
    move-object p3, v3

    .line 555
    :cond_59
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    .line 556
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    const v0, 0x15f90

    const/4 v2, 0x0

    if-lt p3, v0, :cond_70

    .line 557
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    const p4, 0x182b7

    if-gt p3, p4, :cond_70

    const/4 p3, 0x1

    goto :goto_71

    :cond_70
    move p3, v2

    :goto_71
    iput-boolean p3, p0, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    .line 558
    iput-object p5, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 559
    iget-boolean p3, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    if-eqz p3, :cond_84

    .line 560
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    if-eqz p3, :cond_81

    .line 562
    iget-object v3, p3, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    :cond_81
    iput-object v3, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    goto :goto_86

    .line 564
    :cond_84
    iput-object v3, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    .line 566
    :goto_86
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 567
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 568
    new-instance p3, Lcom/android/server/am/ProcessProfileRecord;

    invoke-direct {p3, p0}, Lcom/android/server/am/ProcessProfileRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 569
    new-instance p4, Lcom/android/server/am/ProcessServiceRecord;

    invoke-direct {p4, p0}, Lcom/android/server/am/ProcessServiceRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object p4, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 570
    new-instance p4, Lcom/android/server/am/ProcessProviderRecord;

    invoke-direct {p4, p0}, Lcom/android/server/am/ProcessProviderRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object p4, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 571
    new-instance p4, Lcom/android/server/am/ProcessReceiverRecord;

    invoke-direct {p4, p1}, Lcom/android/server/am/ProcessReceiverRecord;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object p4, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 572
    new-instance p4, Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-direct {p4, p0}, Lcom/android/server/am/ProcessErrorStateRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object p4, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 573
    new-instance v2, Lcom/android/server/wm/WindowProcessController;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget v7, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    move-object v9, p0

    move-object v8, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/WindowProcessController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILjava/lang/Object;Lcom/android/server/wm/WindowProcessListener;)V

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 577
    new-instance p1, Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-direct {p1, p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 578
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p4

    .line 579
    invoke-virtual {p3, p4, p5}, Lcom/android/server/am/ProcessProfileRecord;->init(J)V

    .line 580
    invoke-virtual {p1, p4, p5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->init(J)V

    .line 581
    invoke-super {p0, v2, p3, p4, p5}, Lcom/android/server/am/psc/ProcessRecordInternal;->init(Lcom/android/server/am/psc/ProcessRecordInternal$Observer;Lcom/android/server/am/psc/ProcessRecordInternal$StartedServiceObserver;J)V

    .line 582
    iget-object p1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance p3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-wide p4, p2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {p3, p4, p5}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v1, p1, p3}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 583
    invoke-static {p0}, Lcom/android/server/am/ProcessRecord;->updateProcessRecordNodes(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static updateProcessRecordNodes(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    const/4 v0, 0x0

    .line 591
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 592
    new-instance v2, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    invoke-direct {v2, p0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;-><init>(Lcom/android/server/am/ProcessRecord;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method


# virtual methods
.method public addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V
    .registers 5

    .line 1560
    const-string v0, "entity"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1561
    const-string v0, "backgroundStartPrivileges"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1562
    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    const-string v1, "backgroundStartPrivileges does not allow anything"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1564
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    .line 1566
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessRecord;->setBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    return-void
.end method

.method public addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z
    .registers 15

    .line 1449
    iget-object v1, p4, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1450
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_41

    .line 1451
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 1452
    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-direct {v4, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 1454
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1456
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    move-object v5, p1

    move-wide v7, p2

    move-object v3, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1458
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p0, v5, v4}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1459
    iget-object p0, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, v0, :cond_3d

    .line 1460
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_3d

    :catchall_34
    move-exception v0

    move-object p0, v0

    goto :goto_48

    :cond_37
    move-object v5, p1

    .line 1463
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p0, v5, v4}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1465
    :cond_3d
    :goto_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_34

    const/4 p0, 0x1

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_41

    return p0

    :catchall_41
    move-exception v0

    move-object p0, v0

    goto :goto_4a

    .line 1467
    :cond_44
    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_34

    .line 1468
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_41

    const/4 p0, 0x0

    return p0

    .line 1467
    :goto_48
    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_34

    :try_start_49
    throw p0

    .line 1468
    :goto_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_41

    throw p0
.end method

.method public appDied(Ljava/lang/String;)V
    .registers 4

    .line 1709
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1710
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1711
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public clearProfilerIfNeeded()V
    .registers 2

    .line 1614
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1615
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 1616
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public doEarlyCleanupIfNecessaryLocked()V
    .registers 2

    .line 603
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_d

    .line 605
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0, p0}, Lcom/android/server/am/OomAdjuster;->onProcessEndLocked(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    :cond_d
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 13

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 416
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 418
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "user #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 419
    const-string v4, " uid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 420
    iget v4, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, v5, :cond_34

    .line 421
    const-string v4, " ISOLATED uid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 423
    :cond_34
    const-string v4, " gids={"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    const-string v5, ", "

    const/4 v6, 0x0

    if-eqz v4, :cond_55

    move v4, v6

    .line 425
    :goto_41
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    array-length v7, v7

    if-ge v4, v7, :cond_55

    if-eqz v4, :cond_4b

    .line 426
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    :cond_4b
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    aget v7, v7, v4

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 431
    :cond_55
    const-string/jumbo v4, "}"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v7, :cond_d4

    .line 433
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "processInfo:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v7, v7, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v7, :cond_91

    move v7, v6

    .line 435
    :goto_6f
    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v8, v8, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_91

    .line 436
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  deny: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v8, v8, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6f

    .line 440
    :cond_91
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v7, v7, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_b3

    .line 441
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  gwpAsanMode="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v9, v9, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    :cond_b3
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v7, v7, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-eq v7, v8, :cond_d4

    .line 444
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  memtagMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v8, v8, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    :cond_d4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "mRequiredAbi="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    const-string v7, " instructionSet="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mInstructionSet:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v7, :cond_101

    .line 450
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "class="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    :cond_101
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v7, :cond_117

    .line 453
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "manageSpaceActivityName="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 454
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    :cond_117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "dir="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 458
    const-string v7, " publicDir="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 459
    const-string v7, " data="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/am/PackageList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 461
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    if-eqz v7, :cond_16e

    .line 462
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "packageDependencies={"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    :goto_150
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_16b

    if-lez v6, :cond_15d

    .line 464
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    :cond_15d
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_150

    .line 467
    :cond_16b
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    :cond_16e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "compat="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mCompat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 470
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v4, :cond_18d

    .line 471
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mInstr="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 473
    :cond_18d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "thread="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 474
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "pid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 475
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "lastActivityTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastActivityTime()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 477
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "startUpTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 479
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "startElapsedTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    invoke-static {v4, v5, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 481
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 482
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v2, :cond_1e0

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    if-eqz v2, :cond_1f8

    .line 483
    :cond_1e0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "persistent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 484
    const-string v2, " removed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 486
    :cond_1f8
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    if-eqz v2, :cond_20a

    .line 487
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDebugging="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 489
    :cond_20a
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    if-eqz v2, :cond_21c

    .line 490
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pendingStart="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 492
    :cond_21c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "startSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 493
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mountMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v2, Lcom/android/internal/os/Zygote;

    const-string v3, "MOUNT_EXTERNAL_"

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    .line 494
    invoke-static {v2, v3, v4}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v2

    if-nez v2, :cond_252

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result v2

    if-nez v2, :cond_252

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getWaitingToKill()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27a

    .line 496
    :cond_252
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "killed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 497
    const-string v2, " killedByAm="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 498
    const-string v2, " waitingToKill="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getWaitingToKill()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    :cond_27a
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_284

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    if-eqz v2, :cond_2a6

    .line 501
    :cond_284
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "isolatedEntryPoint="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "isolatedEntryPointArgs="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 503
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    :cond_2a6
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_2b3

    .line 506
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->dumpCputime(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 508
    :cond_2b3
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v2

    if-eqz v2, :cond_2cd

    .line 509
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pendingUiClean="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 511
    :cond_2cd
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 512
    invoke-super {p0, p1, p2, v0, v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 513
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 514
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 515
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 516
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessReceiverRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 517
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 518
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5

    const/4 v0, -0x1

    .line 1333
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 8

    .line 1337
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 1338
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000002L

    .line 1339
    iget-object v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1341
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_4a

    const-wide v0, 0x10500000004L

    .line 1342
    iget v2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1343
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const-wide v1, 0x10500000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1345
    :cond_4a
    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_60

    .line 1346
    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const-wide v1, 0x10500000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_60
    const-wide v0, 0x10800000007L

    .line 1348
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    if-ltz p4, :cond_74

    const-wide v0, 0x10500000008L

    .line 1350
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1352
    :cond_74
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public forEachConnectionHost(Ljava/util/function/Consumer;)V
    .registers 4

    .line 1767
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1768
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v1

    .line 1769
    iget-object v1, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1770
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1772
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfSdkSandboxConnections()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_24
    if-ltz v0, :cond_38

    .line 1773
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessServiceRecord;->getSdkSandboxConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v1

    .line 1774
    iget-object v1, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1775
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 1777
    :cond_38
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_40
    if-ltz v0, :cond_52

    .line 1778
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v1

    .line 1779
    iget-object v1, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1780
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_40

    :cond_52
    return-void
.end method

.method public getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;
    .registers 1

    .line 953
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    return-object p0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 1

    .line 1190
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public getApplicationUid()I
    .registers 1

    .line 1161
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public getBackgroundStartPrivileges()Landroid/app/BackgroundStartPrivileges;
    .registers 5

    .line 1577
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1578
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    if-nez v1, :cond_2a

    .line 1580
    sget-object v1, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    .line 1581
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_13
    if-ltz v1, :cond_2a

    .line 1582
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 1584
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackgroundStartPrivileges;

    .line 1583
    invoke-virtual {v2, v3}, Landroid/app/BackgroundStartPrivileges;->merge(Landroid/app/BackgroundStartPrivileges;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :catchall_28
    move-exception p0

    goto :goto_2e

    .line 1587
    :cond_2a
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    monitor-exit v0

    return-object p0

    .line 1588
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_28

    throw p0
.end method

.method public getBindApplicationTime()J
    .registers 3

    .line 842
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mBindApplicationTime:J

    return-wide v0
.end method

.method public getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;
    .registers 8

    .line 988
    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 993
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 994
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    const/16 v5, 0x3e8

    iget v6, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    .line 989
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getClientInfoForSdkSandbox called for non-sandbox process"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompat()Landroid/content/res/CompatibilityInfo;
    .registers 1

    .line 885
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mCompat:Landroid/content/res/CompatibilityInfo;

    return-object p0
.end method

.method public getCpuDelayTime()J
    .registers 3

    .line 1681
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppProfiler;->getCpuDelayTimeForPid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCpuTime()J
    .registers 3

    .line 1677
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppProfiler;->getCpuTimeForPid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeathRecipient()Landroid/os/IBinder$DeathRecipient;
    .registers 1

    .line 938
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public getDisabledCompatChanges()[J
    .registers 1

    .line 895
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    return-object p0
.end method

.method public getDyingPid()I
    .registers 1

    .line 735
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    return p0
.end method

.method public getHostingRecord()Lcom/android/server/am/HostingRecord;
    .registers 1

    .line 809
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    return-object p0
.end method

.method public getInputDispatchingTimeoutMillis()J
    .registers 3

    .line 1734
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsolatedEntryPointArgs()[Ljava/lang/String;
    .registers 1

    .line 1038
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public getKillTime()J
    .registers 3

    .line 964
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mKillTime:J

    return-wide v0
.end method

.method public getLastPss()J
    .registers 3

    .line 1176
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRss()J
    .registers 3

    .line 1181
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getLastRss()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLoggableCompatChanges()[J
    .registers 1

    .line 900
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mLoggableCompatChanges:[J

    return-object p0
.end method

.method public getLruProcessList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 1751
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getMountMode()I
    .registers 1

    .line 858
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    return p0
.end method

.method public getOnewayThread()Landroid/app/IApplicationThread;
    .registers 1

    .line 688
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public getPackageListWithVersionCode()Ljava/util/List;
    .registers 1

    .line 1546
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 1166
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPid()I
    .registers 1

    .line 643
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    return p0
.end method

.method public getPkgDeps()Landroid/util/ArraySet;
    .registers 1

    .line 632
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getPkgList()Lcom/android/server/am/PackageList;
    .registers 1

    .line 627
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    return-object p0
.end method

.method public getProcessClassEnum()I
    .registers 3

    .line 1738
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_8

    const/4 p0, 0x3

    return p0

    .line 1741
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 1744
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_18

    const/4 p0, 0x2

    return p0

    :cond_18
    return v0
.end method

.method public getProcessPackageNames()[Ljava/lang/String;
    .registers 1

    .line 1542
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProviders()Lcom/android/server/am/ProcessProviderRecord;
    .registers 1

    .line 1120
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    return-object p0
.end method

.method public bridge synthetic getProviders()Lcom/android/server/am/psc/ProcessProviderRecordInternal;
    .registers 1

    .line 85
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getProviders()Lcom/android/server/am/ProcessProviderRecord;

    move-result-object p0

    return-object p0
.end method

.method public getReceivers()Lcom/android/server/am/ProcessReceiverRecord;
    .registers 1

    .line 1125
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    return-object p0
.end method

.method public bridge synthetic getReceivers()Lcom/android/server/am/psc/ProcessReceiverRecordInternal;
    .registers 1

    .line 85
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getReceivers()Lcom/android/server/am/ProcessReceiverRecord;

    move-result-object p0

    return-object p0
.end method

.method public getRss(I)J
    .registers 2

    .line 1261
    invoke-static {p1}, Landroid/os/Process;->getRss(I)[J

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1262
    array-length p1, p0

    if-lez p1, :cond_d

    const/4 p1, 0x0

    aget-wide p0, p0, p1

    return-wide p0

    :cond_d
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getSeInfo()Ljava/lang/String;
    .registers 1

    .line 817
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mSeInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getServices()Lcom/android/server/am/ProcessServiceRecord;
    .registers 1

    .line 1115
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    return-object p0
.end method

.method public bridge synthetic getServices()Lcom/android/server/am/psc/ProcessServiceRecordInternal;
    .registers 1

    .line 85
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getServices()Lcom/android/server/am/ProcessServiceRecord;

    move-result-object p0

    return-object p0
.end method

.method public getStartElapsedTime()J
    .registers 3

    .line 838
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    return-wide v0
.end method

.method public getStartSeq()J
    .registers 3

    .line 800
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .line 834
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    return-wide v0
.end method

.method public getStartUid()I
    .registers 1

    .line 850
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    return p0
.end method

.method public getStartUptime()J
    .registers 3

    .line 825
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    return-wide v0
.end method

.method public getThread()Landroid/app/IApplicationThread;
    .registers 1

    .line 664
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    return-object p0
.end method

.method public getUidRecord()Lcom/android/server/am/UidRecord;
    .registers 1

    .line 618
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    return-object p0
.end method

.method public bridge synthetic getUidRecord()Lcom/android/server/am/psc/UidRecordInternal;
    .registers 1

    .line 85
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object p0

    return-object p0
.end method

.method public getWindowProcessController()Lcom/android/server/wm/WindowProcessController;
    .registers 1

    .line 1550
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method public hasActiveInstrumentation()Z
    .registers 1

    .line 959
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasActivities()Z
    .registers 1

    .line 1058
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result p0

    return p0
.end method

.method public hasActivitiesOrRecentTasks()Z
    .registers 1

    .line 1185
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivitiesOrRecentTasks()Z

    move-result p0

    return p0
.end method

.method public hasCompatChange(I)Z
    .registers 4

    .line 1109
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/am/OomAdjuster;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    return p0
.end method

.method public hasRecentTasks()Z
    .registers 1

    .line 1083
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasRecentTasks()Z

    move-result p0

    return p0
.end method

.method public hasWaitedForDebugger()Z
    .registers 1

    .line 1017
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mWaitedForDebugger:Z

    return p0
.end method

.method public isBindMountPending()Z
    .registers 1

    .line 866
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mBindMountPending:Z

    return p0
.end method

.method public isDebuggable()Z
    .registers 4

    .line 999
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 1002
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    .line 1003
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 1004
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1c

    return v1

    :cond_1c
    return v2
.end method

.method public isDebugging()Z
    .registers 1

    .line 983
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    return p0
.end method

.method public isFreezable()Z
    .registers 1

    .line 1763
    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->getFreezePolicy(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result p0

    return p0
.end method

.method public isFrozen()Z
    .registers 1

    .line 1130
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result p0

    return p0
.end method

.method public isInFullBackup()Z
    .registers 1

    .line 1048
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mInFullBackup:Z

    return p0
.end method

.method public isInstantApp()Z
    .registers 1

    .line 1171
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p0

    return p0
.end method

.method public isInterestingToUserLocked()Z
    .registers 2

    .line 1218
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInterestingToUser()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 1222
    :cond_a
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result p0

    return p0
.end method

.method public isLogChangeChecksToStatsD()Z
    .registers 1

    .line 905
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mLogChangeChecksToStatsD:Z

    return p0
.end method

.method public isPendingFreeze()Z
    .registers 1

    .line 1135
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result p0

    return p0
.end method

.method public isPendingStart()Z
    .registers 1

    .line 785
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    return p0
.end method

.method public isPersistent()Z
    .registers 1

    .line 780
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    return p0
.end method

.method public isProcessRunning()Z
    .registers 1

    .line 670
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isRemoved()Z
    .registers 1

    .line 974
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    return p0
.end method

.method public isThreadReady()Z
    .registers 2

    .line 795
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isPendingFinishAttach()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isUnlocked()Z
    .registers 1

    .line 875
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mUnlocked:Z

    return p0
.end method

.method public isUsingWrapper()Z
    .registers 1

    .line 1027
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    return p0
.end method

.method public killLocked(Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .registers 15

    .line 1269
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_121

    const-wide/16 v0, 0x40

    .line 1270
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "kill/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_35
    const/4 v2, 0x6

    if-ne p3, v2, :cond_5a

    .line 1274
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1275
    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getAnrAnnotation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 1276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessErrorStateRecord;->getAnrAnnotation()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1278
    :cond_5a
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_9e

    if-nez p5, :cond_6a

    iget-object p5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p5, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    if-ne p5, v2, :cond_9e

    .line 1279
    :cond_6a
    iget-object p5, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Killing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (adj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1279
    invoke-virtual {p5, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1284
    :cond_9e
    iget-object p5, p0, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p5

    .line 1285
    :try_start_a4
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    .line 1286
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFrozen(Z)V

    .line 1287
    monitor-exit p5
    :try_end_b0
    .catchall {:try_start_a4 .. :try_end_b0} :catchall_11a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1288
    iget p5, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-lez p5, :cond_f1

    .line 1289
    iget-object p5, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p5, p5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p5, p0, p3, p4, p2}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 1290
    iget p2, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    .line 1291
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p2, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p2, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessRecord;->getRss(I)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v6, p1

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x7547

    .line 1290
    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1292
    iget p1, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {p1}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 1293
    invoke-virtual {p0, p6, v6}, Lcom/android/server/am/ProcessRecord;->killProcessGroupIfNecessaryLocked(ZLjava/lang/String;)V

    goto :goto_f3

    .line 1295
    :cond_f1
    iput-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 1297
    :goto_f3
    iget-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez p1, :cond_116

    .line 1298
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p1

    const/4 p2, 0x1

    .line 1299
    :try_start_fe
    invoke-virtual {p0, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setKilled(Z)V

    .line 1300
    invoke-virtual {p0, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setKilledByAm(Z)V

    .line 1301
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/am/ProcessRecord;->mKillTime:J

    .line 1302
    monitor-exit p1
    :try_end_10b
    .catchall {:try_start_fe .. :try_end_10b} :catchall_10f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_116

    :catchall_10f
    move-exception v0

    move-object p0, v0

    :try_start_111
    monitor-exit p1
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_10f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 1304
    :cond_116
    :goto_116
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_11a
    move-exception v0

    move-object p0, v0

    .line 1287
    :try_start_11c
    monitor-exit p5
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_11a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_121
    return-void
.end method

.method public killProcessGroupIfNecessaryLocked(ZLjava/lang/String;)V
    .registers 5

    .line 1311
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 1312
    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1313
    :cond_15
    monitor-enter p0

    .line 1314
    :try_start_16
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    if-nez v0, :cond_1f

    .line 1317
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mSkipProcessGroupCreation:Z

    goto :goto_1f

    :catchall_1d
    move-exception p1

    goto :goto_22

    .line 1319
    :cond_1f
    :goto_1f
    monitor-exit p0

    move v1, v0

    goto :goto_24

    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_1d

    throw p1

    :cond_24
    :goto_24
    if-eqz v1, :cond_38

    if-nez p1, :cond_31

    .line 1325
    iget p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    sget v1, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {p1, v0, v1}, Landroid/os/Process;->sendSignalToProcessGroup(III)Z

    .line 1327
    :cond_31
    iget p1, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {p1, p0, p2}, Lcom/android/server/am/ProcessList;->killProcessGroup(IILjava/lang/String;)V

    :cond_38
    return-void
.end method

.method public makeActive(Lcom/android/server/am/ApplicationThreadDeferred;Lcom/android/server/am/ProcessStatsService;)V
    .registers 4

    .line 694
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->onProcessActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V

    .line 695
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    .line 696
    iget p1, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    if-ne p1, p2, :cond_1d

    .line 697
    new-instance p1, Lcom/android/server/am/SameProcessApplicationThread;

    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/android/server/am/SameProcessApplicationThread;-><init>(Landroid/app/IApplicationThread;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    goto :goto_21

    .line 699
    :cond_1d
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    .line 701
    :goto_21
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 702
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->useFifoUiScheduling()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 703
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mSpecifiedFifoProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .registers 5

    .line 1357
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v0

    .line 1358
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjTarget()Ljava/lang/Object;

    move-result-object p0

    if-nez v0, :cond_e

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 1363
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x20

    .line 1364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1365
    instance-of v2, p0, Landroid/content/ComponentName;

    const-string/jumbo v3, "{null}"

    if-eqz v2, :cond_2b

    .line 1366
    check-cast p0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_2b
    if-eqz p0, :cond_31

    .line 1368
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 1370
    :cond_31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    :goto_34
    const-string p0, "<="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    instance-of p0, v0, Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_52

    .line 1374
    const-string p0, "Proc{"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b

    :cond_52
    if-eqz v0, :cond_58

    .line 1378
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5b

    .line 1380
    :cond_58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    :goto_5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .registers 4

    const/4 v0, 0x0

    .line 709
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    .line 710
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    .line 711
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 712
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->useFifoUiScheduling()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 713
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSpecifiedFifoProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 715
    :cond_19
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->onProcessInactive(Lcom/android/server/am/ProcessStatsService;)V

    return-void
.end method

.method public notifyTopProcChanged()V
    .registers 1

    .line 730
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    return-void
.end method

.method public onCleanupApplicationRecordLSP(Lcom/android/server/am/ProcessStatsService;ZZ)Z
    .registers 5

    .line 1196
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->onCleanupApplicationRecordLSP()V

    .line 1198
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->resetPackageList(Lcom/android/server/am/ProcessStatsService;)V

    if-eqz p3, :cond_d

    .line 1200
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 1202
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->makeInactive(Lcom/android/server/am/ProcessStatsService;)V

    const/4 p1, 0x0

    .line 1203
    invoke-virtual {p0, p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->setWaitingToKill(Ljava/lang/String;)V

    .line 1205
    invoke-super {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->onCleanupApplicationRecordLSP()V

    .line 1206
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object p3, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1, p3}, Lcom/android/server/am/ProcessStateController;->onCleanupApplicationRecord(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 1207
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessReceiverRecord;->onCleanupApplicationRecordLocked()V

    .line 1208
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p1, p0}, Lcom/android/server/am/OomAdjuster;->onProcessEndLocked(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    .line 1210
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProviderRecord;->onCleanupApplicationRecordLocked(Z)Z

    move-result p0

    return p0
.end method

.method public onProcessFrozen()V
    .registers 2

    .line 1473
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->onProcessFrozen()V

    .line 1475
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1476
    :try_start_b
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    .line 1477
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p0, :cond_16

    .line 1479
    invoke-virtual {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->onProcessPaused()V

    :cond_16
    return-void

    :catchall_17
    move-exception p0

    .line 1477
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onProcessFrozenCancelled()V
    .registers 3

    .line 1495
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1496
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    .line 1497
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v1, :cond_11

    .line 1499
    invoke-virtual {v1}, Lcom/android/server/am/ApplicationThreadDeferred;->onProcessPausedCancelled()V

    .line 1500
    :cond_11
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->onProcessFrozenCancelled()V

    return-void

    :catchall_17
    move-exception p0

    .line 1497
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onProcessUnfrozen()V
    .registers 3

    .line 1484
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1485
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    .line 1486
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v1, :cond_11

    .line 1488
    invoke-virtual {v1}, Lcom/android/server/am/ApplicationThreadDeferred;->onProcessUnpaused()V

    .line 1489
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->onProcessUnfrozen()V

    .line 1490
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->onProcessUnfrozen()V

    return-void

    :catchall_1c
    move-exception p0

    .line 1486
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onStartActivity(IZLjava/lang/String;J)V
    .registers 8

    .line 1687
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 1688
    :try_start_7
    invoke-virtual {p0, v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->setWaitingToKill(Ljava/lang/String;)V

    if-eqz p2, :cond_21

    .line 1690
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object p2, p2, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1f

    .line 1691
    :try_start_13
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v1, p0}, Lcom/android/server/am/AppProfiler;->setProfileProcLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1692
    monitor-exit p2

    goto :goto_21

    :catchall_1c
    move-exception p0

    monitor-exit p2
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw p0

    :catchall_1f
    move-exception p0

    goto :goto_45

    :cond_21
    :goto_21
    if-eqz p3, :cond_2a

    .line 1695
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p0, p3, p4, p5, p2}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    :cond_2a
    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 1699
    invoke-virtual {p0, p2, p3, p3}, Lcom/android/server/am/ProcessRecord;->updateProcessInfo(ZZZ)V

    .line 1701
    invoke-virtual {p0, p3}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1702
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p2, p0, p3}, Lcom/android/server/am/ProcessStateController;->setHasShownUi(Lcom/android/server/am/psc/ProcessRecordInternal;Z)V

    .line 1703
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/ProcessStateController;->forceProcessStateUpTo(Lcom/android/server/am/ProcessRecord;I)V

    .line 1704
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_45
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeBackgroundStartPrivileges(Landroid/os/Binder;)V
    .registers 3

    .line 1570
    const-string v0, "entity"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1571
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    const/4 v0, 0x0

    .line 1572
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessRecord;->setBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    return-void
.end method

.method public resetCrashingOnRestart()V
    .registers 2

    .line 612
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    return-void
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1507
    iget-object v8, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1508
    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v9

    .line 1509
    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    monitor-enter v15
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_85

    .line 1510
    :try_start_10
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v9, :cond_69

    .line 1512
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1514
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v11

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v4}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v14

    const/4 v10, -0x1

    .line 1513
    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    if-eq v2, v3, :cond_82

    .line 1516
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    new-instance v3, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;

    invoke-direct {v3, v9}, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V

    .line 1521
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->clear()V

    .line 1522
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v3, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 1524
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v7, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1526
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1527
    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, v9, :cond_82

    .line 1528
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_82

    :catchall_67
    move-exception v0

    goto :goto_87

    :cond_69
    if-eq v2, v3, :cond_82

    .line 1532
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v1}, Lcom/android/server/am/PackageList;->clear()V

    .line 1533
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1536
    :cond_82
    :goto_82
    monitor-exit v15
    :try_end_83
    .catchall {:try_start_10 .. :try_end_83} :catchall_67

    .line 1537
    :try_start_83
    monitor-exit v8
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_85

    return-void

    :catchall_85
    move-exception v0

    goto :goto_89

    .line 1536
    :goto_87
    :try_start_87
    monitor-exit v15
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_67

    :try_start_88
    throw v0

    .line 1537
    :goto_89
    monitor-exit v8
    :try_end_8a
    .catchall {:try_start_88 .. :try_end_8a} :catchall_85

    throw v0
.end method

.method public scheduleCrashLocked(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 1240
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v0, :cond_4e

    .line 1241
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 1242
    const-string p0, "ActivityManager"

    const-string/jumbo p1, "scheduleCrash: trying to crash system process!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1245
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1247
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-virtual {v2, p1, p2, p3}, Landroid/app/IApplicationThread$Delegator;->scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_2a
    .catchall {:try_start_1f .. :try_end_24} :catchall_28

    .line 1254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_28
    move-exception p0

    goto :goto_4a

    .line 1251
    :catch_2a
    :try_start_2a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "scheduleCrash for \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IZ)V
    :try_end_46
    .catchall {:try_start_2a .. :try_end_46} :catchall_28

    .line 1254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    throw p0

    :cond_4e
    return-void
.end method

.method public setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V
    .registers 6

    .line 943
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    move v2, v0

    .line 945
    :goto_9
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_10

    .line 947
    iget v3, p1, Lcom/android/server/am/ActiveInstrumentation;->mSourceUid:I

    goto :goto_11

    :cond_10
    const/4 v3, -0x1

    :goto_11
    if-eqz v2, :cond_18

    iget-boolean p1, p1, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    if-eqz p1, :cond_18

    move v0, v1

    .line 945
    :cond_18
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/wm/WindowProcessController;->setInstrumenting(ZIZ)V

    return-void
.end method

.method public final setBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V
    .registers 5

    .line 1593
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    monitor-enter v0

    if-nez p2, :cond_10

    .line 1596
    :try_start_5
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1d

    goto :goto_1a

    :catchall_e
    move-exception p0

    goto :goto_1f

    .line 1598
    :cond_10
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 1599
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/BackgroundStartPrivileges;

    if-eq p2, p1, :cond_1d

    :goto_1a
    const/4 p1, 0x0

    .line 1607
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    .line 1609
    :cond_1d
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_e

    throw p0
.end method

.method public setBindApplicationTime(J)V
    .registers 3

    .line 846
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mBindApplicationTime:J

    return-void
.end method

.method public setBindMountPending(Z)V
    .registers 2

    .line 870
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mBindMountPending:Z

    return-void
.end method

.method public setCompat(Landroid/content/res/CompatibilityInfo;)V
    .registers 2

    .line 890
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mCompat:Landroid/content/res/CompatibilityInfo;

    return-void
.end method

.method public setDeathRecipient(Landroid/os/IBinder$DeathRecipient;)V
    .registers 2

    .line 933
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public setDebugging(Z)V
    .registers 2

    .line 1011
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    .line 1012
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setDebugging(Z)V

    return-void
.end method

.method public setDisabledCompatChanges([J)V
    .registers 2

    .line 910
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    return-void
.end method

.method public setDyingPid(I)V
    .registers 2

    .line 740
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    return-void
.end method

.method public setGids([I)V
    .registers 2

    .line 750
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    return-void
.end method

.method public setInFullBackup(Z)V
    .registers 2

    .line 1053
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mInFullBackup:Z

    return-void
.end method

.method public setInstructionSet(Ljava/lang/String;)V
    .registers 2

    .line 771
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mInstructionSet:Ljava/lang/String;

    return-void
.end method

.method public setIsolatedEntryPointArgs([Ljava/lang/String;)V
    .registers 2

    .line 1043
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    return-void
.end method

.method public setLastCpuTime(J)V
    .registers 3

    .line 1633
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public setLogChangeChecksToStatsD(Z)V
    .registers 2

    .line 920
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mLogChangeChecksToStatsD:Z

    return-void
.end method

.method public setLoggableCompatChanges([J)V
    .registers 2

    .line 915
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mLoggableCompatChanges:[J

    return-void
.end method

.method public setMountMode(I)V
    .registers 2

    .line 862
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    return-void
.end method

.method public setPendingStart(Z)V
    .registers 2

    .line 790
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    return-void
.end method

.method public setPendingUiClean(Z)V
    .registers 3

    .line 1638
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 1639
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->setPendingUiClean(Z)V

    .line 1640
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public setPendingUiCleanAndForceProcessStateUpTo(I)V
    .registers 4

    .line 1645
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x1

    .line 1646
    :try_start_7
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1647
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/am/ProcessStateController;->forceProcessStateUpTo(Lcom/android/server/am/ProcessRecord;I)V

    .line 1648
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setPersistent(Z)V
    .registers 2

    .line 775
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 776
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setPersistent(Z)V

    return-void
.end method

.method public setPid(I)V
    .registers 3

    .line 650
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-eq p1, v0, :cond_a

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 651
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->setWasForceStopped(Z)V

    .line 653
    :cond_a
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 654
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setPid(I)V

    const/4 v0, 0x0

    .line 655
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    .line 656
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    .line 657
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->setPid(I)V

    .line 659
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw p0
.end method

.method public setPkgDeps(Landroid/util/ArraySet;)V
    .registers 2

    .line 637
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    return-void
.end method

.method public setProcessStateToThread(I)V
    .registers 2

    .line 676
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez p0, :cond_5

    goto :goto_8

    .line 681
    :cond_5
    :try_start_5
    invoke-virtual {p0, p1}, Landroid/app/IApplicationThread$Delegator;->setProcessState(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_8

    :catch_8
    :goto_8
    return-void
.end method

.method public setRemoved(Z)V
    .registers 2

    .line 978
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    return-void
.end method

.method public setRequiredAbi(Ljava/lang/String;)V
    .registers 2

    .line 760
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    .line 761
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setRequiredAbi(Ljava/lang/String;)V

    return-void
.end method

.method public setRunningRemoteAnimation(Z)V
    .registers 4

    .line 1716
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 1717
    const-string p0, "ActivityManager"

    const-string/jumbo p1, "system can\'t run remote animation"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1720
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1721
    :try_start_17
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/am/ProcessStateController;->setRunningRemoteAnimation(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 1727
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 v1, 0x9

    invoke-virtual {p1, p0, v1}, Lcom/android/server/am/ProcessStateController;->runUpdate(Lcom/android/server/am/ProcessRecord;I)Z

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_32

    .line 1730
    :cond_2d
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_32
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setShouldNotFreeze(ZZII)Z
    .registers 5

    .line 1146
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(ZZII)Z

    move-result p0

    return p0
.end method

.method public setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;JJ)V
    .registers 8

    .line 406
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    .line 407
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 408
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->mSeInfo:Ljava/lang/String;

    .line 409
    iput-wide p4, p0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    .line 410
    iput-wide p6, p0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    return-void
.end method

.method public setStartSeq(J)V
    .registers 3

    .line 805
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    return-void
.end method

.method public setUidRecord(Lcom/android/server/am/UidRecord;)V
    .registers 2

    .line 623
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    return-void
.end method

.method public setUnlocked(Z)V
    .registers 2

    .line 880
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mUnlocked:Z

    return-void
.end method

.method public setUsingWrapper(Z)V
    .registers 2

    .line 1032
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    .line 1033
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setUsingWrapper(Z)V

    return-void
.end method

.method public setWaitedForDebugger(Z)V
    .registers 2

    .line 1022
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mWaitedForDebugger:Z

    return-void
.end method

.method public setWasForceStopped(Z)V
    .registers 2

    .line 1755
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mWasForceStopped:Z

    return-void
.end method

.method public shouldNotFreeze()Z
    .registers 1

    .line 1140
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result p0

    return p0
.end method

.method public shouldNotFreezeAdjSeq()I
    .registers 1

    .line 1156
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeAdjSeq()I

    move-result p0

    return p0
.end method

.method public shouldNotFreezeReason()I
    .registers 1

    .line 1151
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result p0

    return p0
.end method

.method public toDetailedString()Ljava/lang/String;
    .registers 5

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1437
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1438
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 1439
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1440
    const-string v3, "  "

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ProcessRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 1387
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 1391
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1392
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 1393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .registers 5

    .line 1397
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    .line 1398
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1399
    iget-object v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    .line 1400
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1401
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_22

    .line 1402
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void

    :cond_22
    const/16 v0, 0x75

    .line 1404
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1405
    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1406
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-lt v0, v1, :cond_40

    const/16 v2, 0x61

    .line 1408
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v1

    .line 1409
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_48

    :cond_40
    const/16 v1, 0x73

    .line 1411
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1412
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1414
    :goto_48
    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_62

    const/16 v0, 0x69

    .line 1415
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1416
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const v0, 0x182b8

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1422
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 1426
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1427
    const-string v1, "ProcessRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 1429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1430
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    const/16 v1, 0x7d

    .line 1431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1432
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    return-object v0
.end method

.method public unlinkDeathRecipient()V
    .registers 4

    .line 925
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v0, :cond_12

    .line 926
    invoke-virtual {v0}, Lcom/android/server/am/ApplicationThreadDeferred;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_12
    const/4 v0, 0x0

    .line 928
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public updateProcessInfo(ZZZ)V
    .registers 6

    .line 1654
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    if-eqz p1, :cond_14

    .line 1656
    :try_start_8
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_30

    .line 1658
    :cond_14
    :goto_14
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez p1, :cond_1d

    .line 1662
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1664
    :cond_1d
    :try_start_1d
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, p2, v1}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    if-eqz p3, :cond_2b

    .line 1666
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    .line 1668
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateServiceConnectionActivities()V
    .registers 3

    .line 1621
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1622
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 1623
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public useFifoUiScheduling()Z
    .registers 3

    .line 723
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-nez v1, :cond_15

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mAllowSpecifiedFifoScheduling:Z

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 725
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->useFifoUiScheduling()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public wasForceStopped()Z
    .registers 1

    .line 1759
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mWasForceStopped:Z

    return p0
.end method
