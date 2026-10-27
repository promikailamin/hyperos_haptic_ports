.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"

# interfaces
.implements Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;


# static fields
.field static final NETWORK_STATE_BLOCK:I = 0x1

.field static final NETWORK_STATE_NO_CHANGE:I = 0x0

.field static final NETWORK_STATE_UNBLOCK:I = 0x2

.field public static final PAGE_SIZE:I

.field public static final PREVIOUS_APP_MAX_ADJ:I = 0x2bc

.field public static final VISIBLE_APP_MAX_ADJ:I = 0x64

.field public static final sFirstAsleepPssTimes:[J

.field public static final sFirstAwakePssTimes:[J

.field public static sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field public static sKillThread:Lcom/android/server/ServiceThread;

.field public static sLmkdConnection:Lcom/android/server/am/LmkdConnection;

.field public static sOomConnection:Lcom/android/server/am/OomConnection;

.field public static final sProcStateToProcMem:[I

.field public static final sSameAsleepPssTimes:[J

.field public static final sSameAwakePssTimes:[J

.field public static final sTestFirstPssTimes:[J

.field public static final sTestSamePssTimes:[J


# instance fields
.field public mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

.field public mActiveUids:Lcom/android/server/am/ActiveUids;

.field public mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

.field public mAppDataIsolationEnabled:Z

.field public final mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

.field mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

.field public final mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

.field public final mAppZygoteProcesses:Landroid/util/ArrayMap;

.field public final mAppZygotes:Lcom/android/internal/app/ProcessMap;

.field public final mAppsInBackgroundRestricted:Landroid/util/ArraySet;

.field public final mAvailProcessChanges:Ljava/util/ArrayList;

.field public mCachedRestoreLevel:J

.field public final mDyingProcesses:Lcom/android/internal/app/ProcessMap;

.field mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

.field public mHaveDisplaySize:Z

.field public mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

.field public final mIsolatedProcesses:Landroid/util/SparseArray;

.field public mLruProcessActivityStart:I

.field public mLruProcessServiceStart:I

.field public final mLruProcesses:Ljava/util/ArrayList;

.field public mLruSeq:I

.field public final mOomAdj:[I

.field public mOomLevelsSet:Z

.field public final mOomMinFree:[I

.field public final mOomMinFreeHigh:[I

.field public final mOomMinFreeLow:[I

.field public final mPendingProcessChanges:Ljava/util/ArrayList;

.field public final mPendingStarts:Landroid/util/LongSparseArray;

.field public mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public mProcStartSeqCounter:J

.field volatile mProcStateSeqCounter:J

.field public final mProcessChangeLock:Ljava/lang/Object;

.field public mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

.field public final mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

.field public final mProcessObservers:Landroid/os/RemoteCallbackList;

.field public final mRemovedProcesses:Ljava/util/ArrayList;

.field public final mSdkSandboxes:Landroid/util/SparseArray;

.field public mService:Lcom/android/server/am/ActivityManagerService;

.field public final mStringBuilder:Ljava/lang/StringBuilder;

.field public mSystemServerSocketForZygote:Landroid/net/LocalSocket;

.field public final mTotalMemMb:J

.field public mVoldAppDataIsolationEnabled:Z

.field public final mZygoteSigChldMessage:[I

.field public final mZygoteUnsolicitedMessage:[B


# direct methods
.method public static synthetic $r8$lambda$2XBtZ9egx9zXIMDRiVKFIv7scNQ(Lcom/android/server/am/ProcessList;Ljava/lang/String;ZJLcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/ProcessList;->lambda$updateBackgroundRestrictedForUidPackageLocked$4(Ljava/lang/String;ZJLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3Aeowc7Aa0A47bbOcoIMPuNZ44Y(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->lambda$startProcessLocked$0(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$3aT8AjDesFyouy4iqaLN2hUmayA(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->lambda$handleProcessStart$1(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$CC7yn4e5nUPqzC8siIAeG5XlMLQ(Lcom/android/server/am/ProcessList;JLcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ProcessList;->lambda$killAppIfBgRestrictedAndCachedIdleLocked$5(JLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JNHuPiwSzts8mouEo9gde_DuUw8(ZLjava/util/List;Landroid/util/ArrayMap;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 6

    if-nez p0, :cond_8

    .line 5257
    invoke-interface {p1, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 5259
    :cond_8
    :try_start_8
    invoke-virtual {p2, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_3a

    .line 5261
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p2, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 5262
    iput-object p0, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 5263
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 5264
    invoke-static {}, Lcom/android/server/am/psc/PlatformCompatCache;->getInstance()Lcom/android/server/am/psc/PlatformCompatCache;

    move-result-object p1

    .line 5265
    invoke-virtual {p1, p0}, Lcom/android/server/am/psc/PlatformCompatCache;->onApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 5267
    :cond_2c
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 5268
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_3a} :catch_3b

    :cond_3a
    return-void

    .line 5271
    :catch_3b
    const-string p0, "Failed to update %s ApplicationInfo for %s"

    filled-new-array {p5, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$ZYt6n6XX38j0SShKv2A3vlz2hk4(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 2

    .line 3184
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    iget p1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_2hhy3f6tCYNbqfLdggq9vFVtX4(Lcom/android/server/am/ProcessList;Ljava/io/FileDescriptor;I)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessList;->handleZygoteMessages(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandlePredecessorProcDied(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->handlePredecessorProcDied(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsLmkdConnection()Lcom/android/server/am/LmkdConnection;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 302
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    const/4 v0, 0x0

    .line 405
    sput-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 406
    sput-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 436
    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 438
    sput-object v0, Lcom/android/server/am/ProcessList;->sOomConnection:Lcom/android/server/am/OomConnection;

    const/16 v0, 0x14

    .line 1381
    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    const/4 v0, 0x5

    .line 1404
    new-array v1, v0, [J

    fill-array-data v1, :array_74

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 1412
    new-array v1, v0, [J

    fill-array-data v1, :array_8c

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 1420
    new-array v1, v0, [J

    fill-array-data v1, :array_a4

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 1428
    new-array v1, v0, [J

    fill-array-data v1, :array_bc

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 1436
    new-array v1, v0, [J

    fill-array-data v1, :array_d4

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 1444
    new-array v0, v0, [J

    fill-array-data v0, :array_ec

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    return-void

    nop

    :array_48
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_74
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_8c
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_a4
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_bc
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_d4
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_ec
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x6

    .line 411
    new-array v2, v1, [I

    fill-array-data v2, :array_f2

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 417
    new-array v3, v1, [I

    fill-array-data v3, :array_102

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 423
    new-array v1, v1, [I

    fill-array-data v1, :array_112

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 428
    array-length v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    const/4 v1, 0x0

    .line 440
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 442
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 444
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    .line 461
    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    .line 467
    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    .line 475
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    .line 482
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 488
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 495
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 501
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 510
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 516
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 520
    new-instance v2, Lcom/android/server/am/AppStartInfoTracker;

    invoke-direct {v2}, Lcom/android/server/am/AppStartInfoTracker;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 526
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    .line 532
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {v2}, Lcom/android/server/am/AppExitInfoTracker;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 538
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 545
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 548
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/16 v0, 0x10

    .line 565
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    const/4 v0, 0x3

    .line 570
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    .line 776
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    const v2, 0x182b8

    const v3, 0x1869f

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(Lcom/android/server/am/ProcessList;II)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 784
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    const v2, 0x15f90

    const v3, 0x182b7

    const/16 v4, 0x64

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;-><init>(Lcom/android/server/am/ProcessList;III)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 799
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    .line 803
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x5

    .line 808
    new-array v0, v0, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    .line 819
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    .line 825
    new-instance v0, Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$MyProcessMap;-><init>(Lcom/android/server/am/ProcessList;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 889
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 890
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 891
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 892
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    return-void

    nop

    :array_f2
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x384
        0x3b6
    .end array-data

    :array_102
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_112
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .registers 7

    const/4 v0, 0x0

    const/16 v1, 0xa

    :goto_3
    const/4 v2, 0x6

    if-ge v0, v2, :cond_15

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_10

    const/16 v2, 0x20

    .line 1301
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_3

    .line 1304
    :cond_15
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static batchSetOomAdj(Ljava/util/ArrayList;)V
    .registers 13

    .line 1614
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/16 v1, 0x34

    .line 1619
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0xb

    .line 1621
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_15
    const/4 v7, 0x0

    if-ge v5, v0, :cond_5c

    .line 1623
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/psc/ProcessRecordInternal;

    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getPid()I

    move-result v8

    .line 1624
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/psc/ProcessRecordInternal;

    invoke-virtual {v9}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v9

    .line 1625
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/psc/ProcessRecordInternal;

    iget v10, v10, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-lez v8, :cond_59

    const/16 v11, 0x3e9

    if-ne v9, v11, :cond_3b

    goto :goto_59

    :cond_3b
    const/4 v11, 0x3

    if-lt v6, v11, :cond_4b

    .line 1628
    invoke-static {v2, v7}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1629
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1631
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 1632
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move v6, v4

    .line 1634
    :cond_4b
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1635
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1636
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1637
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    :cond_59
    :goto_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 1640
    :cond_5c
    invoke-static {v2, v7}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    return-void
.end method

.method public static buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 6

    sub-int/2addr p2, p3

    if-eqz p4, :cond_6

    if-nez p2, :cond_6

    return-object p1

    .line 1162
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1163
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    if-ge p3, v0, :cond_1c

    .line 1164
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_1c
    if-nez p2, :cond_28

    .line 1167
    const-string p0, "   "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    const/16 p3, 0xa

    .line 1171
    const-string v0, "+"

    if-ge p2, p3, :cond_51

    if-eqz p4, :cond_31

    return-object p0

    .line 1173
    :cond_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_40

    goto :goto_42

    .line 1173
    :cond_40
    const-string v0, "+ "

    :goto_42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1175
    :cond_51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJJ)J
    .registers 12

    .line 1515
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget p0, v0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-eqz p1, :cond_28

    .line 1517
    iget v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge p0, v2, :cond_e

    move v2, p0

    .line 1519
    :cond_e
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v3, v3, p0

    if-ge v2, v3, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 1520
    :goto_16
    iput p0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1521
    iput v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    if-eqz v1, :cond_1f

    .line 1523
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_28

    .line 1525
    :cond_1f
    iget-object v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v0, v0, p0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v0

    .line 1526
    iput v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    :cond_28
    :goto_28
    if-eqz p2, :cond_32

    if-eqz v1, :cond_2f

    .line 1534
    sget-object p1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_43

    .line 1535
    :cond_2f
    sget-object p1, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_43

    :cond_32
    if-eqz v1, :cond_3c

    if-eqz p3, :cond_39

    .line 1537
    sget-object p1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_43

    :cond_39
    sget-object p1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_43

    :cond_3c
    if-eqz p3, :cond_41

    .line 1538
    sget-object p1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_43

    :cond_41
    sget-object p1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 1539
    :goto_43
    aget-wide p0, p1, p0

    long-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-long p0, p0

    const-wide/32 p2, 0x36ee80

    cmp-long v0, p0, p2

    if-lez v0, :cond_50

    move-wide p0, p2

    :cond_50
    add-long/2addr p4, p0

    .line 1543
    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p7

    .line 4807
    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 4808
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_16

    return v6

    .line 4810
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 4811
    iget-wide v9, v1, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long/2addr v7, v9

    .line 4813
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    :goto_23
    if-ltz v5, :cond_2ff

    .line 4814
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 4816
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4817
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v12

    invoke-static {v12, v6}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v12

    .line 4819
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetSchedGroup()I

    move-result v13

    if-eqz v13, :cond_59

    if-eq v13, v9, :cond_56

    const/4 v14, 0x2

    if-eq v13, v14, :cond_53

    const/4 v14, 0x3

    if-eq v13, v14, :cond_50

    const/4 v14, 0x4

    if-eq v13, v14, :cond_4d

    const/16 v13, 0x3f

    goto :goto_5b

    :cond_4d
    const/16 v13, 0x42

    goto :goto_5b

    :cond_50
    const/16 v13, 0x54

    goto :goto_5b

    :cond_53
    const/16 v13, 0x46

    goto :goto_5b

    :cond_56
    const/16 v13, 0x52

    goto :goto_5b

    :cond_59
    const/16 v13, 0x62

    .line 4840
    :goto_5b
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasForegroundActivities()Z

    move-result v14

    if-eqz v14, :cond_64

    const/16 v14, 0x41

    goto :goto_6f

    .line 4842
    :cond_64
    invoke-virtual {v11}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v14

    if-eqz v14, :cond_6d

    const/16 v14, 0x53

    goto :goto_6f

    :cond_6d
    const/16 v14, 0x20

    .line 4847
    :goto_6f
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v6

    .line 4848
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4849
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v16

    if-eqz v16, :cond_85

    move/from16 v16, v9

    move-object/from16 v9, p5

    goto :goto_89

    :cond_85
    move/from16 v16, v9

    move-object/from16 v9, p4

    :goto_89
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4850
    const-string v9, " #"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4851
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sub-int/2addr v9, v15

    .line 4852
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v3, 0x3e8

    if-lt v15, v3, :cond_b8

    if-ge v9, v3, :cond_b8

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_ba

    :cond_b8
    const/16 v3, 0x20

    .line 4853
    :goto_ba
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v3, 0x64

    if-lt v15, v3, :cond_ca

    if-ge v9, v3, :cond_ca

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_cc

    :cond_ca
    const/16 v3, 0x20

    .line 4854
    :goto_cc
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v3, 0xa

    if-lt v15, v3, :cond_dc

    if-ge v9, v3, :cond_dc

    const/16 v15, 0x20

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_de

    :cond_dc
    const/16 v15, 0x20

    .line 4855
    :goto_de
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 4856
    const-string v9, ": "

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4857
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4858
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 4859
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(C)V

    const/16 v9, 0x2f

    .line 4860
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 4861
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 4862
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 4863
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4864
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 4865
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result v6

    invoke-static {v0, v6}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 4866
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 4867
    const-string v6, " t:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4868
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v6

    if-ge v6, v3, :cond_11a

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 4869
    :cond_11a
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4870
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 4871
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4872
    const-string v6, " ("

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4873
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v9, 0x29

    .line 4874
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(C)V

    .line 4875
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v9

    const-string v12, "    "

    if-nez v9, :cond_14c

    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjTarget()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1bb

    .line 4876
    :cond_14c
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4877
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4878
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjTarget()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Landroid/content/ComponentName;

    const-string/jumbo v13, "{null}"

    if-eqz v9, :cond_16b

    .line 4879
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjTarget()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_180

    .line 4880
    :cond_16b
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjTarget()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_17d

    .line 4881
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjTarget()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_180

    .line 4883
    :cond_17d
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4885
    :goto_180
    const-string v9, "<="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4886
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_1a6

    .line 4887
    const-string v9, "Proc{"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4888
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4889
    const-string/jumbo v9, "}"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1bb

    .line 4890
    :cond_1a6
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1b8

    .line 4891
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1bb

    .line 4893
    :cond_1b8
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1bb
    :goto_1bb
    if-eqz p6, :cond_2f6

    .line 4897
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4898
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4899
    const-string/jumbo v9, "oom: max="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getMaxAdj()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 4900
    const-string v9, " curRaw="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawAdj()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 4901
    const-string v9, " setRaw="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetRawAdj()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 4902
    const-string v9, " cur="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 4903
    const-string v9, " set="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(I)V

    .line 4904
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4905
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4906
    const-string/jumbo v13, "state: cur="

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v13

    invoke-static {v13}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4907
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4909
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v9}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v9

    if-eqz v9, :cond_260

    .line 4910
    const-string v9, " lastPss="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4911
    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v17

    const-wide/16 v19, 0x400

    mul-long v13, v17, v19

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4912
    const-string v9, " lastSwapPss="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4913
    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessProfileRecord;->getLastSwapPss()J

    move-result-wide v13

    mul-long v13, v13, v19

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4914
    const-string v9, " lastCachedPss="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4915
    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedPss()J

    move-result-wide v13

    mul-long v13, v13, v19

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    goto :goto_282

    :cond_260
    const-wide/16 v19, 0x400

    .line 4917
    const-string v9, " lastRss="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4918
    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessProfileRecord;->getLastRss()J

    move-result-wide v13

    mul-long v13, v13, v19

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4919
    const-string v9, " lastCachedRss="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4920
    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedRss()J

    move-result-wide v13

    mul-long v13, v13, v19

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4922
    :goto_282
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4923
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4924
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4925
    const-string v9, "cached="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCached()Z

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 4926
    const-string v9, " empty="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->isEmpty()Z

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 4927
    const-string v9, " hasAboveClient="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isHasAboveClient()Z

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Z)V

    .line 4929
    invoke-virtual {v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v9

    if-lt v9, v3, :cond_2f6

    .line 4930
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    const-wide/16 v17, 0x0

    cmp-long v3, v13, v17

    if-eqz v3, :cond_2f6

    cmp-long v3, v7, v17

    if-lez v3, :cond_2f6

    .line 4932
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    sub-long/2addr v9, v13

    .line 4933
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4934
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4935
    const-string/jumbo v3, "run cpu over "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4936
    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4937
    const-string v3, " used "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4938
    invoke-static {v9, v10, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4939
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v11, 0x64

    mul-long/2addr v9, v11

    .line 4940
    div-long/2addr v9, v7

    invoke-virtual {v0, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    .line 4941
    const-string v3, "%)"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2f6
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v3, p2

    move/from16 v9, v16

    const/4 v6, 0x0

    goto/16 :goto_23

    :cond_2ff
    move/from16 v16, v9

    return v16
.end method

.method public static freezePackageCgroup(IZ)Z
    .registers 5

    .line 3035
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/Process;->freezeCgroupUid(IZ)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    move-exception v0

    if-eqz p1, :cond_b

    .line 3037
    const-string p1, "freeze"

    goto :goto_e

    :cond_b
    const-string/jumbo p1, "unfreeze"

    .line 3038
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cgroup uid: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static final getLmkdKillCount(II)Ljava/lang/Integer;
    .registers 5

    const/16 v0, 0xc

    .line 1661
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x8

    .line 1662
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x4

    .line 1663
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1664
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1665
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1667
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1668
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1669
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result p0

    if-eqz p0, :cond_32

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    if-ne p0, v2, :cond_32

    .line 1670
    new-instance p0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUIDSublist(Ljava/util/List;I)Ljava/util/List;
    .registers 5

    .line 3079
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    add-int/lit8 v1, p1, 0x1

    .line 3081
    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-ne v2, v0, :cond_25

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3082
    :cond_25
    invoke-interface {p0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static killProcessGroup(IILjava/lang/String;)V
    .registers 5

    .line 1734
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-eqz v0, :cond_e

    const/16 v1, 0xfa0

    .line 1736
    invoke-virtual {v0, v1, p0, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1735
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1739
    :cond_e
    const-string p2, "ActivityManager"

    const-string v0, "Asked to kill process group before system bringup!"

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    return-void
.end method

.method public static makeOomAdjString(IZ)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x384

    if-lt p0, v0, :cond_b

    .line 1180
    const-string v1, "cch"

    invoke-static {v1, v1, p0, v0, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 v0, 0x320

    if-lt p0, v0, :cond_17

    .line 1183
    const-string/jumbo v1, "svcb"

    invoke-static {v1, v1, p0, v0, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_23

    .line 1186
    const-string/jumbo v1, "prev"

    invoke-static {v1, v1, p0, v0, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const/16 v0, 0x258

    if-lt p0, v0, :cond_2e

    .line 1189
    const-string v1, "home"

    invoke-static {v1, v1, p0, v0, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_3a

    .line 1192
    const-string/jumbo v1, "svc"

    invoke-static {v1, v1, p0, v0, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3a
    const/16 v0, 0x190

    if-lt p0, v0, :cond_45

    .line 1195
    const-string v1, "hvy"

    invoke-static {v1, v1, p0, v0, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_45
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_50

    .line 1198
    const-string v1, "bkup"

    invoke-static {v1, v1, p0, v0, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_50
    const/16 v0, 0xfa

    if-lt p0, v0, :cond_5c

    .line 1201
    const-string/jumbo v1, "prcl"

    invoke-static {v1, v1, p0, v0, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5c
    const/16 v0, 0xe1

    if-lt p0, v0, :cond_68

    .line 1204
    const-string/jumbo v1, "prcm"

    invoke-static {v1, v1, p0, v0, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_68
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_74

    .line 1207
    const-string/jumbo v1, "prcp"

    invoke-static {v1, v1, p0, v0, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_74
    const/16 v0, 0x64

    if-lt p0, v0, :cond_80

    .line 1210
    const-string/jumbo v1, "vis"

    invoke-static {v1, v1, p0, v0, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_80
    if-ltz p0, :cond_8c

    .line 1213
    const-string v0, "fg "

    const/4 v1, 0x0

    const-string v2, "fg"

    invoke-static {v2, v0, p0, v1, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8c
    const/16 v0, -0x2bc

    if-lt p0, v0, :cond_9d

    .line 1216
    const-string/jumbo v0, "psvc"

    const/16 v1, -0x2bc

    const-string/jumbo v2, "psvc"

    invoke-static {v2, v0, p0, v1, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9d
    const/16 v0, -0x320

    if-lt p0, v0, :cond_ae

    .line 1219
    const-string/jumbo v0, "pers"

    const/16 v1, -0x320

    const-string/jumbo v2, "pers"

    invoke-static {v2, v0, p0, v1, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ae
    const/16 v0, -0x384

    if-lt p0, v0, :cond_bf

    .line 1222
    const-string/jumbo v0, "sys"

    const/16 v1, -0x384

    const-string/jumbo v2, "sys"

    invoke-static {v2, v0, p0, v1, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_bf
    const/16 v0, -0x3e8

    if-lt p0, v0, :cond_d0

    .line 1225
    const-string/jumbo v0, "ntv"

    const/16 v1, -0x3e8

    const-string/jumbo v2, "ntv"

    invoke-static {v2, v0, p0, v1, p1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1228
    :cond_d0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeProcStateProtoEnum(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_48

    const/16 p0, 0x3e6

    return p0

    :pswitch_6
    const/16 p0, 0x3fb

    return p0

    :pswitch_9
    const/16 p0, 0x3fa

    return p0

    :pswitch_c
    const/16 p0, 0x3f9

    return p0

    :pswitch_f
    const/16 p0, 0x3f8

    return p0

    :pswitch_12
    const/16 p0, 0x3f7

    return p0

    :pswitch_15
    const/16 p0, 0x3f6

    return p0

    :pswitch_18
    const/16 p0, 0x3f5

    return p0

    :pswitch_1b
    const/16 p0, 0x3f4

    return p0

    :pswitch_1e
    const/16 p0, 0x3f3

    return p0

    :pswitch_21
    const/16 p0, 0x3f2

    return p0

    :pswitch_24
    const/16 p0, 0x3f1

    return p0

    :pswitch_27
    const/16 p0, 0x3f0

    return p0

    :pswitch_2a
    const/16 p0, 0x3ef

    return p0

    :pswitch_2d
    const/16 p0, 0x3ee

    return p0

    :pswitch_30
    const/16 p0, 0x3ed

    return p0

    :pswitch_33
    const/16 p0, 0x3ec

    return p0

    :pswitch_36
    const/16 p0, 0x3eb

    return p0

    :pswitch_39
    const/16 p0, 0x3fc

    return p0

    :pswitch_3c
    const/16 p0, 0x3ea

    return p0

    :pswitch_3f
    const/16 p0, 0x3e9

    return p0

    :pswitch_42
    const/16 p0, 0x3e8

    return p0

    :pswitch_45
    const/16 p0, 0x3e7

    return p0

    :pswitch_data_48
    .packed-switch -0x1
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .registers 1

    .line 1233
    invoke-static {p0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static minTimeFromStateChange(Z)J
    .registers 3

    .line 0
    if-eqz p0, :cond_5

    const-wide/16 v0, 0x2710

    return-wide v0

    :cond_5
    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method public static procStatesDifferForMem(II)Z
    .registers 3

    .line 1504
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget p0, v0, p0

    aget p1, v0, p1

    if-eq p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static final remove(I)V
    .registers 3

    if-gtz p0, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x8

    .line 1651
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x2

    .line 1652
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1653
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 1654
    invoke-static {v0, p0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    return-void
.end method

.method public static setOomAdj(III)V
    .registers 7

    if-gtz p0, :cond_3

    goto :goto_55

    :cond_3
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_8

    goto :goto_55

    .line 1585
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v2, 0x10

    .line 1586
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    .line 1587
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1588
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1589
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1590
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 1591
    invoke-static {v2, p1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1592
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0xfa

    cmp-long p1, v2, v0

    if-lez p1, :cond_55

    .line 1594
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SLOW OOM ADJ: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms for pid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    return-void
.end method

.method public static sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8

    .line 4662
    new-instance v0, Ljava/util/ArrayList;

    .line 4663
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4664
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_38

    .line 4665
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_23

    .line 4666
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_35

    .line 4669
    :cond_23
    new-instance v3, Landroid/util/Pair;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 4672
    :cond_38
    new-instance p0, Lcom/android/server/am/ProcessList$3;

    invoke-direct {p0}, Lcom/android/server/am/ProcessList$3;-><init>()V

    .line 4694
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static startPsiMonitoringAfterBoot()V
    .registers 2

    const/4 v0, 0x4

    .line 1712
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x9

    .line 1713
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 1714
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    return-void
.end method

.method public static unfreezePackageCgroup(I)Z
    .registers 2

    const/4 v0, 0x0

    .line 3045
    invoke-static {p0, v0}, Lcom/android/server/am/ProcessList;->freezePackageCgroup(IZ)Z

    move-result p0

    return p0
.end method

.method public static writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .registers 5

    .line 1718
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0}, Lcom/android/server/am/LmkdConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1720
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v1, 0xfa1

    .line 1721
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1720
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1724
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/LmkdConnection;->waitForConnection(J)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 p0, 0x0

    return p0

    .line 1729
    :cond_1f
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/LmkdConnection;->exchange(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method

.method public static writeProcessCapabilitiesListToProto(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1a

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int v2, p1, v1

    if-eqz v2, :cond_17

    .line 1292
    invoke-static {v1}, Landroid/app/ActivityManager;->processCapabilityAmToProto(I)I

    move-result v1

    const-wide v2, 0x20e00000010L

    .line 1293
    invoke-virtual {p0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    return-void
.end method

.method public static writeProcessOomListToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)Z
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    .line 4701
    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4702
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_12

    return v4

    .line 4704
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 4706
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    :goto_1c
    if-ltz v3, :cond_289

    .line 4707
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 4709
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4710
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 4711
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v12

    invoke-static {v12, v7}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v12

    const-wide v13, 0x10800000001L

    .line 4712
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v15

    invoke-virtual {v0, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4713
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v13, v14

    const-wide v14, 0x10500000002L

    invoke-virtual {v0, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-wide/from16 v16, v5

    const-wide v4, 0x10900000003L

    .line 4714
    invoke-virtual {v0, v4, v5, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4716
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetSchedGroup()I

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_7e

    const/4 v6, 0x2

    if-eq v4, v6, :cond_7c

    const/4 v12, 0x3

    if-eq v4, v12, :cond_7f

    const/4 v6, 0x4

    if-eq v4, v6, :cond_7a

    move v6, v5

    goto :goto_7f

    :cond_7a
    move v6, v12

    goto :goto_7f

    :cond_7c
    move v6, v7

    goto :goto_7f

    :cond_7e
    const/4 v6, 0x0

    :cond_7f
    :goto_7f
    if-eq v6, v5, :cond_89

    const-wide v4, 0x10e00000004L

    .line 4731
    invoke-virtual {v0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4733
    :cond_89
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasForegroundActivities()Z

    move-result v4

    if-eqz v4, :cond_98

    const-wide v4, 0x10800000005L

    .line 4734
    invoke-virtual {v0, v4, v5, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_a6

    .line 4735
    :cond_98
    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v4

    if-eqz v4, :cond_a6

    const-wide v4, 0x10800000006L

    .line 4736
    invoke-virtual {v0, v4, v5, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4739
    :cond_a6
    :goto_a6
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v4

    const-wide v5, 0x10e00000007L

    .line 4738
    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4740
    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v4

    const-wide v12, 0x10500000008L

    invoke-virtual {v0, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10b00000009L

    .line 4741
    invoke-virtual {v8, v0, v12, v13}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4742
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjType()Ljava/lang/String;

    move-result-object v4

    const-wide v12, 0x1090000000aL

    invoke-virtual {v0, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4743
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e4

    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_13e

    .line 4744
    :cond_e4
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/content/ComponentName;

    if-eqz v4, :cond_fb

    .line 4745
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    const-wide v12, 0x10b0000000bL

    .line 4746
    invoke-virtual {v4, v0, v12, v13}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_111

    .line 4747
    :cond_fb
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_111

    .line 4748
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide v12, 0x1090000000cL

    invoke-virtual {v0, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4750
    :cond_111
    :goto_111
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_128

    .line 4751
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const-wide v12, 0x10b0000000dL

    .line 4752
    invoke-virtual {v4, v0, v12, v13}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_13e

    .line 4753
    :cond_128
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_13e

    .line 4754
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide v12, 0x1090000000eL

    invoke-virtual {v0, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_13e
    :goto_13e
    if-eqz p5, :cond_275

    const-wide v12, 0x10b0000000fL

    move v4, v7

    move-object/from16 v19, v8

    .line 4758
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v12, 0x10500000001L

    move/from16 v20, v4

    .line 4759
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/psc/ProcessRecordInternal;->getMaxAdj()I

    move-result v4

    invoke-virtual {v0, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4760
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawAdj()I

    move-result v4

    invoke-virtual {v0, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10500000003L

    .line 4761
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetRawAdj()I

    move-result v4

    invoke-virtual {v0, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10500000004L

    .line 4762
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v4

    invoke-virtual {v0, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10500000005L

    .line 4763
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v4

    invoke-virtual {v0, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4765
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v4

    .line 4764
    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4767
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v4

    const-wide v5, 0x10e00000008L

    .line 4766
    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4768
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/am/ProcessList;->writeProcessCapabilitiesListToProto(Landroid/util/proto/ProtoOutputStream;I)V

    move-object/from16 v4, v19

    .line 4769
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4770
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v5

    const-wide/16 v12, 0x400

    mul-long/2addr v5, v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 4769
    invoke-static {v5, v6, v14}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    const-wide v14, 0x10900000009L

    invoke-virtual {v0, v14, v15, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4771
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4772
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getLastSwapPss()J

    move-result-wide v5

    mul-long/2addr v5, v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 4771
    invoke-static {v5, v6, v14}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    const-wide v14, 0x1090000000aL

    invoke-virtual {v0, v14, v15, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4775
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4776
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedPss()J

    move-result-wide v5

    mul-long/2addr v5, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 4775
    invoke-static {v5, v6, v12}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    const-wide v12, 0x1090000000bL

    invoke-virtual {v0, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v5, 0x1080000000cL

    .line 4777
    invoke-virtual {v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCached()Z

    move-result v12

    invoke-virtual {v0, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x1080000000dL

    .line 4778
    invoke-virtual {v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->isEmpty()Z

    move-result v12

    invoke-virtual {v0, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x1080000000eL

    .line 4779
    invoke-virtual {v9}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isHasAboveClient()Z

    move-result v9

    invoke-virtual {v0, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4781
    invoke-virtual {v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_26e

    .line 4782
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    move-object/from16 v9, p3

    .line 4783
    iget-wide v12, v9, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long v12, v16, v12

    const-wide/16 v14, 0x0

    cmp-long v18, v5, v14

    if-eqz v18, :cond_26c

    cmp-long v14, v12, v14

    if-lez v14, :cond_26c

    .line 4785
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    sub-long/2addr v14, v5

    const-wide v4, 0x10b0000000fL

    .line 4786
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    move-object v6, v2

    const-wide v1, 0x10300000001L

    .line 4787
    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000002L

    .line 4788
    invoke-virtual {v0, v1, v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    long-to-double v14, v14

    mul-double/2addr v14, v1

    long-to-double v1, v12

    div-double/2addr v14, v1

    const-wide v1, 0x10200000003L

    .line 4789
    invoke-virtual {v0, v1, v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 4791
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_271

    :cond_26c
    :goto_26c
    move-object v6, v2

    goto :goto_271

    :cond_26e
    move-object/from16 v9, p3

    goto :goto_26c

    .line 4794
    :goto_271
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_27a

    :cond_275
    move-object/from16 v9, p3

    move-object v6, v2

    move/from16 v20, v7

    .line 4796
    :goto_27a
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v1, p4

    move-object v2, v6

    move-wide/from16 v5, v16

    move/from16 v7, v20

    const/4 v4, 0x0

    goto/16 :goto_1c

    :cond_289
    move/from16 v20, v7

    return v20
.end method


# virtual methods
.method public addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 10

    .line 3289
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 3290
    :try_start_6
    iget-object v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-ne v1, p1, :cond_33

    .line 3291
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 3293
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-adding persistent process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->resetCrashingOnRestart()V

    goto :goto_8a

    :catchall_30
    move-exception p0

    goto/16 :goto_135

    :cond_33
    if-eqz v1, :cond_8a

    .line 3297
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 3300
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Existing proc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " was killed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3301
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getKillTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms ago when adding "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3300
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 3304
    :cond_6c
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already have existing proc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " when adding "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    :cond_8a
    :goto_8a
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    if-nez v1, :cond_ef

    .line 3309
    new-instance v1, Lcom/android/server/am/UidRecord;

    iget v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/UidRecord;-><init>(ILcom/android/server/am/ActivityManagerService;)V

    .line 3314
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempAllowlist:[I

    iget v3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 3315
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 3314
    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_b9

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    iget v3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 3316
    invoke-virtual {v2, v3}, Lcom/android/server/am/PendingTempAllowlists;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_c0

    :cond_b9
    const/4 v2, 0x1

    .line 3317
    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/UidRecordInternal;->setCurAllowListed(Z)V

    .line 3318
    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/UidRecordInternal;->setSetAllowListed(Z)V

    .line 3320
    :cond_c0
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->updateHasInternetPermission()V

    .line 3321
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 3322
    invoke-virtual {v1}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/EventLogTags;->writeAmUidRunning(I)V

    .line 3323
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result v4

    .line 3324
    invoke-virtual {v1}, Lcom/android/server/am/psc/UidRecordInternal;->getCurCapability()I

    move-result v5

    .line 3323
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessStateAndCapability(III)V

    .line 3325
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 3327
    :cond_ef
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setUidRecord(Lcom/android/server/am/UidRecord;)V

    .line 3328
    invoke-virtual {v1, p1}, Lcom/android/server/am/UidRecord;->addProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    const/4 v1, 0x0

    .line 3331
    invoke-virtual {p1, v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->setRenderThreadTid(I)V

    .line 3332
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/am/ProcessList$MyProcessMap;->put(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    .line 3333
    monitor-exit v0
    :try_end_103
    .catchall {:try_start_6 .. :try_end_103} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3334
    iget-boolean v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    if-eqz v0, :cond_111

    .line 3335
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3337
    :cond_111
    iget-boolean v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    if-eqz v0, :cond_134

    .line 3338
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_126

    .line 3340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3342
    :cond_126
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3343
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_134
    return-void

    .line 3333
    :goto_135
    :try_start_135
    monitor-exit v0
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    .line 1019
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v0, :cond_1b

    .line 1020
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    .line 1022
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 1023
    iget p1, v0, Landroid/graphics/Point;->x:I

    if-eqz p1, :cond_1b

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    .line 1024
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 1025
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    :cond_1b
    return-void
.end method

.method public final checkSlow(JLjava/lang/String;)V
    .registers 6

    .line 1802
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p0, 0x32

    cmp-long p0, v0, p0

    if-lez p0, :cond_2a

    .line 1805
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Slow operation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms so far, now at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public clearAllDnsCacheLOSP()V
    .registers 5

    .line 3648
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_39

    .line 3649
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3650
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 3653
    :try_start_18
    invoke-interface {v2}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_36

    .line 3655
    :catch_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clear dns cache for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_39
    return-void
.end method

.method public collectProcessesLOSP(IZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10

    if-eqz p3, :cond_70

    .line 5202
    array-length v0, p3

    if-le v0, p1, :cond_70

    aget-object v0, p3, p1

    const/4 v1, 0x0

    .line 5203
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_70

    .line 5204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5207
    :try_start_15
    aget-object v1, p3, p1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    const/4 v1, -0x1

    .line 5210
    :goto_1d
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_25
    if-ltz v2, :cond_67

    .line 5211
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 5212
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-lez v4, :cond_3f

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-ne v4, v1, :cond_3f

    .line 5213
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_3f
    if-eqz p2, :cond_57

    .line 5214
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 5215
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 5216
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 5217
    :cond_57
    iget-object v4, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 5218
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    :goto_64
    add-int/lit8 v2, v2, -0x1

    goto :goto_25

    .line 5221
    :cond_67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_6f

    const/4 p0, 0x0

    return-object p0

    :cond_6f
    return-object v0

    .line 5225
    :cond_70
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final completeLruProcessInternalLSP(Landroid/util/SparseBooleanArray;II)V
    .registers 9

    .line 3712
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_37

    .line 3713
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    if-gez v1, :cond_f

    goto :goto_37

    .line 3718
    :cond_f
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_17

    move v3, p2

    goto :goto_18

    :cond_17
    move v3, p3

    :goto_18
    if-lt v1, v3, :cond_1b

    goto :goto_34

    .line 3727
    :cond_1b
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    add-int/lit8 v3, v3, -0x1

    .line 3731
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3732
    iget v4, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-virtual {v1, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->setLruSeq(I)V

    if-eqz v2, :cond_33

    move p2, v3

    goto :goto_34

    :cond_33
    move p3, v3

    :goto_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_37
    :goto_37
    return-void
.end method

.method public final computeGidsForProcess(II[IZ)[I
    .registers 13

    const/16 p0, 0x437

    .line 1844
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 1811
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1813
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    .line 1814
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v2

    .line 1815
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v3

    .line 1819
    array-length v4, p3

    const/4 v5, 0x0

    move v6, v5

    :goto_29
    if-ge v6, v4, :cond_37

    aget v7, p3, v6

    .line 1820
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_37
    const/4 p3, -0x1

    if-eq v1, p3, :cond_41

    .line 1823
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    if-eq v2, p3, :cond_4a

    .line 1826
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    if-eq v3, p3, :cond_53

    .line 1829
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    const/4 p3, 0x4

    const/4 v1, 0x3

    if-eq p1, p3, :cond_59

    if-ne p1, v1, :cond_76

    .line 1838
    :cond_59
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/16 p3, 0x3f7

    invoke-static {p2, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, 0x436

    .line 1843
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1844
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    const/4 p2, 0x2

    if-ne p1, p2, :cond_7c

    .line 1848
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7c
    if-ne p1, v1, :cond_87

    const/16 p0, 0x3ff

    .line 1854
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    if-eqz p4, :cond_92

    const/16 p0, 0x435

    .line 1859
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    :cond_92
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p1, p0, [I

    :goto_98
    if-ge v5, p0, :cond_a9

    .line 1864
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_98

    :cond_a9
    return-object p1
.end method

.method public final createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;
    .registers 10

    .line 2370
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 2373
    :try_start_6
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v5

    .line 2374
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AppZygote;

    if-nez v0, :cond_6f

    .line 2380
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2382
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v3

    .line 2381
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    .line 2383
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2386
    iget v3, v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 2387
    iget v0, v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    invoke-static {v2, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 2388
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3, v0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2395
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2396
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2397
    new-instance v2, Landroid/os/AppZygote;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    invoke-direct/range {v2 .. v7}, Landroid/os/AppZygote;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;III)V

    .line 2398
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v5, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2400
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    :catchall_6c
    move-exception v0

    move-object p0, v0

    goto :goto_8a

    .line 2405
    :cond_6f
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x47

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2406
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, p0

    .line 2412
    :goto_82
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2414
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_6 .. :try_end_86} :catchall_6c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2415
    :goto_8a
    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_6c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final createSystemServerSocketForZygote()Landroid/net/LocalSocket;
    .registers 5

    .line 5486
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/unsolzygotesocket"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5487
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5488
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_10
    const/4 p0, 0x0

    .line 5493
    :try_start_11
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_27

    .line 5494
    :try_start_17
    new-instance v2, Landroid/net/LocalSocketAddress;

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v0, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    const/16 v2, 0x1b6

    .line 5496
    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_26} :catch_28

    return-object v1

    :catch_27
    move-object v1, p0

    :catch_28
    if-eqz v1, :cond_2e

    .line 5500
    :try_start_2a
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2f

    goto :goto_2f

    :cond_2e
    move-object p0, v1

    :catch_2f
    :goto_2f
    return-object p0
.end method

.method public dispatchProcessDied(II)V
    .registers 6

    .line 5183
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 5184
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :catch_9
    :cond_9
    :goto_9
    if-lez v1, :cond_1d

    add-int/lit8 v1, v1, -0x1

    .line 5187
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IProcessObserver;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    if-eqz v2, :cond_9

    .line 5190
    :try_start_17
    invoke-interface {v2, p1, p2}, Landroid/app/IProcessObserver;->onProcessDied(II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_9
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_9

    :catchall_1b
    move-exception p0

    goto :goto_24

    .line 5195
    :cond_1d
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5196
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_1b

    throw p0
.end method

.method public dispatchProcessStarted(Lcom/android/server/am/ProcessRecord;I)V
    .registers 12

    .line 5165
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 5166
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_9
    if-lez v0, :cond_2f

    add-int/lit8 v0, v0, -0x1

    .line 5169
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/IProcessObserver;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_29

    if-eqz v3, :cond_2c

    .line 5172
    :try_start_18
    iget v5, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_24} :catch_2c
    .catchall {:try_start_18 .. :try_end_24} :catchall_29

    move v4, p2

    :try_start_25
    invoke-interface/range {v3 .. v8}, Landroid/app/IProcessObserver;->onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_2d
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v0

    move-object p0, v0

    goto :goto_36

    :catch_2c
    :cond_2c
    move v4, p2

    :catch_2d
    :goto_2d
    move p2, v4

    goto :goto_9

    .line 5178
    :cond_2f
    :try_start_2f
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5179
    monitor-exit v1

    return-void

    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_29

    throw p0
.end method

.method public dispatchProcessesChanged()V
    .registers 10

    .line 5025
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5026
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5027
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    array-length v2, v2

    if-ge v2, v1, :cond_16

    .line 5028
    new-array v2, v1, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    goto :goto_16

    :catchall_13
    move-exception p0

    goto/16 :goto_84

    .line 5030
    :cond_16
    :goto_16
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5031
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5036
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_13

    .line 5038
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 5039
    :try_start_26
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_2c
    :cond_2c
    const/4 v3, 0x0

    if-lez v0, :cond_65

    add-int/lit8 v0, v0, -0x1

    .line 5042
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/IProcessObserver;
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_51

    if-eqz v4, :cond_2c

    :goto_3b
    if-ge v3, v1, :cond_2c

    .line 5046
    :try_start_3d
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v5, v5, v3

    .line 5047
    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_53

    .line 5053
    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v7, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget-boolean v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-interface {v4, v6, v7, v8}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V

    goto :goto_53

    :catchall_51
    move-exception p0

    goto :goto_82

    .line 5056
    :cond_53
    :goto_53
    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_62

    .line 5063
    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v7, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget v5, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    invoke-interface {v4, v6, v7, v5}, Landroid/app/IProcessObserver;->onForegroundServicesChanged(III)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_62} :catch_2c
    .catchall {:try_start_3d .. :try_end_62} :catchall_51

    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 5071
    :cond_65
    :try_start_65
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5072
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_51

    .line 5074
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_6e
    if-ge v3, v1, :cond_7e

    .line 5076
    :try_start_70
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    :catchall_7c
    move-exception p0

    goto :goto_80

    .line 5078
    :cond_7e
    monitor-exit v0

    return-void

    :goto_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_70 .. :try_end_81} :catchall_7c

    throw p0

    .line 5072
    :goto_82
    :try_start_82
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_51

    throw p0

    .line 5036
    :goto_84
    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_13

    throw p0
.end method

.method public doStopUidForIdleUidsLocked()V
    .registers 6

    .line 5340
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2f

    .line 5342
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->keyAt(I)I

    move-result v2

    .line 5343
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_2c

    .line 5346
    :cond_16
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 5347
    invoke-virtual {v2}, Lcom/android/server/am/psc/UidRecordInternal;->isIdle()Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_2c

    .line 5350
    :cond_23
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2f
    return-void
.end method

.method public final dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 6

    .line 4405
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p0, 0x23

    .line 4406
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    const/16 p0, 0xa

    const/16 p4, 0x20

    if-ge p2, p0, :cond_11

    .line 4408
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(C)V

    .line 4410
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 4411
    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4412
    invoke-virtual {p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result p0

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4413
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(C)V

    .line 4414
    invoke-virtual {p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4415
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(C)V

    .line 4416
    invoke-virtual {p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result p0

    invoke-static {p1, p0}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 4417
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(C)V

    .line 4418
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4419
    iget-object p0, p3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4420
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result p4

    if-nez p4, :cond_5b

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result p4

    if-nez p4, :cond_5b

    .line 4421
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isTreatLikeActivity()Z

    move-result p4

    if-eqz p4, :cond_a5

    .line 4422
    :cond_5b
    const-string p4, " act:"

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4424
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_6d

    .line 4425
    const-string p2, "activities"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move p2, v0

    .line 4428
    :cond_6d
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasRecentTasks()Z

    move-result p3

    const-string/jumbo p4, "|"

    if-eqz p3, :cond_82

    if-eqz p2, :cond_7b

    .line 4430
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4432
    :cond_7b
    const-string/jumbo p2, "recents"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move p2, v0

    .line 4435
    :cond_82
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result p3

    if-eqz p3, :cond_93

    if-eqz p2, :cond_8d

    .line 4437
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4439
    :cond_8d
    const-string p2, "client"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_94

    :cond_93
    move v0, p2

    .line 4442
    :goto_94
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isTreatLikeActivity()Z

    move-result p0

    if-eqz p0, :cond_a5

    if-eqz v0, :cond_9f

    .line 4444
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4446
    :cond_9f
    const-string/jumbo p0, "treated"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4449
    :cond_a5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 4395
    const-string v0, "  Process LRU list (sorted by oom_adj, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4396
    const-string v0, " total, non-act at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4397
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4398
    const-string v0, ", non-svc at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4399
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4400
    const-string p0, "):"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 4454
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4456
    const-string v1, "  "

    const/4 v2, 0x0

    if-nez p3, :cond_11

    .line 4457
    const-string p3, "ACTIVITY MANAGER LRU PROCESSES (dumpsys activity lru)"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_43

    :cond_11
    add-int/lit8 v3, v0, -0x1

    :goto_13
    if-ltz v3, :cond_c5

    .line 4462
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_2c

    .line 4463
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 4472
    :cond_2c
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4473
    const-string v3, "Raw LRU list (dumpsys activity lru):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_43
    const/4 p3, 0x1

    sub-int/2addr v0, p3

    move v3, p3

    .line 4478
    :goto_46
    iget v4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt v0, v4, :cond_70

    .line 4479
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_5f

    .line 4480
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    goto :goto_6d

    :cond_5f
    if-eqz v3, :cond_6a

    .line 4484
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4485
    const-string v3, "Activities:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    .line 4488
    :cond_6a
    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_6d
    add-int/lit8 v0, v0, -0x1

    goto :goto_46

    :cond_70
    move v3, p3

    .line 4491
    :goto_71
    iget v4, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lt v0, v4, :cond_9b

    .line 4492
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_8a

    .line 4493
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8a

    goto :goto_98

    :cond_8a
    if-eqz v3, :cond_95

    .line 4497
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4498
    const-string v3, "Services:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    .line 4501
    :cond_95
    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_98
    add-int/lit8 v0, v0, -0x1

    goto :goto_71

    :cond_9b
    move v3, p3

    :goto_9c
    if-ltz v0, :cond_c4

    .line 4505
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_b3

    .line 4506
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b3

    goto :goto_c1

    :cond_b3
    if-eqz v3, :cond_be

    .line 4510
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4511
    const-string v3, "Other:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    .line 4514
    :cond_be
    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_c1
    add-int/lit8 v0, v0, -0x1

    goto :goto_9c

    :cond_c4
    return p3

    :cond_c5
    return v2
.end method

.method public dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .registers 17

    .line 4968
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result p1

    const/4 p4, 0x1

    if-lez p1, :cond_c3

    if-eqz p3, :cond_c

    .line 4969
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4971
    :cond_c
    const-string p1, "  OOM levels:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4972
    const-string p1, "SYSTEM_ADJ"

    const/16 p3, -0x384

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4973
    const-string p1, "PERSISTENT_PROC_ADJ"

    const/16 p3, -0x320

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4974
    const-string p1, "PERSISTENT_SERVICE_ADJ"

    const/16 p3, -0x2bc

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4975
    const-string p1, "FOREGROUND_APP_ADJ"

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4976
    const-string p1, "VISIBLE_APP_ADJ"

    const/16 p3, 0x64

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4977
    const-string p1, "PERCEPTIBLE_APP_ADJ"

    const/16 p3, 0xc8

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4978
    const-string p1, "PERCEPTIBLE_MEDIUM_APP_ADJ"

    const/16 p3, 0xe1

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4979
    const-string p1, "PERCEPTIBLE_LOW_APP_ADJ"

    const/16 p3, 0xfa

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4980
    const-string p1, "BACKUP_APP_ADJ"

    const/16 p3, 0x12c

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4981
    const-string p1, "HEAVY_WEIGHT_APP_ADJ"

    const/16 p3, 0x190

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4982
    const-string p1, "SERVICE_ADJ"

    const/16 p3, 0x1f4

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4983
    const-string p1, "HOME_APP_ADJ"

    const/16 p3, 0x258

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4984
    const-string p1, "PREVIOUS_APP_ADJ"

    const/16 p3, 0x2bc

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4985
    const-string p1, "SERVICE_B_ADJ"

    const/16 p3, 0x320

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4986
    const-string p1, "CACHED_APP_MIN_ADJ"

    const/16 p3, 0x384

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4987
    const-string p1, "CACHED_APP_MAX_ADJ"

    const/16 p3, 0x3e7

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4989
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4990
    const-string p1, "  Process OOM control ("

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 4991
    const-string p1, " total, non-act at "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4992
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result p1

    iget p3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr p1, p3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 4993
    const-string p1, ", non-svc at "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4994
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result p1

    iget p3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr p1, p3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 4995
    const-string p1, "):"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4996
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const-string v3, "    "

    const-string v4, "Proc"

    const-string v5, "PERS"

    const/4 v6, 0x1

    move-object v0, p2

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move p3, p4

    .line 5001
    :cond_c3
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object p1, p1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5002
    :try_start_ca
    iget-object p5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p5, p5, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p5, p2, p3, p7}, Lcom/android/server/am/AppProfiler;->dumpProcessesToGc(Ljava/io/PrintWriter;ZLjava/lang/String;)Z

    .line 5003
    monitor-exit p1
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_dd

    .line 5005
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5006
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dumpForOom(Ljava/io/PrintWriter;)V

    return p4

    :catchall_dd
    move-exception v0

    move-object p0, v0

    .line 5003
    :try_start_df
    monitor-exit p1
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_dd

    throw p0
.end method

.method public dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;I)V
    .registers 21

    move-object/from16 v2, p6

    .line 4525
    const-string v0, "ACTIVITY MANAGER RUNNING PROCESSES (dumpsys activity processes)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v0, 0x0

    if-nez p5, :cond_12

    if-eqz v2, :cond_e

    goto :goto_12

    :cond_e
    move v5, v0

    move v10, v5

    goto/16 :goto_85

    .line 4528
    :cond_12
    :goto_12
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v4, v0

    move v5, v4

    move v6, v5

    :goto_1f
    if-ge v4, v3, :cond_84

    .line 4530
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 4531
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    move v10, v0

    :goto_32
    if-ge v10, v8, :cond_81

    .line 4532
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_47

    .line 4533
    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_47

    goto :goto_7e

    :cond_47
    if-nez v5, :cond_4f

    .line 4537
    const-string v5, "  All known processes:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v5, v9

    .line 4540
    :cond_4f
    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v12

    if-eqz v12, :cond_58

    const-string v12, "  *PERS*"

    goto :goto_5a

    :cond_58
    const-string v12, "  *APP*"

    :goto_5a
    invoke-virtual {p2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4541
    const-string v12, " UID "

    invoke-virtual {p2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {p2, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 4542
    const-string v12, " "

    invoke-virtual {p2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4543
    const-string v12, "    "

    invoke-virtual {v11, p2, v12}, Lcom/android/server/am/ProcessRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4544
    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v11

    if-eqz v11, :cond_7e

    add-int/lit8 v6, v6, 0x1

    :cond_7e
    :goto_7e
    add-int/lit8 v10, v10, 0x1

    goto :goto_32

    :cond_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_84
    move v10, v6

    .line 4551
    :goto_85
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_cc

    .line 4553
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v0

    :goto_94
    if-ge v0, v3, :cond_cc

    .line 4554
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_ab

    .line 4555
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ab

    goto :goto_c9

    :cond_ab
    if-nez v4, :cond_b9

    if-eqz v5, :cond_b2

    .line 4560
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4562
    :cond_b2
    const-string v4, "  Isolated process list (sorted by uid):"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v9

    move v5, v4

    .line 4566
    :cond_b9
    const-string v7, "    Isolated #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4567
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_c9
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 4571
    :cond_cc
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2, v2, v5}, Lcom/android/server/am/ActivityManagerService;->dumpActiveInstruments(Ljava/io/PrintWriter;Ljava/lang/String;Z)Z

    move-result v3

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v2

    move-object v2, p2

    .line 4573
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z[Ljava/lang/String;IZLjava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_e5

    move v5, v9

    goto :goto_e6

    :cond_e5
    move v5, v3

    .line 4577
    :goto_e6
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    if-lez v0, :cond_fc

    .line 4578
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-string v4, "UID states:"

    move-object v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    or-int/2addr v5, v0

    :cond_fc
    if-eqz p5, :cond_10f

    .line 4583
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    const-string v4, "UID validation:"

    move-object v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UidObserverController;->dumpValidateUids(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    or-int/2addr v5, v0

    goto :goto_111

    :cond_10f
    move-object/from16 v2, p6

    :goto_111
    if-eqz v5, :cond_116

    .line 4588
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4590
    :cond_116
    const-string v0, "  "

    invoke-virtual {p0, p2, v2, v0}, Lcom/android/server/am/ProcessList;->dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11f

    move v5, v9

    .line 4594
    :cond_11f
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    if-lez v0, :cond_140

    if-eqz v5, :cond_12a

    .line 4596
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4598
    :cond_12a
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessList;->dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V

    .line 4599
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const-string v5, "PERS"

    const/4 v6, 0x0

    const-string v3, "    "

    const-string v4, "Proc"

    move-object v0, p2

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move v7, v9

    goto :goto_141

    :cond_140
    move v7, v5

    .line 4604
    :goto_141
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move v6, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->dumpOtherProcessesInfoLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;IIZ)V

    return-void
.end method

.method public final enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    .registers 6

    .line 5102
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_1b

    .line 5105
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 5106
    iget v2, v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v2, p1, :cond_18

    goto :goto_1b

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1b
    :goto_1b
    if-gez v0, :cond_57

    .line 5117
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_30

    .line 5119
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    goto :goto_35

    .line 5124
    :cond_30
    new-instance v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-direct {v0}, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;-><init>()V

    :goto_35
    const/4 v1, 0x0

    .line 5129
    iput v1, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 5130
    iput p1, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    .line 5131
    iput p2, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    .line 5132
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_51

    .line 5136
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 p2, 0x1f

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 5137
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5139
    :cond_51
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_57
    return-object v1
.end method

.method public enqueueProcessChangeItemLocked(IIII)V
    .registers 6

    .line 5083
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5084
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object p0

    .line 5085
    iget p1, p0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    or-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 5086
    iput p4, p0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    .line 5087
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public enqueueProcessChangeItemLocked(IIIZ)V
    .registers 6

    .line 5093
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5094
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object p0

    .line 5095
    iget p1, p0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    or-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 5096
    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    .line 5097
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .registers 8

    .line 4222
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 4223
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 4224
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHeavyWeightProcess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 4225
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4227
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4228
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4230
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 4231
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4233
    :cond_34
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v0

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 4235
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v0

    .line 4237
    invoke-static {v0, p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result p3

    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x190

    const/4 v3, 0x0

    if-ne p3, v2, :cond_52

    .line 4239
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result p3

    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    goto :goto_54

    .line 4241
    :cond_52
    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 4243
    :goto_54
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjTypeCode()I

    move-result p3

    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 4244
    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 4245
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-ne p1, p0, :cond_65

    goto :goto_66

    :cond_65
    move v1, v3

    :goto_66
    iput-boolean v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 4246
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastActivityTime()J

    move-result-wide p0

    iput-wide p0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    return-void
.end method

.method public findAppProcessLOSP(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .registers 11

    .line 1782
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_3a

    .line 1784
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 1785
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v1

    :goto_1f
    if-ge v5, v4, :cond_37

    .line 1787
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 1788
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_34

    .line 1789
    invoke-interface {v7}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, p1, :cond_34

    return-object v6

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1795
    :cond_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find mystery application for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from pid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1797
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1795
    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V
    .registers 5

    if-eqz p1, :cond_19

    .line 4336
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_31

    .line 4337
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4340
    :cond_19
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_21
    if-ltz p1, :cond_31

    .line 4341
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_21

    :cond_31
    return-void
.end method

.method public final freezeBinderAndPackageCgroup(Ljava/util/List;I)V
    .registers 14

    .line 3054
    const-string v0, ": "

    const-string v1, "Unable to freeze binder for "

    const-string v2, "ActivityManager"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_c
    const/4 v6, 0x1

    if-ge v5, v3, :cond_6f

    .line 3056
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    if-lez v7, :cond_6c

    move v8, v4

    .line 3062
    :goto_20
    :try_start_20
    iget-object v9, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getFreezer()Lcom/android/server/am/Freezer;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v7, v6, v10}, Lcom/android/server/am/Freezer;->freezeBinder(IZI)I

    move-result v9

    .line 3063
    sget v10, Landroid/system/OsConstants;->EAGAIN:I

    neg-int v10, v10

    if-ne v9, v10, :cond_38

    add-int/lit8 v10, v8, 0x1

    if-lt v8, v6, :cond_36

    goto :goto_38

    :cond_36
    move v8, v10

    goto :goto_20

    :cond_38
    :goto_38
    if-eqz v9, :cond_6c

    .line 3064
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_52} :catch_53

    goto :goto_6c

    :catch_53
    move-exception v6

    .line 3066
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    :goto_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 3074
    :cond_6f
    invoke-static {p2, v6}, Lcom/android/server/am/ProcessList;->freezePackageCgroup(IZ)Z

    return-void
.end method

.method public getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;
    .registers 1

    .line 1564
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    return-object p0
.end method

.method public getBlockStateForUid(Lcom/android/server/am/psc/UidRecordInternal;)I
    .registers 6

    .line 5368
    invoke-virtual {p1}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result p0

    .line 5369
    invoke-virtual {p1}, Lcom/android/server/am/psc/UidRecordInternal;->getCurCapability()I

    move-result v0

    .line 5368
    invoke-static {p0, v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_21

    .line 5370
    invoke-virtual {p1}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result p0

    .line 5371
    invoke-virtual {p1}, Lcom/android/server/am/psc/UidRecordInternal;->getCurCapability()I

    move-result v2

    .line 5370
    invoke-static {p0, v2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    move p0, v1

    goto :goto_22

    :cond_21
    :goto_21
    move p0, v0

    .line 5374
    :goto_22
    invoke-virtual {p1}, Lcom/android/server/am/psc/UidRecordInternal;->getSetProcState()I

    move-result v2

    .line 5375
    invoke-virtual {p1}, Lcom/android/server/am/psc/UidRecordInternal;->getSetCapability()I

    move-result v3

    .line 5374
    invoke-static {v2, v3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v2

    if-nez v2, :cond_41

    .line 5376
    invoke-virtual {p1}, Lcom/android/server/am/psc/UidRecordInternal;->getSetProcState()I

    move-result v2

    .line 5377
    invoke-virtual {p1}, Lcom/android/server/am/psc/UidRecordInternal;->getSetCapability()I

    move-result p1

    .line 5376
    invoke-static {v2, p1}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_41

    :cond_3f
    move p1, v1

    goto :goto_42

    :cond_41
    :goto_41
    move p1, v0

    :goto_42
    if-nez p1, :cond_47

    if-eqz p0, :cond_47

    return v0

    :cond_47
    if-eqz p1, :cond_4d

    if-nez p0, :cond_4d

    const/4 p0, 0x2

    return p0

    :cond_4d
    return v1
.end method

.method public getCachedRestoreThresholdKb()J
    .registers 3

    .line 1560
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method public getIsolatedProcessesLocked(I)Ljava/util/List;
    .registers 7

    .line 3373
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_2d

    .line 3374
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3375
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_2a

    if-nez v1, :cond_1f

    .line 3377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3379
    :cond_1f
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2d
    return-object v1
.end method

.method public getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 4188
    :cond_4
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getLRURecordForAppLOSP(Landroid/os/IBinder;)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    return-object p0
.end method

.method public getLRURecordForAppLOSP(Landroid/os/IBinder;)Lcom/android/server/am/ProcessRecord;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 4197
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_26

    .line 4198
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4199
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 4200
    invoke-interface {v3}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_23

    return-object v2

    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_26
    return-object v0
.end method

.method public getLruProcessesLOSP()Ljava/util/ArrayList;
    .registers 1

    .line 4313
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getLruSeqLOSP()I
    .registers 1

    .line 4385
    iget p0, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    return p0
.end method

.method public getLruSizeLOSP()I
    .registers 1

    .line 4305
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getMemLevel(I)J
    .registers 5

    const/4 v0, 0x0

    .line 1547
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 1548
    aget v1, v1, v0

    if-gt p1, v1, :cond_12

    .line 1549
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget p0, p0, v0

    :goto_e
    mul-int/lit16 p0, p0, 0x400

    int-to-long p0, p0

    return-wide p0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1552
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    aget p0, p0, p1

    goto :goto_e
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 12

    const/16 v0, 0x258

    .line 1766
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    const/16 v2, 0x384

    .line 1767
    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    .line 1768
    invoke-static {}, Landroid/os/Process;->getAdvertisedMem()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    .line 1769
    invoke-static {}, Landroid/os/Process;->getMemAvailable()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1770
    invoke-static {}, Landroid/os/Process;->getMemFree()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->freeMem:J

    .line 1771
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1772
    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 1773
    iget-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v6, v2, v0

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    add-long/2addr v0, v6

    cmp-long v0, v4, v0

    const/4 v1, 0x0

    if-gez v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    iput-boolean v0, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 1774
    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    const/16 v0, 0x1f4

    .line 1775
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    const/16 v0, 0x64

    .line 1776
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 1777
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    return-void
.end method

.method public getNextProcStateSeq()J
    .registers 5

    .line 5475
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    return-wide v0
.end method

.method public getNumForegroundServices()Landroid/util/Pair;
    .registers 7

    .line 5754
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 5755
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_f
    if-ge v2, v1, :cond_29

    .line 5756
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 5757
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->getNumForegroundServices()I

    move-result v5

    if-lez v5, :cond_24

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :catchall_27
    move-exception p0

    goto :goto_3b

    .line 5763
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5764
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 5763
    :goto_3b
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .registers 4

    if-eqz p2, :cond_16

    .line 3350
    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 3354
    :cond_9
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3355
    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result p2

    .line 3354
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getOrCreateIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object p0

    return-object p0

    .line 3352
    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    return-object p0
.end method

.method public final getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;
    .registers 14

    .line 2420
    new-instance p0, Landroid/util/ArrayMap;

    array-length v0, p2

    invoke-direct {p0, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2421
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 2422
    array-length v0, p2

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_63

    aget-object v2, p2, v1

    .line 2423
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 2424
    const-string v4, "ActivityManager"

    if-nez v3, :cond_2d

    .line 2425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 2428
    :cond_2d
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v5

    .line 2429
    invoke-interface {v3, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gtz v3, :cond_55

    .line 2431
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " inode == 0 or app uninstalled with keep-data"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2434
    :cond_55
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_63
    return-object p0
.end method

.method public getProcessListSettingsListener()Lcom/android/server/am/ProcessList$ProcessListSettingsListener;
    .registers 4

    .line 587
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 588
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    if-nez v1, :cond_1b

    .line 589
    new-instance v1, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    .line 590
    invoke-static {v1}, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->-$$Nest$mregisterObserver(Lcom/android/server/am/ProcessList$ProcessListSettingsListener;)V

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_22

    .line 592
    :cond_1b
    :goto_1b
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    .line 593
    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;
    .registers 1

    .line 4390
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    return-object p0
.end method

.method public getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .registers 8

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_36

    .line 1750
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 1752
    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_36

    .line 1754
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1755
    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_33

    .line 1759
    :cond_2c
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0

    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1762
    :cond_36
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .registers 7

    .line 1035
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1036
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 1037
    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_13
    if-ltz v2, :cond_47

    .line 1038
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1039
    iget v4, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    if-ne v4, p1, :cond_44

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isBindMountPending()Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_44

    .line 1042
    :cond_28
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 1049
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    :catchall_3a
    move-exception p0

    goto :goto_4c

    .line 1046
    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Pending process is not started yet,retry later"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    :goto_44
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 1051
    :cond_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object v0

    :goto_4c
    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public getRunningAppProcessesLOSP(ZIZII)Ljava/util/List;
    .registers 13

    .line 4257
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_b7

    .line 4258
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4260
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    if-nez p1, :cond_1b

    .line 4261
    iget v4, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    if-ne v4, p2, :cond_b3

    :cond_1b
    if-nez p3, :cond_23

    iget v4, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-eq v4, p4, :cond_23

    goto/16 :goto_b3

    .line 4265
    :cond_23
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_b3

    .line 4266
    invoke-virtual {v3}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v4

    if-nez v4, :cond_b3

    invoke-virtual {v3}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v3

    if-nez v3, :cond_b3

    .line 4268
    new-instance v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 4270
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getProcessPackageNames()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 4271
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v4

    if-eqz v4, :cond_60

    .line 4272
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 4273
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    .line 4275
    :cond_60
    invoke-virtual {p0, v2, v3, p5}, Lcom/android/server/am/ProcessList;->fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    .line 4276
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_82

    .line 4277
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 4280
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSourceProcState()I

    move-result v4

    .line 4279
    invoke-static {v4}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v4

    iput v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    goto :goto_99

    .line 4281
    :cond_82
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v4, :cond_99

    .line 4283
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 4284
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->getActivityPid()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_99

    .line 4286
    iput v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 4289
    :cond_99
    :goto_99
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/content/ComponentName;

    if-eqz v4, :cond_a9

    .line 4290
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjTarget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    iput-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    :cond_a9
    if-nez v1, :cond_b0

    .line 4295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4297
    :cond_b0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b3
    :goto_b3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_9

    :cond_b7
    return-object v1
.end method

.method public getSharedIsolatedProcess(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .registers 8

    .line 3360
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2d

    .line 3361
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3362
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, p2, :cond_2a

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 3363
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    return-object v2

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUidProcStateLOSP(I)I
    .registers 2

    .line 5314
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-nez p0, :cond_b

    const/16 p0, 0x14

    return p0

    .line 5315
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result p0

    return p0
.end method

.method public getUidProcessCapabilityLOSP(I)I
    .registers 2

    .line 5324
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 5325
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/psc/UidRecordInternal;->getCurCapability()I

    move-result p0

    return p0
.end method

.method public getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;
    .registers 2

    .line 5331
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    return-object p0
.end method

.method public handleAllTrustStorageUpdateLOSP()V
    .registers 5

    .line 3663
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_39

    .line 3664
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3665
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 3668
    :try_start_18
    invoke-interface {v2}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_36

    .line 3670
    :catch_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to handle trust storage update for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_39
    return-void
.end method

.method public handleDyingAppDeathLocked(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 7

    .line 5540
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_54

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 5541
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_54

    .line 5543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got obituary of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5544
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 5546
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {p2, v0, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 5547
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5548
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 5550
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateController;->removeLruProcess(Lcom/android/server/am/ProcessRecord;)V

    const/4 p0, 0x1

    return p0

    :cond_54
    return v1
.end method

.method public handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5

    .line 5563
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_42

    .line 5567
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_26

    .line 5568
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_26

    .line 5569
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5573
    :cond_26
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 5574
    iput-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 5576
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5579
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5580
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x0

    return p0

    :cond_42
    return v1
.end method

.method public final handlePredecessorProcDied(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 2319
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    .line 2321
    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 2322
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method public final handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 25

    .line 2232
    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2256
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_26

    .line 2257
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDyingPid()I

    move-result p2

    if-lez p2, :cond_26

    .line 2258
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessList;->handleProcessStartWithPredecessor(Lcom/android/server/am/ProcessRecord;Ljava/lang/Runnable;)V

    return-void

    .line 2261
    :cond_26
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final handleProcessStartWithPredecessor(Lcom/android/server/am/ProcessRecord;Ljava/lang/Runnable;)V
    .registers 5

    .line 2272
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1b

    .line 2274
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "We\'ve been watching for the death of "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2277
    :cond_1b
    iput-object p2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 2278
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v10, p3

    move-wide/from16 v2, p4

    .line 2872
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2873
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v2, :cond_51

    .line 2875
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " start not valid, killing pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    invoke-virtual {v1, v9}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2879
    invoke-static {v4}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2880
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    if-eqz v3, :cond_48

    .line 2882
    iget v4, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {v4, v3}, Landroid/os/Process;->killProcessGroup(II)I

    :cond_48
    const/16 v3, 0xd

    .line 2884
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 2886
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->doEarlyCleanupIfNecessaryLocked()V

    return v9

    .line 2889
    :cond_51
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/BatteryStatsService;->noteProcessStart(Ljava/lang/String;I)V

    .line 2890
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v2

    const-string/jumbo v5, "startProcess: done updating battery stats"

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2893
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 2894
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v15

    .line 2895
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9f

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_9c
    move-object/from16 v16, v2

    goto :goto_a2

    :cond_9f
    const-string v2, ""

    goto :goto_9c

    :goto_a2
    filled-new-array/range {v11 .. v16}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x753e

    .line 2892
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2898
    :try_start_ab
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_b3} :catch_ca

    :try_start_b3
    iget-object v4, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 2899
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getSeInfo()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_bf} :catch_c8

    move/from16 v8, p2

    .line 2898
    :try_start_c1
    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_c4} :catch_c6

    move v4, v8

    goto :goto_ca

    :catch_c6
    move v4, v8

    goto :goto_ca

    :catch_c8
    move/from16 v4, p2

    .line 2904
    :catch_ca
    :goto_ca
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/Watchdog;->processStarted(Ljava/lang/String;I)V

    .line 2906
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v2

    const-string/jumbo v5, "startProcess: building log message"

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2907
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2908
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2909
    const-string v3, "Start proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2910
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    .line 2911
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2912
    iget-object v3, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 2913
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2914
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2915
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_117

    .line 2916
    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2918
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2920
    :cond_117
    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2921
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2922
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_141

    .line 2923
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2924
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2926
    :cond_141
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "ActivityManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v6

    invoke-virtual {v3, v5, v2, v6}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2927
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    .line 2928
    :try_start_156
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 2929
    invoke-virtual {v1, v10}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2930
    invoke-virtual {v1, v9}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2931
    monitor-exit v2
    :try_end_160
    .catchall {:try_start_156 .. :try_end_160} :catchall_20e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2932
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v2

    const-string/jumbo v5, "startProcess: starting to update pids map"

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2934
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3

    .line 2935
    :try_start_172
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 2936
    monitor-exit v3
    :try_end_17b
    .catchall {:try_start_172 .. :try_end_17b} :catchall_20b

    if-eqz v2, :cond_1ce

    .line 2938
    iget-boolean v3, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    if-nez v3, :cond_1ce

    .line 2940
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleProcessStartedLocked process:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " startSeq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2941
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " pid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " belongs to another existing app:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " startSeq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2944
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2940
    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 2945
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;IZZIZZ)Z

    .line 2948
    :cond_1ce
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->addPidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2949
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2

    if-nez p6, :cond_1f9

    .line 2951
    :try_start_1da
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2952
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2953
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    if-eqz v10, :cond_1f0

    const-wide/32 v5, 0x124f80

    goto :goto_1f3

    .line 2954
    :cond_1f0
    sget v5, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    int-to-long v5, v5

    .line 2953
    :goto_1f3
    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1f9

    :catchall_1f7
    move-exception v0

    goto :goto_209

    .line 2956
    :cond_1f9
    :goto_1f9
    monitor-exit v2
    :try_end_1fa
    .catchall {:try_start_1da .. :try_end_1fa} :catchall_1f7

    .line 2957
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/ProcessList;->dispatchProcessStarted(Lcom/android/server/am/ProcessRecord;I)V

    .line 2958
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v1

    const-string/jumbo v3, "startProcess: done updating pids map"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 2956
    :goto_209
    :try_start_209
    monitor-exit v2
    :try_end_20a
    .catchall {:try_start_209 .. :try_end_20a} :catchall_1f7

    throw v0

    :catchall_20b
    move-exception v0

    .line 2936
    :try_start_20c
    monitor-exit v3
    :try_end_20d
    .catchall {:try_start_20c .. :try_end_20d} :catchall_20b

    throw v0

    :catchall_20e
    move-exception v0

    .line 2931
    :try_start_20f
    monitor-exit v2
    :try_end_210
    .catchall {:try_start_20f .. :try_end_210} :catchall_20e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public final handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z
    .registers 12

    .line 2858
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    .line 2859
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    iget p3, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ne p0, p3, :cond_15

    .line 2860
    iget-boolean p0, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    :cond_15
    const/4 p0, 0x0

    return p0

    .line 2865
    :cond_17
    iget v2, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v3, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z

    move-result p0

    return p0
.end method

.method public final handleZygoteMessages(Ljava/io/FileDescriptor;I)I
    .registers 7

    .line 5513
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_42

    .line 5517
    :try_start_7
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p1, p2, v2, v1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result p1

    if-lez p1, :cond_42

    .line 5519
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    array-length v1, p2

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    invoke-static {v3, p1, p2}, Lcom/android/internal/os/Zygote;->nativeParseSigChld([BI[I)I

    move-result p1

    if-ne v1, p1, :cond_42

    .line 5521
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    aget p2, p0, v2

    aget v1, p0, v0

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-virtual {p1, p2, v1, p0}, Lcom/android/server/am/AppExitInfoTracker;->handleZygoteSigChld(III)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a} :catch_2b

    goto :goto_42

    :catch_2b
    move-exception p0

    .line 5527
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception in reading unsolicited zygote message: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    return v0
.end method

.method public final hasAppStorage(Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;)Z
    .registers 4

    .line 2650
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1e

    .line 2652
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ActivityManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 2656
    :cond_1e
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object p0

    const-string p2, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager$Property;

    if-eqz p0, :cond_34

    .line 2657
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_34

    :cond_33
    return p1

    :cond_34
    :goto_34
    const/4 p0, 0x1

    return p0
.end method

.method public haveBackgroundProcessLOSP()Z
    .registers 5

    .line 4209
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_24

    .line 4210
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4211
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_21

    return v1

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V
    .registers 12

    .line 5400
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_15

    .line 5401
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 5402
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getNextProcStateSeq()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 5404
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_23

    goto/16 :goto_d3

    .line 5409
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_29
    if-ltz v0, :cond_96

    .line 5410
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 5412
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService$Injector;->isNetworkRestrictedForUid(I)Z

    move-result v6

    if-nez v6, :cond_3e

    goto :goto_93

    .line 5415
    :cond_3e
    invoke-virtual {v3}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_93

    iget-boolean v6, v3, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    if-nez v6, :cond_4d

    goto :goto_93

    .line 5419
    :cond_4d
    invoke-virtual {v3}, Lcom/android/server/am/psc/UidRecordInternal;->getSetProcState()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result v7

    if-ne v6, v7, :cond_62

    .line 5420
    invoke-virtual {v3}, Lcom/android/server/am/psc/UidRecordInternal;->getSetCapability()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/am/psc/UidRecordInternal;->getCurCapability()I

    move-result v7

    if-ne v6, v7, :cond_62

    goto :goto_93

    .line 5423
    :cond_62
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessList;->getBlockStateForUid(Lcom/android/server/am/psc/UidRecordInternal;)I

    move-result v6

    if-nez v6, :cond_69

    goto :goto_93

    .line 5429
    :cond_69
    iget-object v7, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    monitor-enter v7

    if-ne v6, v1, :cond_84

    if-nez v2, :cond_78

    .line 5432
    :try_start_70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_78

    :catchall_76
    move-exception p0

    goto :goto_91

    .line 5434
    :cond_78
    :goto_78
    invoke-virtual {v3}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 5440
    :cond_84
    iget-wide v8, v3, Lcom/android/server/am/UidRecord;->procStateSeqWaitingForNetwork:J

    cmp-long v6, v8, v4

    if-eqz v6, :cond_8f

    .line 5441
    iget-object v3, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 5444
    :cond_8f
    :goto_8f
    monitor-exit v7

    goto :goto_93

    :goto_91
    monitor-exit v7
    :try_end_92
    .catchall {:try_start_70 .. :try_end_92} :catchall_76

    throw p0

    :cond_93
    :goto_93
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    :cond_96
    if-nez v2, :cond_99

    goto :goto_d3

    .line 5452
    :cond_99
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_a0
    if-ltz p1, :cond_d3

    .line 5453
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 5454
    iget v1, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    goto :goto_d0

    .line 5457
    :cond_b7
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    .line 5458
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result v3

    if-nez v3, :cond_d0

    if-eqz v1, :cond_d0

    .line 5459
    iget v0, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    if-eqz v0, :cond_d0

    .line 5466
    :try_start_cb
    iget-wide v3, v0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-interface {v1, v3, v4}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_d0} :catch_d0

    :catch_d0
    :cond_d0
    :goto_d0
    add-int/lit8 p1, p1, -0x1

    goto :goto_a0

    :cond_d3
    :goto_d3
    return-void
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;Lcom/android/server/compat/PlatformCompat;)V
    .registers 5

    .line 897
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 898
    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 899
    iput-object p3, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 900
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 904
    const-string/jumbo p1, "persist.zygote.app_data_isolation"

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 905
    const-string/jumbo p1, "persist.sys.vold_app_data_isolation_enabled"

    const/4 p3, 0x0

    invoke-static {p1, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 907
    new-instance p1, Ljava/util/ArrayList;

    .line 908
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/SystemConfig;->getAppDataIsolationWhitelistedApps()Landroid/util/ArraySet;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    .line 910
    sget-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-nez p1, :cond_a9

    .line 911
    new-instance p1, Lcom/android/server/ServiceThread;

    const-string p3, "ActivityManager:kill"

    const/16 v0, 0xa

    invoke-direct {p1, p3, v0, p2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 913
    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    .line 914
    new-instance p1, Lcom/android/server/am/ProcessList$KillHandler;

    sget-object p3, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/android/server/am/ProcessList$KillHandler;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 915
    new-instance p1, Lcom/android/server/am/OomConnection;

    new-instance p3, Lcom/android/server/am/ProcessList$1;

    invoke-direct {p3, p0}, Lcom/android/server/am/ProcessList$1;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-direct {p1, p3}, Lcom/android/server/am/OomConnection;-><init>(Lcom/android/server/am/OomConnection$OomConnectionListener;)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sOomConnection:Lcom/android/server/am/OomConnection;

    .line 932
    new-instance p1, Lcom/android/server/am/LmkdConnection;

    sget-object p3, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p3

    new-instance v0, Lcom/android/server/am/ProcessList$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$2;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-direct {p1, p3, v0}, Lcom/android/server/am/LmkdConnection;-><init>(Landroid/os/MessageQueue;Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 1001
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->createSystemServerSocketForZygote()Landroid/net/LocalSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    if-eqz p1, :cond_8e

    .line 1003
    sget-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    .line 1004
    invoke-virtual {p3}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessList;)V

    .line 1003
    invoke-virtual {p1, p3, p2, v0}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 1007
    :cond_8e
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/am/AppStartInfoTracker;->init(Lcom/android/server/am/ActivityManagerService;)V

    .line 1008
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->init(Lcom/android/server/am/ActivityManagerService;)V

    .line 1009
    new-instance p1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    sget-object p2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    :cond_a9
    return-void
.end method

.method public isInLruListLOSP(Lcom/android/server/am/ProcessRecord;)Z
    .registers 2

    .line 4380
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;
    .registers 9

    .line 2822
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 2823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2824
    const-string/jumbo v2, "killedByAm=true;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_13
    move-object v0, v1

    .line 2826
    :goto_14
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_2c

    if-nez v0, :cond_27

    .line 2827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2828
    :cond_27
    const-string v2, "No entry in mProcessNames;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2830
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v2

    if-nez v2, :cond_3f

    if-nez v0, :cond_39

    .line 2831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2832
    :cond_39
    const-string/jumbo v2, "pendingStart=false;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2834
    :cond_3f
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-lez v2, :cond_74

    if-nez v0, :cond_4e

    .line 2835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2836
    :cond_4e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2839
    :cond_74
    :try_start_74
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-interface {p2, p3, p1}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_81} :catch_99
    .catch Ljava/lang/SecurityException; {:try_start_74 .. :try_end_81} :catch_82

    goto :goto_99

    :catch_82
    move-exception p1

    .line 2843
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz p0, :cond_98

    if-nez v0, :cond_92

    .line 2844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2845
    :cond_92
    const-string p0, "Package is frozen;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    .line 2848
    :cond_98
    throw p1

    :catch_99
    :goto_99
    if-nez v0, :cond_9c

    goto :goto_a0

    .line 2851
    :cond_9c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a0
    return-object v1
.end method

.method public killAllBackgroundProcessesExceptLSP(II)V
    .registers 13

    .line 3582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3583
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_4b

    .line 3585
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 3586
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v2

    :goto_24
    if-ge v6, v5, :cond_48

    .line 3588
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 3589
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v8

    if-nez v8, :cond_42

    if-ltz p1, :cond_3a

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v8, p1, :cond_45

    :cond_3a
    if-ltz p2, :cond_42

    .line 3591
    invoke-virtual {v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v8

    if-le v8, p2, :cond_45

    .line 3592
    :cond_42
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 3597
    :cond_4b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_4f
    if-ge v2, p1, :cond_68

    .line 3599
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const/16 v8, 0xa

    const-string/jumbo v9, "kill all background except"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xd

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_68
    return-void
.end method

.method public killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J
    .registers 12

    .line 5626
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 5627
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastCachedTime()J

    move-result-wide v1

    .line 5628
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_4e

    .line 5629
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v3

    if-nez v3, :cond_4e

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_4e

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/android/server/am/psc/UidRecordInternal;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 5630
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCached()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isBackgroundRestricted()Z

    move-result v0

    if-eqz v0, :cond_4e

    cmp-long v0, v1, v4

    if-nez v0, :cond_37

    goto :goto_4e

    .line 5634
    :cond_37
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    add-long/2addr v1, v6

    cmp-long p0, v1, p2

    if-gtz p0, :cond_4d

    const/16 p0, 0x12

    const/4 p2, 0x1

    .line 5637
    const-string p3, "cached idle & background restricted"

    const/16 v0, 0xd

    invoke-virtual {p1, p3, v0, p0, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    return-wide v4

    :cond_4d
    return-wide v1

    :cond_4e
    :goto_4e
    return-wide v4
.end method

.method public killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/UidRecord;)V
    .registers 5

    .line 5653
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5654
    new-instance v2, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessList;J)V

    invoke-virtual {p1, v2}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V
    .registers 6

    .line 2328
    invoke-virtual {p1}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2329
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2c

    if-nez p2, :cond_16

    .line 2330
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_2c

    .line 2332
    :cond_16
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 2333
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2334
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->freeUidRangeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2335
    invoke-virtual {p1}, Landroid/os/AppZygote;->stopZygote()V

    :cond_2c
    return-void
.end method

.method public killAppZygotesLocked(Ljava/lang/String;IIZ)V
    .registers 11

    .line 3010
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3011
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 3012
    :goto_20
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_13

    .line 3013
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq p3, v5, :cond_34

    .line 3014
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p3, :cond_34

    goto :goto_55

    :cond_34
    if-ltz p2, :cond_3d

    .line 3017
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-eq v4, p2, :cond_3d

    goto :goto_55

    .line 3020
    :cond_3d
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AppZygote;

    if-eqz p1, :cond_52

    .line 3022
    invoke-virtual {v4}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    goto :goto_55

    .line 3025
    :cond_52
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 3028
    :cond_58
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_5c
    if-ge v3, p1, :cond_6a

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v3, v3, 0x1

    check-cast p2, Landroid/os/AppZygote;

    .line 3029
    invoke-virtual {p0, p2, p4}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    goto :goto_5c

    :cond_6a
    return-void
.end method

.method public killPackageProcessesLSP(Ljava/lang/String;IIIIILjava/lang/String;)Z
    .registers 22

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    .line 2999
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    .line 3090
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 3091
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3096
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_121

    .line 3098
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 3099
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_31
    if-ge v6, v5, :cond_11b

    .line 3101
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 3102
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v14

    if-eqz v14, :cond_45

    if-nez p8, :cond_45

    :cond_41
    :goto_41
    move/from16 v14, p4

    goto/16 :goto_117

    .line 3106
    :cond_45
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v14

    if-eqz v14, :cond_8d

    if-eqz p7, :cond_41

    if-nez p10, :cond_7f

    if-eqz v8, :cond_7f

    .line 3112
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7f

    .line 3113
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v14

    if-eqz v14, :cond_7f

    .line 3114
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7f

    iget-object v14, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_7f

    iget-object v14, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v15, v7, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget v12, v7, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    .line 3116
    invoke-virtual {v1, v14, v15, v12}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(Ljava/lang/String;II)Z

    move-result v12

    if-nez v12, :cond_7f

    const/4 v12, 0x1

    goto :goto_80

    :cond_7f
    const/4 v12, 0x0

    .line 3119
    :goto_80
    new-instance v14, Landroid/util/Pair;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v14, v7, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 3125
    :cond_8d
    invoke-virtual {v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetAdj()I

    move-result v12

    move/from16 v14, p4

    if-ge v12, v14, :cond_97

    goto/16 :goto_117

    :cond_97
    const/4 v12, -0x1

    if-nez v8, :cond_b1

    if-eq v10, v12, :cond_a2

    .line 3139
    iget v12, v7, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    if-eq v12, v10, :cond_a2

    goto/16 :goto_117

    :cond_a2
    if-ltz v9, :cond_ae

    .line 3142
    iget v12, v7, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v12, v9, :cond_ae

    goto/16 :goto_117

    :cond_ae
    const/16 v17, 0x1

    goto :goto_100

    .line 3149
    :cond_b1
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v15

    if-eqz v15, :cond_c3

    .line 3150
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c3

    const/4 v15, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v15, 0x0

    :goto_c4
    const/16 v17, 0x1

    if-nez v15, :cond_d1

    .line 3151
    iget v13, v7, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-eq v13, v9, :cond_d1

    goto :goto_117

    :cond_d1
    if-eq v10, v12, :cond_d8

    .line 3154
    iget v12, v7, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    if-eq v12, v10, :cond_d8

    goto :goto_117

    .line 3157
    :cond_d8
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e5

    if-nez v15, :cond_e5

    goto :goto_117

    :cond_e5
    if-nez v12, :cond_100

    if-eqz v15, :cond_100

    if-nez p10, :cond_100

    .line 3161
    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_100

    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v13, v7, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget v15, v7, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    .line 3162
    invoke-virtual {v1, v12, v13, v15}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(Ljava/lang/String;II)Z

    move-result v12

    if-nez v12, :cond_100

    move/from16 v12, v17

    goto :goto_101

    :cond_100
    :goto_100
    const/4 v12, 0x0

    :goto_101
    if-nez p7, :cond_104

    return v17

    :cond_104
    if-eqz p9, :cond_10b

    move/from16 v13, v17

    .line 3174
    invoke-virtual {v7, v13}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 3176
    :cond_10b
    new-instance v13, Landroid/util/Pair;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v13, v7, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_117
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_31

    :cond_11b
    move/from16 v14, p4

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1e

    :cond_121
    const/16 v1, 0x2710

    if-lt v9, v1, :cond_12b

    const/16 v1, 0x4e1f

    if-gt v9, v1, :cond_12b

    const/4 v13, 0x1

    goto :goto_12c

    :cond_12b
    const/4 v13, 0x0

    :goto_12c
    if-eqz v13, :cond_136

    .line 3184
    new-instance v1, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_136
    const/4 v12, 0x0

    .line 3188
    :goto_137
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_1a2

    .line 3189
    invoke-static {v11, v12}, Lcom/android/server/am/ProcessList;->getUIDSublist(Ljava/util/List;I)Ljava/util/List;

    move-result-object v14

    const/4 v1, 0x0

    .line 3190
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget v15, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-eqz v13, :cond_159

    .line 3194
    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v1, v9, :cond_159

    const/16 v18, 0x1

    goto :goto_15b

    :cond_159
    const/16 v18, 0x0

    :goto_15b
    if-eqz v18, :cond_160

    .line 3196
    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/ProcessList;->freezeBinderAndPackageCgroup(Ljava/util/List;I)V

    .line 3198
    :cond_160
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_164
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_193

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3199
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-nez p6, :cond_183

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_181

    goto :goto_183

    :cond_181
    const/4 v3, 0x0

    goto :goto_184

    :cond_183
    :goto_183
    const/4 v3, 0x1

    :goto_184
    xor-int/lit8 v7, v18, 0x1

    move/from16 v4, p11

    move/from16 v5, p12

    move-object/from16 v6, p13

    move-object v1, v2

    move/from16 v2, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    goto :goto_164

    :cond_193
    const/4 v1, 0x0

    .line 3202
    invoke-virtual {v0, v8, v9, v10, v1}, Lcom/android/server/am/ProcessList;->killAppZygotesLocked(Ljava/lang/String;IIZ)V

    if-eqz v18, :cond_19c

    .line 3204
    invoke-static {v15}, Lcom/android/server/am/ProcessList;->unfreezePackageCgroup(I)Z

    .line 3206
    :cond_19c
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v12, v1

    goto :goto_137

    .line 3208
    :cond_1a2
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(I)V

    .line 3209
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1b2

    const/16 v17, 0x1

    return v17

    :cond_1b2
    const/16 v16, 0x0

    return v16
.end method

.method public killProcessesWhenImperceptible([ILjava/lang/String;I)V
    .registers 9

    .line 5730
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 5734
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 5736
    :goto_e
    :try_start_e
    array-length v2, p1

    if-ge v1, v2, :cond_31

    .line 5737
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_29

    .line 5738
    :try_start_16
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 5739
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_2e

    if-eqz v3, :cond_2b

    .line 5741
    :try_start_23
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->enqueueLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_29

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_36

    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :catchall_2e
    move-exception p0

    .line 5739
    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p0

    .line 5744
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_36
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$handleProcessStart$1(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 28

    .line 2234
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    .line 2235
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    .line 2236
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSeInfo()Ljava/lang/String;

    move-result-object v10

    .line 2237
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v14
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_10} :catch_44

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    .line 2234
    :try_start_24
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 2239
    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_2e} :catch_40

    move-wide/from16 v5, p10

    .line 2240
    :try_start_30
    invoke-virtual {v1, v4, v0, v5, v6}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z

    .line 2241
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_3a

    :try_start_34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception v0

    goto :goto_4a

    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_40} :catch_38

    :catch_40
    move-exception v0

    :goto_41
    move-wide/from16 v5, p10

    goto :goto_4a

    :catch_44
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    goto :goto_41

    .line 2243
    :goto_4a
    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 2244
    :try_start_50
    const-string v3, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure starting process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2246
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    const/4 v0, 0x0

    .line 2247
    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2248
    iget-object v5, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v4, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 2249
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    iget v14, v4, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    const-string/jumbo v15, "start failure"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 2248
    invoke-virtual/range {v5 .. v15}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;)Z

    .line 2251
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->doEarlyCleanupIfNecessaryLocked()V

    .line 2252
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_50 .. :try_end_8f} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_93
    move-exception v0

    :try_start_94
    monitor-exit v2
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final synthetic lambda$killAppIfBgRestrictedAndCachedIdleLocked$5(JLcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 5654
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    return-void
.end method

.method public final synthetic lambda$startProcessLocked$0(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    .line 2200
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final synthetic lambda$updateBackgroundRestrictedForUidPackageLocked$4(Ljava/lang/String;ZJLcom/android/server/am/ProcessRecord;)V
    .registers 9

    .line 5593
    iget-object v0, p5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 5594
    invoke-virtual {p5, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setBackgroundRestricted(Z)V

    if-eqz p2, :cond_37

    .line 5596
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {p1, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5597
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3c

    .line 5599
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v2, 0x3a

    if-nez v1, :cond_2e

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 5601
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 5602
    :cond_2e
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sub-long/2addr p1, p3

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3c

    .line 5606
    :cond_37
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {p1, p5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 5608
    :cond_3c
    :goto_3c
    invoke-virtual {p5}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result p1

    if-nez p1, :cond_47

    .line 5609
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p5}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_47
    return-void
.end method

.method public final needsStorageDataIsolation(Lcom/android/server/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    .line 2442
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getMountMode()I

    move-result v0

    .line 2443
    iget-boolean p0, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    if-eqz p0, :cond_25

    iget p0, p2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p0

    if-eqz p0, :cond_25

    iget p0, p2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 2444
    invoke-virtual {p1, p0}, Lcom/android/server/StorageManagerInternal;->isExternalStorageService(I)Z

    move-result p0

    if-nez p0, :cond_25

    const/4 p0, 0x4

    if-eq v0, p0, :cond_25

    const/4 p0, 0x3

    if-eq v0, p0, :cond_25

    const/4 p0, 0x2

    if-eq v0, p0, :cond_25

    if-eqz v0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 18

    if-eqz p2, :cond_4

    :goto_2
    move-object v3, p2

    goto :goto_7

    .line 3402
    :cond_4
    iget-object p2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    goto :goto_2

    .line 3403
    :goto_7
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 3404
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p5, :cond_12

    move v0, p6

    .line 3408
    :cond_12
    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    if-eqz p5, :cond_1d

    if-nez p7, :cond_25

    .line 3409
    :cond_1d
    const-string p0, "ActivityManager"

    const-string p1, "Abort creating new sandbox process as required parameters are missing."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_25
    if-eqz p3, :cond_5c

    if-nez p4, :cond_3a

    move-object/from16 v8, p8

    .line 3414
    invoke-virtual {p0, p1, v8}, Lcom/android/server/am/ProcessList;->getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    if-nez v0, :cond_32

    return-object v2

    .line 3418
    :cond_32
    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->allocateIsolatedUidLocked(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3d

    return-object v2

    :cond_3a
    move-object/from16 v8, p8

    move v0, p4

    .line 3427
    :cond_3d
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, v1, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->addIsolatedUid(II)V

    .line 3428
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->addIsolatedUid(II)V

    .line 3436
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/BatteryStatsService;->addIsolatedUid(II)V

    :goto_5a
    move v4, v0

    goto :goto_5f

    :cond_5c
    move-object/from16 v8, p8

    goto :goto_5a

    .line 3438
    :goto_5f
    new-instance v0, Lcom/android/server/am/ProcessRecord;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3440
    invoke-virtual {v8}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v6

    invoke-virtual {v8}, Lcom/android/server/am/HostingRecord;->getDefiningProcessName()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 3443
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_95

    .line 3448
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    .line 3460
    invoke-virtual {v8}, Lcom/android/server/am/HostingRecord;->isTypeActivity()Z

    move-result v7

    if-eqz v7, :cond_92

    if-nez v1, :cond_89

    move v1, v4

    goto :goto_8a

    :cond_89
    move v1, v5

    .line 3466
    :goto_8a
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowProcessController;->setStoppedState(I)V

    goto :goto_95

    .line 3470
    :cond_92
    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessRecord;->setWasForceStopped(Z)V

    :cond_95
    :goto_95
    if-nez p3, :cond_bc

    if-nez p5, :cond_bc

    if-nez p2, :cond_bc

    .line 3477
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v1, 0x9

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_bc

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3480
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_bc

    .line 3482
    invoke-virtual {v0, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurrentSchedulingGroup(I)V

    .line 3483
    invoke-virtual {v0, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSetSchedGroup(I)V

    .line 3484
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 3485
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 p2, -0x320

    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/ProcessStateController;->setMaxAdj(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    :cond_bc
    if-eqz p3, :cond_c9

    if-eqz p4, :cond_c9

    .line 3490
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 p2, -0x2bc

    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/ProcessStateController;->setMaxAdj(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    .line 3492
    :cond_c9
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V

    return-object v0
.end method

.method public noteAppKill(IIIILjava/lang/String;)V
    .registers 9

    .line 5715
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 5716
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 5717
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_32

    if-eqz v0, :cond_2c

    .line 5718
    iget v1, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-ne v1, p2, :cond_2c

    iget-boolean v1, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 5720
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5721
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5723
    :cond_2c
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(IIIILjava/lang/String;)V

    return-void

    :catchall_32
    move-exception v0

    move-object p0, v0

    .line 5717
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_32

    throw p0
.end method

.method public noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .registers 8

    .line 5698
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_20

    iget-boolean v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    if-nez v0, :cond_20

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 5700
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5701
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5703
    :cond_20
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    return-void
.end method

.method public noteAppRecoverableCrash(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 5684
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppRecoverableCrash(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public noteProcessDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    .line 5666
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->processDied(Ljava/lang/String;I)V

    .line 5667
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 5668
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2c

    .line 5670
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5671
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5673
    :cond_2c
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteProcessDied(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public final offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I
    .registers 7

    .line 3680
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setLastActivityTime(J)V

    .line 3682
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result p2

    if-eqz p2, :cond_b

    const/4 p0, -0x1

    return p0

    .line 3687
    :cond_b
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_41

    .line 3689
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Adding dependent process "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not on LRU list: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    return p0
.end method

.method public onLmkdConnect(Ljava/io/OutputStream;)Z
    .registers 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1678
    :try_start_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x3

    .line 1679
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1680
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1681
    iget-boolean v2, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4f

    .line 1683
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    mul-int/2addr v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1684
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move v2, v1

    .line 1685
    :goto_29
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v4, v4

    if-ge v2, v4, :cond_44

    .line 1686
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v4, v4, v2

    mul-int/lit16 v4, v4, 0x400

    sget v5, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    div-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1687
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 1689
    :cond_44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, p0, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_4f
    const/16 p0, 0x8

    .line 1692
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x5

    .line 1693
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1694
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1695
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v4, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1698
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 1699
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1700
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1701
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7c} :catch_7d

    return v3

    :catch_7d
    return v1
.end method

.method public onSystemReady()V
    .registers 2

    .line 1014
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    invoke-virtual {v0}, Lcom/android/server/am/AppStartInfoTracker;->onSystemReady()V

    .line 1015
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->onSystemReady()V

    return-void
.end method

.method public final printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 6

    .line 4950
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x20

    if-ltz p3, :cond_14

    .line 4952
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const/16 v1, 0xa

    if-ge p3, v1, :cond_1b

    .line 4953
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_1b

    :cond_14
    const/16 v1, -0xa

    if-le p3, v1, :cond_1b

    .line 4955
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4957
    :cond_1b
    :goto_1b
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 4958
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4959
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4960
    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4961
    invoke-virtual {p0, p3}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide p2

    const/16 p0, 0x400

    invoke-static {p2, p3, p0}, Lcom/android/server/am/ActivityManagerService;->stringifySize(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4962
    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public registerProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 3

    .line 5012
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 5013
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5014
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 9

    .line 2965
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_8f

    .line 2967
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    .line 2968
    :try_start_f
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v3

    if-nez v3, :cond_72

    .line 2969
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2970
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing persistent process that hasn\'t been killed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :catchall_32
    move-exception p0

    goto :goto_8a

    .line 2972
    :cond_34
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing process that hasn\'t been killed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    if-lez v3, :cond_6e

    .line 2974
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2975
    iget v3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    const/16 v5, 0x10

    .line 2976
    invoke-static {v5}, Landroid/app/ApplicationExitInfo;->subreasonToString(I)Ljava/lang/String;

    move-result-object v6

    .line 2975
    invoke-static {v3, v4, v6}, Lcom/android/server/am/ProcessList;->killProcessGroup(IILjava/lang/String;)V

    .line 2977
    const-string v3, "hasn\'t been killed"

    const/16 v4, 0xd

    invoke-virtual {p0, p1, v4, v5, v3}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    goto :goto_72

    :cond_6e
    const/4 v3, 0x0

    .line 2980
    invoke-virtual {p1, v3}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2984
    :cond_72
    :goto_72
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v0, v3, :cond_79

    sub-int/2addr v3, v1

    .line 2985
    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 2987
    :cond_79
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v0, v3, :cond_80

    sub-int/2addr v3, v1

    .line 2988
    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2990
    :cond_80
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2991
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_f .. :try_end_86} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_8f

    :goto_8a
    :try_start_8a
    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 2993
    :cond_8f
    :goto_8f
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V

    return-void
.end method

.method public final removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    .line 2342
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2344
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 2343
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2346
    iget v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 2349
    :cond_19
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2350
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 2349
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AppZygote;

    if-eqz v0, :cond_67

    .line 2352
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2353
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2354
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_67

    .line 2355
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x47

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2356
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_54

    const/4 p1, 0x0

    .line 2359
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    return-void

    .line 2361
    :cond_54
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2362
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2363
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_67
    return-void
.end method

.method public removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z
    .registers 15

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 3222
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z
    .registers 18

    .line 3229
    iget-object v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 3230
    iget v3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 3234
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    if-eq v4, p1, :cond_26

    .line 3237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring remove of inactive process: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 3240
    :cond_26
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 3241
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 3244
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    if-lez v7, :cond_3e

    .line 3245
    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v7, v2, :cond_46

    :cond_3e
    if-nez v7, :cond_c9

    .line 3246
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v2

    if-eqz v2, :cond_c9

    :cond_46
    if-lez v7, :cond_7d

    .line 3248
    invoke-virtual {p1, v5}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    .line 3249
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3250
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessFinish(Ljava/lang/String;I)V

    .line 3251
    iget-boolean v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    if-eqz v2, :cond_7d

    .line 3252
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->removeIsolatedUid(II)V

    .line 3253
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->removeIsolatedUid(I)V

    .line 3257
    :cond_7d
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_90

    iget-boolean v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    if-nez v2, :cond_90

    const/4 v2, 0x1

    if-nez p2, :cond_8d

    move v8, v2

    move v9, v5

    goto :goto_92

    :cond_8d
    move v9, v2

    move v8, v5

    goto :goto_92

    :cond_90
    move v8, v5

    move v9, v8

    :goto_92
    const/4 v5, 0x1

    move-object v1, p1

    move v3, p4

    move v4, p5

    move-object/from16 v2, p6

    move/from16 v6, p7

    .line 3264
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZZ)V

    if-lez v7, :cond_a4

    .line 3269
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v7, p1}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 3271
    :cond_a4
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object v2, p1

    move v5, p3

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;IZZZ)V

    if-eqz v4, :cond_c8

    .line 3274
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ProcessStateController;->removeLruProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 3275
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object p0, v0

    move-object p1, v1

    move-object p4, v2

    move p5, v3

    move-object p2, v4

    move p3, v5

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZLjava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    :cond_c8
    return v9

    .line 3279
    :cond_c9
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v5
.end method

.method public removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z
    .registers 14

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 3215
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .registers 4

    const/4 v0, 0x0

    .line 3498
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    return-object p0
.end method

.method public removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 9

    .line 3504
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_c

    move-object v1, p3

    goto :goto_d

    :cond_c
    move-object v1, v0

    .line 3506
    :goto_d
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    if-eqz p3, :cond_17

    if-ne v0, p3, :cond_1c

    .line 3511
    :cond_17
    :try_start_17
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    :cond_1c
    if-eqz v1, :cond_5d

    .line 3514
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 3516
    invoke-virtual {p1, v1}, Lcom/android/server/am/UidRecord;->removeProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    .line 3517
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result p3

    if-nez p3, :cond_59

    .line 3522
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, -0x1

    const v4, -0x7fffffff

    invoke-virtual {p3, p1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 3524
    invoke-static {p2}, Lcom/android/server/am/EventLogTags;->writeAmUidStopped(I)V

    .line 3525
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActiveUids;->remove(I)V

    .line 3526
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    iget-object p3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, p3}, Lcom/android/server/am/FgsTempAllowList;->removeUid(I)V

    .line 3527
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 p3, 0x0

    const/16 v3, 0x14

    invoke-virtual {p1, p2, v3, p3}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessStateAndCapability(III)V

    .line 3530
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, p2, v3}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    goto :goto_59

    :catchall_57
    move-exception p0

    goto :goto_9c

    :cond_59
    :goto_59
    const/4 p1, 0x0

    .line 3533
    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessRecord;->setUidRecord(Lcom/android/server/am/UidRecord;)V

    .line 3536
    :cond_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_17 .. :try_end_5e} :catchall_57

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3537
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 3538
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    if-eqz v1, :cond_74

    .line 3540
    iget-boolean p1, v1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-eqz p1, :cond_74

    .line 3541
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessList;->removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_74
    if-eqz v1, :cond_96

    .line 3543
    iget-boolean p1, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    if-eqz p1, :cond_96

    .line 3544
    invoke-static {p2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p1

    .line 3545
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_96

    .line 3547
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3548
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_96

    .line 3549
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3553
    :cond_96
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-object v0

    .line 3536
    :goto_9c
    :try_start_9c
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_57

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public scheduleDispatchProcessDiedLocked(II)V
    .registers 7

    .line 5147
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5148
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_2b

    .line 5149
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    if-lez p1, :cond_28

    .line 5150
    iget v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v3, p1, :cond_28

    .line 5151
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5152
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_3b

    :cond_28
    :goto_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 5155
    :cond_2b
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5156
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 5157
    monitor-exit v0

    return-void

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_26

    throw p0
.end method

.method public searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;
    .registers 5

    if-eqz p1, :cond_1d

    .line 4361
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_39

    .line 4363
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4368
    :cond_1d
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_25
    if-ltz p1, :cond_39

    .line 4370
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    return-object v0

    :cond_36
    add-int/lit8 p1, p1, -0x1

    goto :goto_25

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method public sendPackageBroadcastLocked(I[Ljava/lang/String;I)V
    .registers 12

    .line 5284
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_3c

    .line 5285
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 5286
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_39

    const/4 v5, -0x1

    if-eq p3, v5, :cond_20

    .line 5287
    iget v5, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    if-ne v5, p3, :cond_39

    .line 5289
    :cond_20
    :try_start_20
    array-length v5, p2

    sub-int/2addr v5, v1

    :goto_22
    if-ltz v5, :cond_36

    if-nez v2, :cond_36

    .line 5290
    aget-object v6, p2, v5

    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    move v2, v1

    :cond_33
    add-int/lit8 v5, v5, -0x1

    goto :goto_22

    .line 5294
    :cond_36
    invoke-interface {v4, p1, p2}, Landroid/app/IApplicationThread;->dispatchPackageBroadcast(I[Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_39} :catch_39

    :catch_39
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_3c
    if-nez v2, :cond_45

    .line 5302
    :try_start_3e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_45} :catch_45

    :catch_45
    :cond_45
    return-void
.end method

.method public setAllHttpProxy()V
    .registers 7

    .line 3626
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 3627
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_4d

    .line 3628
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3629
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    .line 3633
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v5, :cond_4a

    if-eqz v3, :cond_4a

    iget-boolean v4, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_2e

    if-nez v4, :cond_4a

    .line 3635
    :try_start_2a
    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateHttpProxy()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_30
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_4a

    :catchall_2e
    move-exception p0

    goto :goto_59

    .line 3637
    :catch_30
    :try_start_30
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update http proxy for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 3642
    :cond_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_30 .. :try_end_4e} :catchall_2e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3643
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    return-void

    .line 3642
    :goto_59
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_2e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;
    .registers 48

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v2, p13

    const-wide/16 v5, 0x40

    .line 2458
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start proc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2460
    const-string/jumbo v7, "startProcess: asking zygote to start proc"

    invoke-virtual {v0, v2, v3, v7}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2461
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v17

    const/4 v7, 0x1

    if-eqz v17, :cond_36

    .line 2466
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->setHasForegroundActivities(Z)V

    goto :goto_36

    :catchall_31
    move-exception v0

    move-wide/from16 v31, v5

    goto/16 :goto_30c

    .line 2472
    :cond_36
    :goto_36
    iget-boolean v8, v0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_5e

    iget v8, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 2473
    invoke-static {v8}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v8

    if-nez v8, :cond_4f

    iget v8, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v8

    if-nez v8, :cond_4f

    iget-boolean v8, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    if-eqz v8, :cond_5e

    :cond_4f
    iget-object v8, v0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const-wide/32 v11, 0x89450c5

    .line 2475
    invoke-virtual {v8, v11, v12, v10}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_5e

    move v8, v7

    goto :goto_5f

    :cond_5e
    move v8, v9

    .line 2479
    :goto_5f
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v10

    .line 2484
    iget-boolean v11, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    if-eqz v11, :cond_70

    .line 2485
    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    goto :goto_85

    .line 2487
    :cond_70
    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 2489
    array-length v12, v11

    if-nez v12, :cond_85

    .line 2490
    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    .line 2493
    :cond_85
    :goto_85
    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10, v12}, Lcom/android/server/am/ProcessList;->hasAppStorage(Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;)Z

    move-result v12

    .line 2495
    invoke-virtual {v0, v10, v11, v4}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v13

    if-nez v13, :cond_94

    move v8, v9

    .line 2504
    :cond_94
    new-instance v14, Landroid/util/ArraySet;

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    invoke-direct {v14, v15}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2505
    array-length v15, v11
    :try_end_9c
    .catchall {:try_start_a .. :try_end_9c} :catchall_31

    move v5, v9

    :goto_9d
    if-ge v5, v15, :cond_ac

    :try_start_9f
    aget-object v6, v11, v5

    .line 2506
    invoke-interface {v14, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9d

    :catchall_a7
    move-exception v0

    const-wide/16 v31, 0x40

    goto/16 :goto_30c

    .line 2509
    :cond_ac
    new-array v5, v9, [Ljava/lang/String;

    .line 2510
    invoke-interface {v14, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 2509
    invoke-virtual {v0, v10, v5, v4}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_bb

    move v8, v9

    :cond_bb
    const/4 v6, 0x0

    if-nez v12, :cond_c7

    .line 2517
    iget-boolean v10, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    if-nez v10, :cond_c7

    move-object v5, v6

    move-object v13, v5

    move/from16 v21, v9

    goto :goto_c9

    :cond_c7
    move/from16 v21, v8

    .line 2523
    :goto_c9
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2524
    const-class v10, Lcom/android/server/StorageManagerInternal;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/StorageManagerInternal;

    .line 2526
    invoke-virtual {v0, v10, v1}, Lcom/android/server/am/ProcessList;->needsStorageDataIsolation(Lcom/android/server/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z

    move-result v11

    if-eqz v11, :cond_e9

    if-eqz v13, :cond_e6

    .line 2529
    invoke-virtual {v10, v8}, Lcom/android/server/StorageManagerInternal;->isFuseMounted(I)Z

    move-result v11

    if-eqz v11, :cond_e6

    move/from16 v22, v7

    goto :goto_eb

    .line 2534
    :cond_e6
    invoke-virtual {v1, v7}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    :cond_e9
    move/from16 v22, v9

    .line 2541
    :goto_eb
    iget-boolean v11, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    if-eqz v11, :cond_f2

    move-object/from16 v20, v6

    goto :goto_f5

    :cond_f2
    move-object v6, v5

    move-object/from16 v20, v13

    .line 2547
    :goto_f5
    sget-boolean v5, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v5, :cond_fd

    sget-boolean v5, Landroid/os/Build;->IS_ENG:Z

    if-eqz v5, :cond_123

    .line 2548
    :cond_fd
    const-string v5, "app_compat"

    const-string v11, "appcompat_sysprop_override_pkgs"

    const-string v12, ""

    invoke-static {v5, v11, v12}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v11, ","

    .line 2550
    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2551
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getProcessPackageNames()[Ljava/lang/String;

    move-result-object v11

    move v12, v9

    .line 2552
    :goto_112
    array-length v13, v11

    if-ge v12, v13, :cond_123

    .line 2553
    aget-object v13, v11, v12

    invoke-static {v5, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_120

    move/from16 v23, v7

    goto :goto_125

    :cond_120
    add-int/lit8 v12, v12, 0x1

    goto :goto_112

    :cond_123
    move/from16 v23, v9

    .line 2560
    :goto_125
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v5, :cond_154

    .line 2562
    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_151

    .line 2565
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v11
    :try_end_141
    .catchall {:try_start_9f .. :try_end_141} :catchall_a7

    .line 2566
    :try_start_141
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2567
    monitor-exit v11
    :try_end_147
    .catchall {:try_start_141 .. :try_end_147} :catchall_14b

    :try_start_147
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_14a
    .catchall {:try_start_147 .. :try_end_14a} :catchall_a7

    goto :goto_151

    :catchall_14b
    move-exception v0

    :try_start_14c
    monitor-exit v11
    :try_end_14d
    .catchall {:try_start_14c .. :try_end_14d} :catchall_14b

    :try_start_14d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2569
    :cond_151
    :goto_151
    invoke-virtual {v1, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setBackgroundRestricted(Z)V

    .line 2574
    :cond_154
    iput-boolean v9, v1, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    .line 2575
    iput-boolean v9, v1, Lcom/android/server/am/ProcessRecord;->mSkipProcessGroupCreation:Z

    .line 2576
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v11

    .line 2577
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v5

    if-eqz v5, :cond_1c0

    .line 2578
    iget-object v3, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2582
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v16
    :try_end_174
    .catchall {:try_start_14d .. :try_end_174} :catchall_a7

    const-wide/16 v5, 0x40

    :try_start_176
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v17

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_17f
    .catchall {:try_start_176 .. :try_end_17f} :catchall_31

    :try_start_17f
    const-string/jumbo v5, "seq="

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19
    :try_end_194
    .catchall {:try_start_17f .. :try_end_194} :catchall_a7

    const/4 v14, 0x0

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v27, v8

    move/from16 v24, v9

    move-object/from16 v28, v10

    move-wide/from16 v29, v11

    const-wide/16 v31, 0x40

    move/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move v9, v2

    move-object/from16 v2, p2

    .line 2578
    :try_start_1b0
    invoke-static/range {v2 .. v19}, Landroid/os/Process;->startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JJ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v2

    move/from16 v4, p4

    move-object/from16 v17, v20

    :goto_1b8
    move/from16 v7, v24

    const/4 v3, 0x1

    goto/16 :goto_27e

    :catchall_1bd
    move-exception v0

    goto/16 :goto_30c

    :cond_1c0
    move/from16 v27, v8

    move/from16 v24, v9

    move-object/from16 v28, v10

    move-wide/from16 v29, v11

    const-wide/16 v31, 0x40

    .line 2584
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v2

    if-eqz v2, :cond_221

    .line 2585
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;

    move-result-object v2

    .line 2588
    iget-object v4, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2592
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v16

    move/from16 v15, v17

    move-object/from16 v17, v20

    .line 2593
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "seq="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2594
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v21

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v18, v6

    move-object/from16 v6, p5

    .line 2588
    invoke-virtual/range {v2 .. v21}, Landroid/os/AppZygote;->startProcess(Ljava/lang/String;Ljava/lang/String;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[JLjava/util/Map;Ljava/util/Map;J[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v2

    move/from16 v4, p4

    goto :goto_1b8

    :cond_221
    move-object/from16 v18, v6

    move/from16 v15, v17

    move-object/from16 v17, v20

    .line 2597
    iget-object v3, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v18

    .line 2601
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v18

    .line 2604
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "seq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2605
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    move/from16 v5, p4

    move/from16 v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v16, p7

    move/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v14, p12

    move-object/from16 v19, v17

    move/from16 v17, v15

    move-object v15, v2

    move-object/from16 v2, p2

    .line 2597
    invoke-static/range {v2 .. v26}, Landroid/os/Process;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZJ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v2

    move-object/from16 v17, v19

    const/4 v3, 0x1

    .line 2607
    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    move v7, v3

    .line 2610
    :goto_27e
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    move-wide/from16 v8, v29

    invoke-virtual {v5, v1, v8, v9, v3}, Lcom/android/server/am/AppStartInfoTracker;->addTimestampToStart(Lcom/android/server/am/ProcessRecord;JI)V

    if-nez v7, :cond_2f1

    .line 2615
    monitor-enter p3
    :try_end_288
    .catchall {:try_start_1b0 .. :try_end_288} :catchall_1bd

    .line 2616
    :try_start_288
    iget-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->mSkipProcessGroupCreation:Z

    if-nez v5, :cond_2ed

    .line 2618
    iget v5, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-static {v4, v5}, Landroid/os/Process;->createProcessGroup(II)I

    move-result v4

    if-gez v4, :cond_2eb

    .line 2620
    sget v3, Landroid/system/OsConstants;->ESRCH:I

    neg-int v3, v3

    if-ne v4, v3, :cond_2c3

    .line 2621
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create process group for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ed

    :catchall_2c1
    move-exception v0

    goto :goto_2ef

    .line 2625
    :cond_2c3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create process group for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2629
    :cond_2eb
    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    .line 2632
    :cond_2ed
    :goto_2ed
    monitor-exit p3

    goto :goto_2f1

    :goto_2ef
    monitor-exit p3
    :try_end_2f0
    .catchall {:try_start_288 .. :try_end_2f0} :catchall_2c1

    :try_start_2f0
    throw v0

    :cond_2f1
    :goto_2f1
    if-eqz v22, :cond_300

    .line 2639
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v1, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    move/from16 v4, v27

    move-object/from16 v10, v28

    invoke-virtual {v10, v4, v3, v1}, Lcom/android/server/StorageManagerInternal;->prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z

    .line 2642
    :cond_300
    const-string/jumbo v1, "startProcess: returned from zygote!"

    move-wide/from16 v3, p13

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V
    :try_end_308
    .catchall {:try_start_2f0 .. :try_end_308} :catchall_1bd

    .line 2645
    invoke-static/range {v31 .. v32}, Landroid/os/Trace;->traceEnd(J)V

    return-object v2

    :goto_30c
    invoke-static/range {v31 .. v32}, Landroid/os/Trace;->traceEnd(J)V

    .line 2646
    throw v0
.end method

.method public startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/server/am/ProcessRecord;
    .registers 31

    move-object/from16 v1, p2

    .line 2679
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    const/4 v11, 0x0

    if-nez p8, :cond_6b

    .line 2683
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2684
    const-string/jumbo v2, "startProcess: after getProcessRecord"

    invoke-virtual {p0, v9, v10, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_29

    .line 2689
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/AppErrors;->isBadProcess(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6c

    return-object v11

    .line 2701
    :cond_29
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/AppErrors;->resetProcessCrashTime(Ljava/lang/String;I)V

    .line 2702
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/AppErrors;->isBadProcess(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 2703
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2704
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x7540

    .line 2703
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2706
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/AppErrors;->clearBadProcess(Ljava/lang/String;I)V

    if-eqz v0, :cond_6c

    .line 2708
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setBad(Z)V

    goto :goto_6c

    :cond_6b
    move-object v0, v11

    .line 2728
    :cond_6c
    :goto_6c
    const-string v12, "ActivityManager"

    if-eqz v0, :cond_e6

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    if-lez v2, :cond_e6

    if-nez p3, :cond_7e

    .line 2729
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v2

    if-eqz v2, :cond_84

    :cond_7e
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-nez v2, :cond_96

    .line 2734
    :cond_84
    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v1, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2735
    const-string/jumbo p1, "startProcess: done, added package to proc"

    invoke-virtual {p0, v9, v10, p1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    return-object v0

    .line 2742
    :cond_96
    const-string/jumbo v2, "startProcess: bad proc running, killing"

    invoke-virtual {p0, v9, v10, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2743
    iget v2, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    const-string/jumbo v4, "old process attached"

    invoke-static {v2, v3, v4}, Lcom/android/server/am/ProcessList;->killProcessGroup(IILjava/lang/String;)V

    .line 2744
    const-string/jumbo v2, "startProcess: done killing old proc"

    invoke-virtual {p0, v9, v10, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2746
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v2

    const-string v3, " is attached to a previous process"

    if-nez v2, :cond_cd

    .line 2748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    .line 2750
    :cond_cd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e3
    move-object v13, v0

    move-object v0, v11

    goto :goto_120

    :cond_e6
    if-nez p8, :cond_11f

    .line 2759
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_11d

    if-eqz v0, :cond_fd

    if-eq v0, v2, :cond_fd

    .line 2765
    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 2766
    iput-object v0, v2, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    goto :goto_fe

    :cond_fd
    move-object v0, v11

    .line 2770
    :goto_fe
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is attached to a previous process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2771
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getDyingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2770
    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11d
    move-object v13, v2

    goto :goto_120

    :cond_11f
    move-object v13, v11

    :goto_120
    if-nez v0, :cond_184

    .line 2776
    const-string/jumbo v0, "startProcess: creating new process record"

    invoke-virtual {p0, v9, v10, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v8, p5

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p11

    move-object/from16 v7, p12

    .line 2777
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    move v0, v3

    move-object v3, v1

    if-nez v4, :cond_165

    .line 2780
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed making new process record for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isolated="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 2784
    :cond_165
    iget-object p1, v4, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    move-object/from16 v0, p16

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashHandler(Ljava/lang/Runnable;)V

    move-object/from16 p1, p14

    .line 2785
    invoke-virtual {v4, p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->setIsolatedEntryPoint(Ljava/lang/String;)V

    move-object/from16 p1, p15

    .line 2786
    invoke-virtual {v4, p1}, Lcom/android/server/am/ProcessRecord;->setIsolatedEntryPointArgs([Ljava/lang/String;)V

    if-eqz v13, :cond_17c

    .line 2788
    iput-object v13, v4, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 2789
    iput-object v4, v13, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 2791
    :cond_17c
    const-string/jumbo p1, "startProcess: done creating new process record"

    invoke-virtual {p0, v9, v10, p1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object v0, v4

    goto :goto_196

    :cond_184
    move-object v3, v1

    .line 2794
    iget-object p1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v4, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, p1, v4, v5, v2}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2795
    const-string/jumbo p1, "startProcess: added package to existing proc"

    invoke-virtual {p0, v9, v10, p1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2800
    :goto_196
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez p1, :cond_1be

    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2801
    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityManagerService;->isAllowedWhileBooting(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-nez p1, :cond_1be

    if-nez p7, :cond_1be

    .line 2803
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b7

    .line 2804
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2808
    :cond_1b7
    const-string/jumbo p1, "startProcess: returning with proc on hold"

    invoke-virtual {p0, v9, v10, p1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    return-object v0

    .line 2812
    :cond_1be
    const-string/jumbo p1, "startProcess: stepping in to startProcess"

    invoke-virtual {p0, v9, v10, p1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object/from16 v8, p5

    move/from16 p1, p6

    move-object/from16 v2, p13

    .line 2814
    invoke-virtual {p0, v0, v8, p1, v2}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    move-result p1

    .line 2815
    const-string/jumbo v2, "startProcess: done starting proc!"

    invoke-virtual {p0, v9, v10, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    if-eqz p1, :cond_1d7

    return-object v0

    :cond_1d7
    return-object v11
.end method

.method public startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;I)V
    .registers 5

    const/4 v0, 0x0

    .line 2662
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    return-void
.end method

.method public startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z
    .registers 32

    move-object/from16 v1, p3

    const/4 v13, 0x1

    .line 2169
    invoke-virtual {v1, v13}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    const/4 v9, 0x0

    .line 2170
    invoke-virtual {v1, v9}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 2171
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    .line 2172
    :try_start_10
    invoke-virtual {v1, v9}, Lcom/android/server/am/psc/ProcessRecordInternal;->setKilledByAm(Z)V

    .line 2173
    invoke-virtual {v1, v9}, Lcom/android/server/am/psc/ProcessRecordInternal;->setKilled(Z)V

    .line 2174
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_165

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2175
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_49

    .line 2176
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startProcessLocked processName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with non-zero startSeq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2177
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2176
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :cond_49
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-eqz v0, :cond_74

    .line 2180
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startProcessLocked processName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with non-zero pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2181
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2180
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    const/4 v0, 0x0

    .line 2183
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setDisabledCompatChanges([J)V

    .line 2184
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setLoggableCompatChanges([J)V

    .line 2185
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    if-eqz v0, :cond_9c

    .line 2186
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Lcom/android/server/compat/PlatformCompat;->getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setDisabledCompatChanges([J)V

    .line 2187
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Lcom/android/server/compat/PlatformCompat;->getLoggableChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setLoggableCompatChanges([J)V

    .line 2188
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {v0}, Lcom/android/server/compat/PlatformCompat;->isLogChangeChecksToStatsd()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setLogChangeChecksToStatsD(Z)V

    .line 2190
    :cond_9c
    iget-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    const-wide/16 v4, 0x1

    add-long v11, v2, v4

    iput-wide v11, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    .line 2191
    invoke-virtual {v1, v11, v12}, Lcom/android/server/am/ProcessRecord;->setStartSeq(J)V

    move-object/from16 v3, p1

    move/from16 v2, p4

    move-object/from16 v4, p9

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    .line 2192
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ProcessRecord;->setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;JJ)V

    if-nez p12, :cond_c1

    .line 2193
    iget-object v0, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 2194
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bf

    goto :goto_c1

    :cond_bf
    move v0, v9

    goto :goto_c2

    :cond_c1
    :goto_c1
    move v0, v13

    .line 2193
    :goto_c2
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2195
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v11, v12, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2197
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v2, :cond_ef

    .line 2200
    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v13

    .line 2206
    :cond_ef
    :try_start_ef
    invoke-virtual/range {p0 .. p14}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 2210
    iget v1, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v0, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z
    :try_end_f7
    .catch Ljava/lang/RuntimeException; {:try_start_ef .. :try_end_f7} :catch_10e

    const/4 v2, 0x0

    move-object/from16 p4, p0

    move-object/from16 p5, p3

    move/from16 p7, v0

    move/from16 p6, v1

    move/from16 p10, v2

    move-wide/from16 p8, v11

    :try_start_104
    invoke-virtual/range {p4 .. p10}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    :try_end_107
    .catch Ljava/lang/RuntimeException; {:try_start_104 .. :try_end_107} :catch_10a

    move-object/from16 v1, p5

    goto :goto_15c

    :catch_10a
    move-exception v0

    move-object/from16 v1, p5

    goto :goto_111

    :catch_10e
    move-exception v0

    move-object/from16 v1, p3

    .line 2213
    :goto_111
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure starting process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2215
    invoke-virtual {v1, v9}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2216
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    iget v3, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    const-string/jumbo v4, "start failure"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 p4, p0

    move-object/from16 p5, v0

    move/from16 p6, v2

    move/from16 p13, v3

    move-object/from16 p14, v4

    move/from16 p7, v5

    move/from16 p8, v6

    move/from16 p9, v7

    move/from16 p10, v8

    move/from16 p11, v10

    move/from16 p12, v11

    invoke-virtual/range {p4 .. p14}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;)Z

    .line 2219
    :goto_15c
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    if-lez p0, :cond_163

    goto :goto_164

    :cond_163
    move v13, v9

    :goto_164
    return v13

    :catchall_165
    move-exception v0

    move-object p0, v0

    .line 2174
    :try_start_167
    monitor-exit v2
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_165

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z
    .registers 12

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    .line 2668
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z
    .registers 27

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    .line 1876
    const-string v1, "ActivityManager"

    const-string v0, "1"

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_10

    return v4

    .line 1879
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1880
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 1881
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    const/4 v8, 0x0

    if-lez v3, :cond_50

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v9, :cond_50

    .line 1882
    const-string/jumbo v3, "startProcess: removing from pids map"

    invoke-virtual {v2, v6, v7, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1883
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v9

    invoke-virtual {v3, v9, v5}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 1884
    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    .line 1885
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v9, 0x14

    invoke-virtual {v3, v9, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1886
    const-string/jumbo v3, "startProcess: done removing from pids map"

    invoke-virtual {v2, v6, v7, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1887
    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    const-wide/16 v9, 0x0

    .line 1888
    invoke-virtual {v5, v9, v10}, Lcom/android/server/am/ProcessRecord;->setStartSeq(J)V

    .line 1891
    :cond_50
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 1892
    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 1897
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1899
    const-string/jumbo v3, "startProcess: starting to update cpu stats"

    invoke-virtual {v2, v6, v7, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1900
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1901
    const-string/jumbo v3, "startProcess: done updating cpu stats"

    invoke-virtual {v2, v6, v7, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1904
    :try_start_6e
    iget v3, v5, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3
    :try_end_74
    .catch Ljava/lang/RuntimeException; {:try_start_6e .. :try_end_74} :catch_38b

    .line 1906
    :try_start_74
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10, v3}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_7f} :catch_38f
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_7f} :catch_38b

    .line 1911
    :try_start_7f
    iget v3, v5, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 1915
    iget-boolean v9, v5, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z
    :try_end_83
    .catch Ljava/lang/RuntimeException; {:try_start_7f .. :try_end_83} :catch_38b

    if-nez v9, :cond_107

    .line 1918
    :try_start_85
    const-string/jumbo v9, "startProcess: getting gids from package manager"

    invoke-virtual {v2, v6, v7, v9}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1919
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 1920
    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v5, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    const-wide/32 v13, 0x10000000

    invoke-interface {v9, v11, v13, v14, v12}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;JI)[I

    move-result-object v9

    .line 1922
    const-class v11, Lcom/android/server/StorageManagerInternal;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/StorageManagerInternal;

    .line 1924
    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v3, v12}, Lcom/android/server/StorageManagerInternal;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v12

    .line 1926
    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v3, v13}, Lcom/android/server/StorageManagerInternal;->hasExternalStorageAccess(ILjava/lang/String;)Z

    move-result v11
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_b4} :catch_ff
    .catch Ljava/lang/RuntimeException; {:try_start_85 .. :try_end_b4} :catch_f3

    .line 1935
    :try_start_b4
    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v13, :cond_f7

    iget-object v13, v13, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v13, :cond_f7

    .line 1936
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    sub-int/2addr v13, v4

    :goto_c1
    if-ltz v13, :cond_f7

    .line 1937
    iget-object v14, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v15, v15, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 1938
    invoke-virtual {v15, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_d1
    .catch Ljava/lang/RuntimeException; {:try_start_b4 .. :try_end_d1} :catch_f3

    move/from16 v16, v8

    :try_start_d3
    iget v8, v5, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    .line 1937
    invoke-virtual {v14, v15, v8}, Landroid/content/pm/PackageManagerInternal;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object v8

    if-eqz v8, :cond_ee

    .line 1940
    array-length v14, v8

    move/from16 v15, v16

    :goto_de
    if-ge v15, v14, :cond_ee

    aget v10, v8, v15

    .line 1941
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v9

    add-int/lit8 v15, v15, 0x1

    goto :goto_de

    :catch_e9
    move-exception v0

    :goto_ea
    move/from16 v19, v16

    goto/16 :goto_397

    :cond_ee
    add-int/lit8 v13, v13, -0x1

    move/from16 v8, v16

    goto :goto_c1

    :catch_f3
    move-exception v0

    move/from16 v16, v8

    goto :goto_ea

    :cond_f7
    move/from16 v16, v8

    .line 1947
    invoke-virtual {v2, v12, v3, v9, v11}, Lcom/android/server/am/ProcessList;->computeGidsForProcess(II[IZ)[I

    move-result-object v8

    move v10, v12

    goto :goto_10c

    :catch_ff
    move-exception v0

    move/from16 v16, v8

    .line 1929
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_107
    move/from16 v16, v8

    move/from16 v10, v16

    const/4 v8, 0x0

    .line 1949
    :goto_10c
    invoke-virtual {v5, v10}, Lcom/android/server/am/ProcessRecord;->setMountMode(I)V

    .line 1950
    const-string/jumbo v9, "startProcess: building args"

    invoke-virtual {v2, v6, v7, v9}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1951
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->isFactoryTestProcess()Z

    move-result v9

    if-eqz v9, :cond_121

    move/from16 v3, v16

    .line 1956
    :cond_121
    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_12b

    move v9, v4

    goto :goto_12d

    :cond_12b
    move/from16 v9, v16

    .line 1957
    :goto_12d
    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v11

    .line 1958
    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v12

    .line 1960
    iget-boolean v13, v5, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    if-eqz v13, :cond_158

    .line 1961
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    if-eqz v13, :cond_158

    .line 1963
    iget v14, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_14b

    move v14, v4

    goto :goto_14d

    :cond_14b
    move/from16 v14, v16

    :goto_14d
    or-int/2addr v9, v14

    .line 1964
    invoke-virtual {v13}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v14

    or-int/2addr v11, v14

    .line 1965
    invoke-virtual {v13}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v13

    or-int/2addr v12, v13

    :cond_158
    if-eqz v9, :cond_186

    .line 1978
    iget-object v13, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "art_verifier_verify_debuggable"

    invoke-static {v13, v14, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_182

    .line 1981
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ": ART verification disabled"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x2000303

    goto :goto_188

    :cond_182
    const v4, 0x2000103

    goto :goto_188

    :cond_186
    move/from16 v4, v16

    .line 1986
    :goto_188
    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v13, v13, 0x4000

    if-nez v13, :cond_196

    iget-object v13, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v13, v13, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z

    if-eqz v13, :cond_198

    :cond_196
    or-int/lit8 v4, v4, 0x8

    :cond_198
    if-eqz v11, :cond_19e

    const v11, 0x8000

    or-int/2addr v4, v11

    :cond_19e
    if-eqz v12, :cond_1a3

    const/high16 v11, 0x1000000

    or-int/2addr v4, v11

    .line 1995
    :cond_1a3
    const-string v11, "debug.checkjni"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b1

    or-int/lit8 v4, v4, 0x2

    .line 1998
    :cond_1b1
    const-string v11, "debug.generate-debug-info"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1999
    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_1bb
    .catch Ljava/lang/RuntimeException; {:try_start_d3 .. :try_end_1bb} :catch_e9

    const-string/jumbo v13, "true"

    if-nez v12, :cond_1c6

    :try_start_1c0
    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c8

    :cond_1c6
    or-int/lit8 v4, v4, 0x20

    .line 2002
    :cond_1c8
    const-string v11, "dalvik.vm.minidebuginfo"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2003
    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1da

    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1dc

    :cond_1da
    or-int/lit16 v4, v4, 0x800

    .line 2006
    :cond_1dc
    const-string v11, "debug.jni.logging"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1ea

    or-int/lit8 v4, v4, 0x10

    .line 2009
    :cond_1ea
    const-string v11, "debug.assert"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f8

    or-int/lit8 v4, v4, 0x4

    .line 2012
    :cond_1f8
    const-string v11, "debug.ignoreappsignalhandler"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_207

    const/high16 v0, 0x20000

    or-int/2addr v4, v0

    .line 2015
    :cond_207
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    if-eqz v0, :cond_21d

    iget-object v11, v5, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 2016
    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21d

    or-int/lit16 v4, v4, 0xe0

    .line 2021
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    iput-object v11, v0, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    goto :goto_21e

    :cond_21d
    const/4 v11, 0x0

    .line 2024
    :goto_21e
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v0

    if-nez v0, :cond_22e

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v0, :cond_230

    iget-boolean v0, v0, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    if-eqz v0, :cond_230

    :cond_22e
    or-int/lit16 v4, v4, 0x400

    :cond_230
    if-nez p4, :cond_275

    .line 2029
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_275

    .line 2030
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    .line 2031
    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getPolicy()I

    move-result v12

    .line 2030
    invoke-virtual {v0, v12}, Landroid/content/pm/ApplicationInfo;->maybeUpdateHiddenApiEnforcementPolicy(I)V

    .line 2032
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2033
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v0

    .line 2034
    sget v12, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    shl-int v12, v0, v12

    and-int/lit16 v13, v12, 0x3000

    if-ne v13, v12, :cond_25e

    or-int/2addr v4, v12

    if-eqz p5, :cond_275

    const/high16 v0, 0x40000

    or-int/2addr v4, v0

    goto :goto_275

    .line 2036
    :cond_25e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid API policy: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2045
    :cond_275
    :goto_275
    const-string/jumbo v0, "persist.device_config.runtime_native.use_app_image_startup_cache"

    const-string v12, ""

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2048
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_28f

    const-string v12, "false"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28f

    const/high16 v0, 0x10000

    or-int/2addr v4, v0

    .line 2053
    :cond_28f
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v12

    const-wide/16 v14, 0x4000

    cmp-long v0, v12, v14

    if-nez v0, :cond_2b0

    .line 2054
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2056
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2057
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->isPageSizeCompatEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b0

    const/high16 v0, 0x4000000

    or-int/2addr v4, v0

    :cond_2b0
    if-eqz v9, :cond_2f4

    .line 2065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/wrap.sh"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2066
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v9
    :try_end_2cb
    .catch Ljava/lang/RuntimeException; {:try_start_1c0 .. :try_end_2cb} :catch_e9

    .line 2068
    :try_start_2cb
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2ea

    .line 2069
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/system/bin/logwrapper "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2e7
    .catchall {:try_start_2cb .. :try_end_2e7} :catchall_2e8

    goto :goto_2eb

    :catchall_2e8
    move-exception v0

    goto :goto_2f0

    :cond_2ea
    move-object v0, v11

    .line 2072
    :goto_2eb
    :try_start_2eb
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v14, v0

    goto :goto_2f5

    :goto_2f0
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2073
    throw v0

    :cond_2f4
    move-object v14, v11

    :goto_2f5
    if-eqz p6, :cond_2fa

    move-object/from16 v0, p6

    goto :goto_2fe

    .line 2076
    :cond_2fa
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    :goto_2fe
    if-nez v0, :cond_304

    .line 2078
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v16

    :cond_304
    move-object v12, v0

    .line 2082
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_311

    .line 2085
    invoke-static {v12}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_312

    :cond_311
    move-object v13, v11

    .line 2088
    :goto_312
    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessRecord;->setGids([I)V

    .line 2089
    invoke-virtual {v5, v12}, Lcom/android/server/am/ProcessRecord;->setRequiredAbi(Ljava/lang/String;)V

    .line 2090
    invoke-virtual {v5, v13}, Lcom/android/server/am/ProcessRecord;->setInstructionSet(Ljava/lang/String;)V

    .line 2097
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_331

    .line 2098
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v9}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2099
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2100
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_333

    .line 2102
    :cond_331
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2105
    :goto_333
    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v11, v2, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-static {v0, v9, v13, v11}, Lcom/android/internal/os/Zygote;->getMemorySafetyRuntimeFlags(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v0

    or-int/2addr v0, v4

    .line 2109
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_374

    .line 2110
    const-string v4, "SELinux tag not defined"

    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SELinux tag not defined for "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " (uid "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v5, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2115
    :cond_374
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->updateSeInfo(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v11

    .line 2121
    const-string v4, "android.app.ActivityThread"
    :try_end_37a
    .catch Ljava/lang/RuntimeException; {:try_start_2eb .. :try_end_37a} :catch_e9

    move/from16 v9, p3

    move/from16 v19, v16

    move-wide v15, v6

    move-object v7, v8

    move v8, v0

    move v6, v3

    move-object/from16 v3, p2

    :try_start_384
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v0

    return v0

    :catch_389
    move-exception v0

    goto :goto_397

    :catch_38b
    move-exception v0

    move/from16 v19, v8

    goto :goto_397

    :catch_38f
    move-exception v0

    move/from16 v19, v8

    .line 1908
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_397
    .catch Ljava/lang/RuntimeException; {:try_start_384 .. :try_end_397} :catch_389

    .line 2125
    :goto_397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure starting process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2133
    iget-object v4, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v5, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    iget v13, v5, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    const-string/jumbo v14, "start failure"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    invoke-virtual/range {v4 .. v14}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;)Z

    return v19
.end method

.method public unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 3

    .line 5018
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 5019
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 5020
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public updateAllTimePrefsLOSP(I)V
    .registers 6

    .line 3610
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_39

    .line 3611
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3612
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 3615
    :try_start_18
    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_36

    .line 3617
    :catch_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update preferences for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_39
    return-void
.end method

.method public updateApplicationInfoLOSP(Ljava/util/List;IZ)V
    .registers 14

    .line 5233
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 5234
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_2c

    .line 5235
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 5236
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    const-wide/16 v6, 0x400

    const/16 v8, 0x3e8

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 5239
    invoke-virtual {v3, v5, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    add-int/lit8 v0, v0, -0x1

    move p2, v9

    goto :goto_b

    :cond_2c
    move v9, p2

    .line 5242
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, v9, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityApplicationInfo(ILandroid/util/ArrayMap;)V

    .line 5245
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5246
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_41
    if-ltz p2, :cond_70

    .line 5247
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 5248
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_55

    :goto_52
    move-object v2, p1

    move v1, p3

    goto :goto_6b

    :cond_55
    const/4 v0, -0x1

    if-eq v9, v0, :cond_5d

    .line 5252
    iget v0, v4, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    if-eq v0, v9, :cond_5d

    goto :goto_52

    .line 5256
    :cond_5d
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v6

    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;

    move-object v2, p1

    move v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;-><init>(ZLjava/util/List;Landroid/util/ArrayMap;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    :goto_6b
    add-int/lit8 p2, p2, -0x1

    move p3, v1

    move-object p1, v2

    goto :goto_41

    :cond_70
    move v1, p3

    .line 5278
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, v5, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateAssetConfiguration(Ljava/util/List;Z)V

    return-void
.end method

.method public updateBackgroundRestrictedForUidPackageLocked(ILjava/lang/String;Z)V
    .registers 10

    .line 5589
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 5591
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 5592
    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/ProcessList;Ljava/lang/String;ZJ)V

    invoke-virtual {p1, v0}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    .line 5614
    iget-object p0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    :cond_1c
    return-void
.end method

.method public final updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V
    .registers 14

    .line 3761
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3762
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v1

    if-nez v1, :cond_131

    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isTreatLikeActivity()Z

    move-result v1

    if-nez v1, :cond_131

    .line 3763
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_131

    .line 3769
    :cond_16
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3770
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionGroup()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_82

    .line 3772
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionImportance()I

    move-result v0

    move v4, v0

    move v0, p4

    :goto_28
    if-lt p4, p3, :cond_81

    .line 3774
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 3775
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3776
    invoke-virtual {v6}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionGroup()I

    move-result v7

    .line 3777
    invoke-virtual {v6}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionImportance()I

    move-result v6

    .line 3778
    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v8, p1, :cond_7e

    if-ne v7, v1, :cond_7e

    if-ne p4, v0, :cond_4c

    if-lt v6, v4, :cond_4c

    :goto_48
    add-int/lit8 v0, v0, -0x1

    move v4, v6

    goto :goto_7e

    :cond_4c
    move v7, p2

    :goto_4d
    if-le v7, v0, :cond_70

    .line 3800
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 3801
    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3802
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionImportance()I

    move-result v8

    if-gt v6, v8, :cond_6d

    .line 3803
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3804
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    move v7, v2

    goto :goto_71

    :cond_6d
    add-int/lit8 v7, v7, -0x1

    goto :goto_4d

    :cond_70
    move v7, v3

    :goto_71
    if-nez v7, :cond_7e

    .line 3816
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3817
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_48

    :cond_7e
    :goto_7e
    add-int/lit8 p4, p4, -0x1

    goto :goto_28

    :cond_81
    move p4, v0

    :cond_82
    move p2, p4

    :goto_83
    if-lt p4, p3, :cond_131

    .line 3841
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3842
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3843
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionGroup()I

    move-result v4

    .line 3846
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, p1, :cond_12d

    if-ge p4, p2, :cond_ec

    move v5, v3

    move v6, v5

    move v7, v6

    .line 3854
    :goto_9e
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v8, p1, :cond_ec

    .line 3855
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3856
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p4, p4, -0x1

    if-ge p4, p3, :cond_b3

    goto :goto_ec

    .line 3863
    :cond_b3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3866
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v8

    if-nez v8, :cond_e5

    .line 3867
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isTreatLikeActivity()Z

    move-result v8

    if-eqz v8, :cond_c8

    goto :goto_e5

    .line 3877
    :cond_c8
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v8

    if-eqz v8, :cond_e9

    if-eqz v5, :cond_de

    if-eqz v6, :cond_ec

    .line 3881
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v8, :cond_d9

    goto :goto_ec

    :cond_d9
    if-eqz v7, :cond_ec

    if-eq v7, v4, :cond_e9

    goto :goto_ec

    .line 3901
    :cond_de
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move v5, v2

    move v7, v4

    goto :goto_e9

    :cond_e5
    :goto_e5
    if-eqz v5, :cond_e8

    goto :goto_ec

    :cond_e8
    move v5, v2

    :cond_e9
    :goto_e9
    add-int/lit8 p2, p2, -0x1

    goto :goto_9e

    :cond_ec
    :goto_ec
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p3, :cond_100

    .line 3913
    iget-object p4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/ProcessRecord;

    .line 3914
    iget-object p4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p4, p1, :cond_ff

    goto :goto_100

    :cond_ff
    goto :goto_ec

    :cond_100
    :goto_100
    if-lt p2, p3, :cond_12a

    .line 3922
    iget-object p4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/ProcessRecord;

    .line 3923
    iget-object p4, p4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3924
    invoke-virtual {p4}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionGroup()I

    move-result p4

    :cond_110
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p3, :cond_12a

    .line 3926
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3927
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionGroup()I

    move-result v1

    .line 3928
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_12a

    if-eq v1, p4, :cond_110

    :cond_12a
    move p4, p2

    goto/16 :goto_83

    :cond_12d
    add-int/lit8 p4, p4, -0x1

    goto/16 :goto_83

    :cond_131
    :goto_131
    return-void
.end method

.method public updateCoreSettingsLOSP(Landroid/os/Bundle;)V
    .registers 4

    .line 3561
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    .line 3562
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3563
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 3566
    :try_start_18
    invoke-interface {v1, p1}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    return-void
.end method

.method public final updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)V
    .registers 16

    .line 3975
    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 3976
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3977
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3978
    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setLastActivityTime(J)V

    if-eqz p3, :cond_23

    .line 3983
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_31

    .line 3984
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v2, v1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_31

    goto :goto_3f

    .line 3989
    :cond_23
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lez v2, :cond_31

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v2, v1

    .line 3990
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_31

    goto :goto_3f

    .line 3996
    :cond_31
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3998
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_40

    if-ltz v2, :cond_40

    :goto_3f
    return-void

    :cond_40
    if-ltz v2, :cond_55

    .line 4040
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v2, v3, :cond_49

    sub-int/2addr v3, v1

    .line 4041
    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 4043
    :cond_49
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v2, v3, :cond_50

    sub-int/2addr v3, v1

    .line 4044
    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4054
    :cond_50
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_55
    const/4 v9, 0x0

    if-eqz p3, :cond_a9

    .line 4070
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 4071
    iget p3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4072
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result p4

    if-nez p4, :cond_9b

    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isTreatLikeActivity()Z

    move-result p4

    if-nez p4, :cond_9b

    iget p4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr p2, v1

    if-ge p4, p2, :cond_9b

    .line 4081
    :goto_71
    iget p4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-le p2, p4, :cond_8b

    .line 4082
    iget-object p4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/ProcessRecord;

    .line 4083
    iget-object p4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p4, v2, :cond_88

    goto :goto_8b

    :cond_88
    add-int/lit8 p2, p2, -0x1

    goto :goto_71

    .line 4091
    :cond_8b
    :goto_8b
    iget-object p4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p4, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p4, p2, -0x1

    .line 4095
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge p4, v2, :cond_97

    move p4, v2

    .line 4099
    :cond_97
    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    goto :goto_e8

    .line 4103
    :cond_9b
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4104
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p4, p2, -0x1

    goto :goto_e8

    :cond_a9
    const/4 p3, -0x1

    if-eqz p4, :cond_bd

    .line 4109
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    iget p4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    invoke-virtual {p2, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4110
    iget p2, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4111
    iget p4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr p4, v1

    iput p4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    :cond_ba
    :goto_ba
    move p4, p3

    move p3, p2

    goto :goto_e8

    .line 4114
    :cond_bd
    iget p4, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-eqz p2, :cond_d0

    .line 4118
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p2

    if-gt p2, v2, :cond_ca

    goto :goto_cb

    :cond_ca
    move v2, p2

    :goto_cb
    if-ltz v2, :cond_d0

    if-le p4, v2, :cond_d0

    move p4, v2

    .line 4131
    :cond_d0
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p4, -0x1

    .line 4133
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 4134
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-le p4, v1, :cond_ba

    .line 4136
    invoke-virtual {p0, p1, v2, v9, p2}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    goto :goto_ba

    .line 4140
    :goto_e8
    iget p2, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-virtual {p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setLruSeq(I)V

    .line 4148
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 4149
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p2, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 4153
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v2

    sub-int/2addr v2, v1

    move v10, v2

    :goto_103
    if-ltz v10, :cond_173

    .line 4154
    invoke-virtual {v0, v10}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v7

    .line 4155
    iget-object v2, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v2, :cond_159

    iget-boolean v3, v7, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v3, :cond_159

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v2, :cond_159

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_159

    .line 4157
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLruSeq()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v2, v3, :cond_159

    const-wide/32 v2, 0x40000130

    .line 4158
    invoke-virtual {v7, v2, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->notHasFlag(J)Z

    move-result v2

    if-eqz v2, :cond_159

    iget-object v2, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4159
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-nez v2, :cond_159

    .line 4160
    iget-object v2, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v2

    if-eqz v2, :cond_15c

    if-ltz p4, :cond_159

    .line 4162
    iget-object v2, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v6, "service connection"

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessList;->offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    invoke-virtual {p2, p0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_16e

    :cond_159
    move-object v2, p0

    move-object v8, p1

    goto :goto_16e

    :cond_15c
    move-object v2, p0

    move-object v8, p1

    .line 4166
    iget-object p0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v6, "service connection"

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessList;->offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    invoke-virtual {p2, p0, v9}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :goto_16e
    add-int/lit8 v10, v10, -0x1

    move-object p0, v2

    move-object p1, v8

    goto :goto_103

    :cond_173
    move-object v2, p0

    move-object v8, p1

    .line 4171
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getProviders()Lcom/android/server/am/ProcessProviderRecord;

    move-result-object p0

    .line 4172
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_17e
    if-ltz p1, :cond_1a9

    .line 4173
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v0

    iget-object v7, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 4174
    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1a6

    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLruSeq()I

    move-result v0

    iget v1, v2, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_1a6

    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 4175
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_1a6

    .line 4176
    iget-object v3, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v6, "provider reference"

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessList;->offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    invoke-virtual {p2, v0, v9}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_1a6
    add-int/lit8 p1, p1, -0x1

    goto :goto_17e

    .line 4180
    :cond_1a9
    invoke-virtual {v2, p2, p4, p3}, Lcom/android/server/am/ProcessList;->completeLruProcessInternalLSP(Landroid/util/SparseBooleanArray;II)V

    return-void
.end method

.method public updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V
    .registers 7

    .line 3950
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3951
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v1

    if-nez v1, :cond_18

    .line 3952
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isTreatLikeActivity()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    move v0, v2

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    if-nez p2, :cond_1e

    if-eqz v0, :cond_1e

    goto :goto_2a

    .line 3962
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p2

    if-nez p2, :cond_2b

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result p2

    if-nez p2, :cond_2b

    :goto_2a
    return-void

    .line 3967
    :cond_2b
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p2

    .line 3968
    :try_start_31
    invoke-virtual {p0, p1, p3, v0, v2}, Lcom/android/server/am/ProcessList;->updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 3969
    monitor-exit p2
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit p2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final updateOomLevels(IIZ)V
    .registers 14

    .line 1058
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v2, 0x15e

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43af0000    # 350.0f

    div-float/2addr v0, v1

    mul-int/2addr p1, p2

    int-to-float p2, p1

    const v1, 0x5dc00

    int-to-float v1, v1

    sub-float/2addr p2, v1

    const v1, 0x9c400

    int-to-float v1, v1

    div-float/2addr p2, v1

    cmpl-float v1, v0, p2

    if-lez v1, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, p2

    :goto_1b
    const/4 p2, 0x0

    cmpg-float v1, v0, p2

    if-gez v1, :cond_22

    :goto_20
    move v0, p2

    goto :goto_29

    :cond_22
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v1, v0, p2

    if-lez v1, :cond_29

    goto :goto_20

    .line 1073
    :cond_29
    :goto_29
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e00df

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 1075
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1081
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_48

    move v2, v4

    goto :goto_49

    :cond_48
    move v2, v3

    :goto_49
    move v5, v3

    .line 1083
    :goto_4a
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v6, v6

    const/4 v7, 0x4

    if-ge v5, v6, :cond_74

    .line 1084
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v6, v6, v5

    .line 1085
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v8, v8, v5

    if-eqz v2, :cond_67

    if-ne v5, v7, :cond_61

    mul-int/lit8 v8, v8, 0x3

    .line 1088
    div-int/lit8 v8, v8, 0x2

    goto :goto_67

    :cond_61
    const/4 v9, 0x5

    if-ne v5, v9, :cond_67

    mul-int/lit8 v8, v8, 0x7

    .line 1089
    div-int/2addr v8, v7

    .line 1091
    :cond_67
    :goto_67
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v9, v6

    sub-int/2addr v8, v6

    int-to-float v6, v8

    mul-float/2addr v6, v0

    add-float/2addr v9, v6

    float-to-int v6, v9

    aput v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    :cond_74
    if-ltz v1, :cond_8f

    move v0, v3

    .line 1095
    :goto_77
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v5, v2

    if-ge v0, v5, :cond_8f

    .line 1096
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v6, v1

    aget v8, v5, v0

    int-to-float v8, v8

    mul-float/2addr v6, v8

    array-length v2, v2

    sub-int/2addr v2, v4

    aget v2, v5, v2

    int-to-float v2, v2

    div-float/2addr v6, v2

    float-to-int v2, v6

    aput v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    :cond_8f
    if-eqz p2, :cond_af

    move v0, v3

    .line 1102
    :goto_92
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ge v0, v2, :cond_af

    .line 1103
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v5, v2, v0

    int-to-float v6, p2

    int-to-float v8, v5

    mul-float/2addr v6, v8

    array-length v1, v1

    sub-int/2addr v1, v4

    aget v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v6, v1

    float-to-int v1, v6

    add-int/2addr v5, v1

    aput v5, v2, v0

    if-gez v5, :cond_ac

    .line 1106
    aput v3, v2, v0

    :cond_ac
    add-int/lit8 v0, v0, 0x1

    goto :goto_92

    :cond_af
    const/16 p2, 0x3e7

    .line 1114
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    const-wide/16 v5, 0x400

    div-long/2addr v0, v5

    const-wide/16 v5, 0x3

    div-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    mul-int/lit8 p1, p1, 0xc

    .line 1118
    div-int/lit16 p1, p1, 0x400

    .line 1119
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e00b6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 1121
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ltz v0, :cond_da

    move p1, v0

    :cond_da
    if-eqz p2, :cond_e0

    add-int/2addr p1, p2

    if-gez p1, :cond_e0

    move p1, v3

    :cond_e0
    if-eqz p3, :cond_11b

    .line 1136
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v4

    mul-int/2addr p2, v7

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 1137
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1138
    :goto_f0
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length p3, p3

    if-ge v3, p3, :cond_10b

    .line 1139
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget p3, p3, v3

    mul-int/lit16 p3, p3, 0x400

    sget v0, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    div-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1140
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget p3, p3, v3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f0

    :cond_10b
    const/4 p3, 0x0

    .line 1143
    invoke-static {p2, p3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1144
    const-string/jumbo p2, "sys.sysctl.extra_free_kbytes"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iput-boolean v4, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    :cond_11b
    return-void
.end method

.method public updateSeInfo(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .registers 5

    .line 2145
    iget-boolean v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    const-string v1, ""

    if-eqz v0, :cond_26

    .line 2146
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getProcessListSettingsListener()Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->applySdkSandboxRestrictionsNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2147
    const-string p0, ":isSdkSandboxNext"

    goto :goto_27

    .line 2148
    :cond_13
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->selinuxSdkSandboxAudit()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2149
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getProcessListSettingsListener()Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->applySdkSandboxRestrictionsAudit()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 2150
    const-string p0, ":isSdkSandboxAudit"

    goto :goto_27

    :cond_26
    move-object p0, v1

    .line 2155
    :goto_27
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->selinuxInputSelector()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2158
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_63

    goto :goto_67

    :cond_63
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    :goto_67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeProcessesToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .registers 15

    .line 4612
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v3, v1

    move v7, v3

    :goto_d
    if-ge v3, v0, :cond_51

    .line 4614
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 4615
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v1

    :goto_20
    if-ge v6, v5, :cond_4e

    .line 4616
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_35

    .line 4617
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_35

    goto :goto_4b

    .line 4620
    :cond_35
    iget-object v9, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 4621
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    const-wide v10, 0x20b00000001L

    .line 4620
    invoke-virtual {v8, p1, v10, v11, v9}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 4623
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_4b

    add-int/lit8 v7, v7, 0x1

    :cond_4b
    :goto_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 4629
    :cond_51
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_57
    if-ge v1, v0, :cond_7f

    .line 4630
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_6e

    .line 4631
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6e

    goto :goto_7c

    .line 4634
    :cond_6e
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 4635
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const-wide v5, 0x20b00000002L

    .line 4634
    invoke-virtual {v3, p1, v5, v6, v4}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    :goto_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 4639
    :cond_7f
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityManagerService;->getAppId(Ljava/lang/String;)I

    move-result v3

    .line 4640
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-wide v4, 0x20b00000004L

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    move v8, v3

    .line 4643
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    if-lez v1, :cond_d6

    const-wide v1, 0x10b00000006L

    .line 4644
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 4645
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    const-wide v2, 0x10500000001L

    .line 4646
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4647
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int v2, v1, v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4649
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v1, v2

    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4651
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const/4 v5, 0x1

    const-wide v1, 0x20b00000004L

    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->writeProcessOomListToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)Z

    .line 4654
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4657
    :cond_d6
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2, v8, v7}, Lcom/android/server/am/ActivityManagerService;->writeOtherProcessesInfoToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;II)V

    return-void
.end method
