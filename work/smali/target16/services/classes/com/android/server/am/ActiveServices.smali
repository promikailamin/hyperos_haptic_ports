.class public final Lcom/android/server/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# static fields
.field public static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field public static final sNumForegroundServices:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field public final mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

.field public mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public mAppStateTracker:Lcom/android/server/AppStateTracker;

.field public mAppWidgetManagerInternal:Landroid/appwidget/AppWidgetManagerInternal;

.field public mBindServiceSeqCounter:J

.field public mCachedDeviceProvisioningPackage:Ljava/lang/String;

.field public final mDestroyingServices:Ljava/util/ArrayList;

.field public final mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

.field public final mFgsAppOpCallbacks:Landroid/util/SparseArray;

.field public final mFgsDeferralEligible:Landroid/util/SparseLongArray;

.field public mFgsDeferralRateLimited:Z

.field public final mFgsDelegations:Landroid/util/ArrayMap;

.field public final mFgsObservers:Landroid/os/RemoteCallbackList;

.field public mLastAnrDump:Ljava/lang/String;

.field public final mLastAnrDumpClearer:Ljava/lang/Runnable;

.field public final mMaxStartingBackground:I

.field public mPendingBringups:Landroid/util/ArrayMap;

.field public final mPendingFgsNotifications:Ljava/util/ArrayList;

.field public final mPendingServices:Ljava/util/ArrayList;

.field public final mPostDeferredFGSNotifications:Ljava/lang/Runnable;

.field public final mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

.field public final mRestartingServices:Ljava/util/ArrayList;

.field public mScreenOn:Z

.field public final mServiceConnections:Landroid/util/ArrayMap;

.field public final mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

.field public final mServiceMap:Landroid/util/SparseArray;

.field public final mShortFGSAnrTimer:Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

.field public final mTimeLimitedFgsInfo:Landroid/util/SparseArray;

.field public mTmpCollectionResults:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$0qkjeNpxaTsg0ZNHkscOuBnZYxA(Lcom/android/server/am/ActiveServices;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices;->lambda$attachApplicationLocked$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$6TNWDsWZktLO4SAji1n-AbDocHs(Ljava/util/ArrayList;)V
    .registers 3

    const/4 v0, 0x0

    .line 7343
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 7344
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public static synthetic $r8$lambda$6UZVmEzbRvh3K-t1ovMgwDsBea8(Landroid/content/ServiceConnection;Landroid/content/ComponentName;Lcom/android/server/am/ForegroundServiceDelegation;)V
    .registers 3

    .line 9595
    iget-object p2, p2, Lcom/android/server/am/ForegroundServiceDelegation;->mBinder:Landroid/os/IBinder;

    invoke-interface {p0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$btpRyn2QvHxPy1BXkZJjoK5OB78(Lcom/android/server/am/ActiveServices;IZLcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->lambda$shouldAllowFgsStartForegroundNoBindingCheckLocked$7(IZLcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dtupl9fjxv8RDOZGvTs4p44nKJI(Lcom/android/server/am/ActiveServices;ILandroid/util/ArraySet;Lcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->lambda$shouldAllowFgsWhileInUsePermissionByBindingsLocked$5(ILandroid/util/ArraySet;Lcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jK_UxrI6agW1buIHNND7c_BI120(ILcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;
    .registers 3

    .line 8795
    iget v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-ne v0, p0, :cond_15

    .line 8796
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->areBackgroundFgsStartsAllowed()Z

    move-result p0

    if-eqz p0, :cond_15

    const/16 p0, 0x34

    .line 8797
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$p_X4sOJTkojjyDKVG3R4by9T9zs(Lcom/android/server/am/ActiveServices;ILandroid/util/ArraySet;Lcom/android/server/am/ProcessRecord;)Landroid/util/Pair;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->lambda$canBindingClientStartFgsLocked$6(ILandroid/util/ArraySet;Lcom/android/server/am/ProcessRecord;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u0_M56QId-Gw-qfZV42Z9_xVIIU(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ServiceRecord;)I
    .registers 4

    .line 5902
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide p0, p1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static synthetic $r8$lambda$uPw5lmk5q9J52kbSZGS3vk7wJdc(Lcom/android/server/am/ServiceRecord;)V
    .registers 2

    .line 6720
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

    iget-object v0, p0, Lcom/android/server/am/ForegroundServiceDelegation;->mConnection:Landroid/content/ServiceConnection;

    iget-object p0, p0, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    .line 6721
    invoke-virtual {p0}, Landroid/app/ForegroundServiceDelegationOptions;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    .line 6720
    invoke-interface {v0, p0}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingBringups(Lcom/android/server/am/ActiveServices;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbringUpServiceLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZZZI)Ljava/lang/String;
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetServiceMapLocked(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misForegroundServiceAllowedInBackgroundRestricted(Lcom/android/server/am/ActiveServices;ILjava/lang/String;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActiveServices;->isForegroundServiceAllowedInBackgroundRestricted(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misTempAllowedByAlarmClock(Lcom/android/server/am/ActiveServices;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->isTempAllowedByAlarmClock(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrequestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mstartServiceInnerLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IILjava/lang/String;IZZLandroid/app/BackgroundStartPrivileges;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 11

    .line 0
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IILjava/lang/String;IZZLandroid/app/BackgroundStartPrivileges;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 296
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    .line 297
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/am/ActiveServices;->sNumForegroundServices:Ljava/util/concurrent/atomic/AtomicReference;

    .line 542
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/ActiveServices;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 8

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 418
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    .line 447
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    .line 453
    iput-wide v0, p0, Lcom/android/server/am/ActiveServices;->mBindServiceSeqCounter:J

    const/4 v0, 0x1

    .line 462
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralRateLimited:Z

    .line 467
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralEligible:Landroid/util/SparseLongArray;

    .line 472
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsObservers:Landroid/os/RemoteCallbackList;

    .line 478
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    .line 481
    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 484
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    .line 490
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    .line 499
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    .line 522
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mTimeLimitedFgsInfo:Landroid/util/SparseArray;

    .line 537
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    .line 570
    new-instance v1, Lcom/android/server/am/ActiveServices$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$1;-><init>(Lcom/android/server/am/ActiveServices;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    .line 3247
    new-instance v1, Lcom/android/server/am/ActiveServices$5;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$5;-><init>(Lcom/android/server/am/ActiveServices;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mPostDeferredFGSNotifications:Ljava/lang/Runnable;

    .line 777
    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    .line 780
    :try_start_82
    const-string/jumbo v2, "ro.config.max_starting_bg"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_8f
    .catch Ljava/lang/RuntimeException; {:try_start_82 .. :try_end_8f} :catch_90

    goto :goto_91

    :catch_90
    move v2, v1

    :goto_91
    if-lez v2, :cond_94

    goto :goto_9e

    .line 784
    :cond_94
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_9c

    move v2, v0

    goto :goto_9e

    :cond_9c
    const/16 v2, 0x8

    :goto_9e
    iput v2, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    .line 786
    const-string/jumbo v2, "platform_compat"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 787
    new-instance v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    invoke-direct {v2}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    .line 788
    new-instance v2, Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    new-instance v3, Lcom/android/server/utils/AnrTimer$Args;

    invoke-direct {v3}, Lcom/android/server/utils/AnrTimer$Args;-><init>()V

    .line 791
    invoke-virtual {v3, v1}, Lcom/android/server/utils/AnrTimer$Args;->longMethodTracing(Z)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v3

    const/16 v4, 0xc

    const-string v5, "SERVICE_TIMEOUT"

    invoke-direct {v2, p1, v4, v5, v3}, Lcom/android/server/am/ActiveServices$ProcessAnrTimer;-><init>(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V

    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    .line 792
    new-instance v2, Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

    new-instance v3, Lcom/android/server/utils/AnrTimer$Args;

    invoke-direct {v3}, Lcom/android/server/utils/AnrTimer$Args;-><init>()V

    .line 795
    invoke-virtual {v3, v1}, Lcom/android/server/utils/AnrTimer$Args;->longMethodTracing(Z)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v3

    const/16 v4, 0x4e

    const-string v5, "SHORT_FGS_TIMEOUT"

    invoke-direct {v2, p1, v4, v5, v3}, Lcom/android/server/am/ActiveServices$ServiceAnrTimer;-><init>(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V

    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mShortFGSAnrTimer:Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

    .line 796
    new-instance v2, Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

    new-instance v3, Lcom/android/server/utils/AnrTimer$Args;

    invoke-direct {v3}, Lcom/android/server/utils/AnrTimer$Args;-><init>()V

    .line 800
    invoke-virtual {v3, v0}, Lcom/android/server/utils/AnrTimer$Args;->extend(Z)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v0

    .line 801
    invoke-virtual {v0, v1}, Lcom/android/server/utils/AnrTimer$Args;->longMethodTracing(Z)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v0

    const/16 v1, 0x42

    const-string v3, "SERVICE_FOREGROUND_TIMEOUT"

    invoke-direct {v2, p1, v1, v3, v0}, Lcom/android/server/am/ActiveServices$ServiceAnrTimer;-><init>(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V

    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

    return-void
.end method

.method public static fgsStopReasonToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    .line 9476
    const-string p0, "UNKNOWN"

    return-object p0

    .line 9472
    :cond_9
    const-string p0, "STOP_SERVICE"

    return-object p0

    .line 9474
    :cond_c
    const-string p0, "STOP_FOREGROUND"

    return-object p0
.end method

.method public static getClientPackages(Lcom/android/server/am/ServiceRecord;Landroid/util/ArraySet;)V
    .registers 7

    .line 9775
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p0

    .line 9776
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_32

    .line 9777
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 9778
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_2f

    .line 9779
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 9780
    iget-object v4, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2c

    .line 9781
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_32
    return-void
.end method

.method public static getProcessNameForService(Landroid/content/pm/ServiceInfo;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .registers 7

    if-eqz p4, :cond_3

    return-object p3

    .line 904
    :cond_3
    iget p4, p0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_44

    if-eqz p6, :cond_12

    .line 905
    invoke-static {p0}, Lcom/android/server/am/ActiveServices;->isDefaultProcessService(Landroid/content/pm/ServiceInfo;)Z

    move-result p4

    if-nez p4, :cond_12

    goto :goto_44

    :cond_12
    if-eqz p5, :cond_29

    .line 913
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":ishared:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 915
    :cond_29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 908
    :cond_44
    :goto_44
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public static isDefaultProcessService(Landroid/content/pm/ServiceInfo;)Z
    .registers 2

    .line 920
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static traceInstant(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V
    .registers 5

    const-wide/16 v0, 0x40

    .line 924
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-nez v2, :cond_9

    return-void

    .line 927
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 928
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_18
    const-string p1, "(?)"

    .line 929
    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void
.end method

.method public static traceInstantFgs(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V
    .registers 6

    const-wide/16 v0, 0x40

    .line 933
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-nez v2, :cond_9

    return-void

    .line 936
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 937
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    :cond_18
    const-string v2, "(?)"

    .line 938
    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; fgsType: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 938
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final appRestrictedAnyInBackground(ILjava/lang/String;)Z
    .registers 3

    .line 879
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices;->getAppStateTracker()Lcom/android/server/AppStateTracker;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 881
    invoke-interface {p0, p1, p2}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public applyForegroundServiceNotificationLocked(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .registers 9

    if-eqz p2, :cond_5

    .line 3067
    sget-object p0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object p0

    .line 3076
    :cond_5
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez p2, :cond_12

    .line 3079
    sget-object p0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object p0

    :cond_12
    const/4 p5, 0x0

    move v0, p5

    .line 3082
    :goto_14
    iget-object v1, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 3083
    iget-object v1, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 3084
    invoke-virtual {v1}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_52

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne p3, v2, :cond_52

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3086
    invoke-virtual {p4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_52

    .line 3098
    :cond_39
    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x40

    iput p2, p1, Landroid/app/Notification;->flags:I

    .line 3099
    iput-object p1, v1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 3102
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActiveServices;->shouldShowFgsNotificationLocked(Lcom/android/server/am/ServiceRecord;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 3107
    iput-boolean p5, v1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    .line 3108
    sget-object p0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->SHOW_IMMEDIATELY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object p0

    .line 3118
    :cond_4c
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActiveServices;->startFgsDeferralTimerLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3119
    sget-object p0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->UPDATE_ONLY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object p0

    :cond_52
    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 3123
    :cond_55
    sget-object p0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object p0
.end method

.method public attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    .line 7129
    iget v1, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->setBackgroundRestricted(Z)V

    .line 7132
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lez v1, :cond_10a

    const/4 v1, 0x0

    .line 7134
    :try_start_1e
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/4 v12, 0x6

    invoke-virtual {v3, v12}, Lcom/android/server/am/ProcessStateController;->startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object v13
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_e0

    move v3, v11

    move v4, v3

    .line 7136
    :goto_29
    :try_start_29
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_d9

    .line 7137
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_d6

    .line 7138
    :try_start_39
    iget-object v1, v5, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_d2

    if-eq v2, v1, :cond_59

    :try_start_3d
    iget v1, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v6, :cond_53

    iget-object v1, v5, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 7139
    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_4e

    if-nez v1, :cond_59

    goto :goto_53

    :catchall_4e
    move-exception v0

    move-object v1, v0

    move-object v15, v13

    goto/16 :goto_e2

    :cond_53
    :goto_53
    move-object v1, v5

    move-object v15, v13

    move v5, v4

    move v4, v12

    goto/16 :goto_c4

    .line 7143
    :cond_59
    :try_start_59
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    .line 7144
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    .line 7145
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v6

    .line 7146
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v14, v3, -0x1

    .line 7148
    iget-object v3, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_70
    .catchall {:try_start_59 .. :try_end_70} :catchall_d2

    move-object v15, v13

    :try_start_71
    iget-wide v12, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2, v7, v12, v13, v3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_cf

    const-wide/16 v12, 0x40

    .line 7151
    :try_start_7c
    invoke-static {v12, v13}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 7152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "realStartServiceLocked: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v13, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_99
    move-object v3, v6

    goto :goto_9e

    :catchall_9b
    move-exception v0

    move-object v1, v5

    goto :goto_cb

    .line 7155
    :goto_9e
    iget-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z
    :try_end_a0
    .catchall {:try_start_7c .. :try_end_a0} :catchall_9b

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v16, v3

    move-object v3, v1

    move-object v1, v5

    move-object/from16 v5, v16

    :try_start_a8
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;ZZI)V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ca

    .line 7158
    :try_start_ab
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 7161
    invoke-virtual {v0, v1, v11, v11}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v3

    if-nez v3, :cond_bc

    .line 7166
    invoke-virtual {v0, v1, v10}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_bc

    :catchall_b8
    move-exception v0

    :goto_b9
    move-object v5, v1

    :goto_ba
    move-object v1, v0

    goto :goto_e2

    .line 7173
    :cond_bc
    :goto_bc
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    move v5, v10

    move v3, v14

    :goto_c4
    add-int/2addr v3, v10

    move v12, v4

    move v4, v5

    move-object v13, v15

    goto/16 :goto_29

    :catchall_ca
    move-exception v0

    .line 7158
    :goto_cb
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 7159
    throw v0
    :try_end_cf
    .catchall {:try_start_ab .. :try_end_cf} :catchall_b8

    :catchall_cf
    move-exception v0

    move-object v1, v5

    goto :goto_ba

    :catchall_d2
    move-exception v0

    move-object v1, v5

    move-object v15, v13

    goto :goto_ba

    :catchall_d6
    move-exception v0

    move-object v15, v13

    goto :goto_b9

    :cond_d9
    move-object v15, v13

    if-eqz v15, :cond_10b

    .line 7176
    :try_start_dc
    invoke-virtual {v15}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_df
    .catch Landroid/os/RemoteException; {:try_start_dc .. :try_end_df} :catch_e0

    goto :goto_10b

    :catch_e0
    move-exception v0

    goto :goto_f1

    :goto_e2
    if-eqz v15, :cond_f0

    .line 7134
    :try_start_e4
    invoke-virtual {v15}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_e8

    goto :goto_f0

    :catchall_e8
    move-exception v0

    :try_start_e9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_f0

    :catch_ed
    move-exception v0

    move-object v1, v5

    goto :goto_f1

    :cond_f0
    :goto_f0
    throw v1
    :try_end_f1
    .catch Landroid/os/RemoteException; {:try_start_e9 .. :try_end_f1} :catch_ed

    .line 7177
    :goto_f1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in new application when starting service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7179
    throw v0

    :cond_10a
    move v4, v11

    .line 7186
    :cond_10b
    :goto_10b
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_15d

    move v1, v11

    .line 7189
    :goto_114
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_14f

    .line 7190
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 7191
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-eq v2, v5, :cond_139

    iget v5, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_14c

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 7192
    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_139

    goto :goto_14c

    .line 7195
    :cond_139
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7196
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v10

    :cond_14c
    :goto_14c
    add-int/lit8 v11, v11, 0x1

    goto :goto_114

    :cond_14f
    if-eqz v1, :cond_15d

    .line 7203
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ActiveServices;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15d
    return v4
.end method

.method public bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;ZILjava/lang/String;Landroid/app/IApplicationThread;Ljava/lang/String;I)I
    .registers 59

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 4118
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$Injector;->getCallingPid()I

    move-result v7

    .line 4119
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$Injector;->getCallingUid()I

    move-result v5

    .line 4120
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-eqz v4, :cond_73b

    const/16 v21, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_49

    .line 4130
    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v8, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getServiceConnectionsHolder(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    move-result-object v8

    if-nez v8, :cond_46

    .line 4132
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding with unknown activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_46
    move-object/from16 v22, v8

    goto :goto_4b

    :cond_49
    move-object/from16 v22, v21

    .line 4139
    :goto_4b
    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3e8

    const/4 v9, 0x1

    if-ne v2, v8, :cond_56

    move v2, v9

    goto :goto_57

    :cond_56
    move v2, v6

    :goto_57
    if-eqz v2, :cond_7c

    .line 4145
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setDefusable(Z)V

    .line 4146
    const-string v8, "android.intent.extra.client_intent"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    if-eqz v8, :cond_77

    .line 4148
    const-string v10, "android.intent.extra.client_label"

    invoke-virtual {v3, v10, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_72

    .line 4153
    invoke-virtual {v3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v3

    :cond_72
    move-object/from16 v23, v8

    move/from16 v24, v10

    goto :goto_80

    :cond_77
    move/from16 v24, v6

    move-object/from16 v23, v8

    goto :goto_80

    :cond_7c
    move/from16 v24, v6

    move-object/from16 v23, v21

    :goto_80
    const-wide/32 v10, 0x8000000

    and-long v10, p6, v10

    const-wide/16 v25, 0x0

    cmp-long v8, v10, v25

    if-eqz v8, :cond_94

    .line 4159
    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "android.permission.MANAGE_ACTIVITY_TASKS"

    const-string v11, "BIND_TREAT_LIKE_ACTIVITY"

    invoke-virtual {v8, v10, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_94
    const-wide/32 v10, 0x80000

    and-long v10, p6, v10

    cmp-long v8, v10, v25

    if-eqz v8, :cond_bf

    if-eqz v2, :cond_a0

    goto :goto_bf

    .line 4164
    :cond_a0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system caller (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") set BIND_SCHEDULE_LIKE_TOP_APP when binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bf
    :goto_bf
    const-wide/32 v10, 0x1000000

    and-long v10, p6, v10

    cmp-long v8, v10, v25

    if-eqz v8, :cond_f2

    if-eqz v2, :cond_cb

    goto :goto_f2

    .line 4169
    :cond_cb
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system caller "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") set BIND_ALLOW_WHITELIST_MANAGEMENT when binding service "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f2
    :goto_f2
    const-wide/32 v10, 0x400000

    and-long v10, p6, v10

    cmp-long v8, v10, v25

    if-eqz v8, :cond_125

    if-eqz v2, :cond_fe

    goto :goto_125

    .line 4175
    :cond_fe
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system caller "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") set BIND_ALLOW_INSTANT when binding service "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_125
    :goto_125
    const-wide/32 v10, 0x10000

    and-long v10, p6, v10

    cmp-long v0, v10, v25

    if-eqz v0, :cond_150

    if-eqz v2, :cond_131

    goto :goto_150

    .line 4181
    :cond_131
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system caller (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") set BIND_ALMOST_PERCEPTIBLE when binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_150
    :goto_150
    const-wide/32 v10, 0x100000

    and-long v10, p6, v10

    cmp-long v0, v10, v25

    if-eqz v0, :cond_162

    .line 4186
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    const-string v11, "BIND_ALLOW_BACKGROUND_ACTIVITY_STARTS"

    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_162
    const-wide/32 v10, 0x40000

    and-long v10, p6, v10

    cmp-long v0, v10, v25

    if-eqz v0, :cond_174

    .line 4192
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    const-string v11, "BIND_ALLOW_FOREGROUND_SERVICE_STARTS_FROM_BACKGROUND"

    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_174
    const-wide v10, 0x400000000L

    and-long v10, p6, v10

    cmp-long v0, v10, v25

    if-eqz v0, :cond_1a1

    if-eqz v2, :cond_182

    goto :goto_1a1

    .line 4198
    :cond_182
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system caller (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") set BIND_ALLOW_FREEZE when binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a1
    :goto_1a1
    const-wide v10, 0x800000000L

    and-long v10, p6, v10

    cmp-long v0, v10, v25

    if-eqz v0, :cond_1ce

    if-eqz v2, :cond_1af

    goto :goto_1ce

    .line 4202
    :cond_1af
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system caller (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") set BIND_SIMULATE_ALLOW_FREEZE when binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4206
    :cond_1ce
    :goto_1ce
    invoke-virtual {v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetSchedGroup()I

    move-result v0

    if-eqz v0, :cond_1d6

    move v11, v9

    goto :goto_1d7

    :cond_1d6
    move v11, v6

    :goto_1d7
    const/high16 v0, -0x80000000

    .line 4208
    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v12

    and-long v12, p6, v12

    cmp-long v0, v12, v25

    if-nez v0, :cond_1ee

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    and-long v12, p6, v12

    cmp-long v0, v12, v25

    if-eqz v0, :cond_1ec

    goto :goto_1ee

    :cond_1ec
    move v15, v6

    goto :goto_1ef

    :cond_1ee
    :goto_1ee
    move v15, v9

    :goto_1ef
    if-eqz v8, :cond_1f4

    move/from16 v16, v9

    goto :goto_1f6

    :cond_1f4
    move/from16 v16, v6

    :goto_1f6
    const-wide/16 v12, 0x2000

    and-long v12, p6, v12

    cmp-long v0, v12, v25

    if-eqz v0, :cond_201

    move/from16 v18, v9

    goto :goto_203

    :cond_201
    move/from16 v18, v6

    :goto_203
    const-wide/16 v12, 0x4000

    and-long v12, p6, v12

    cmp-long v0, v12, v25

    if-eqz v0, :cond_20e

    move/from16 v19, v9

    goto :goto_210

    :cond_20e
    move/from16 v19, v6

    :goto_210
    const-wide v12, 0x200000000L

    and-long v12, p6, v12

    cmp-long v0, v12, v25

    if-eqz v0, :cond_21e

    move/from16 v20, v9

    goto :goto_220

    :cond_21e
    move/from16 v20, v6

    :goto_220
    if-lez p10, :cond_22b

    .line 4220
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v2, p12

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    goto :goto_22d

    :cond_22b
    move-object/from16 v0, v21

    :goto_22d
    const/4 v13, 0x1

    const/16 v17, 0x0

    move-object/from16 v8, p4

    move-object/from16 v9, p13

    move/from16 v12, p14

    move-object v2, v1

    move-object v1, v4

    move/from16 p1, v6

    move v10, v7

    move v14, v11

    move-object/from16 v4, p8

    move/from16 v6, p10

    move-object/from16 v7, p11

    move v11, v5

    move/from16 v5, p9

    .line 4222
    invoke-virtual/range {v2 .. v20}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLandroid/app/ForegroundServiceDelegationOptions;ZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v4

    move v7, v10

    move v5, v11

    move v11, v14

    if-nez v4, :cond_24f

    return p1

    .line 4230
    :cond_24f
    iget-object v6, v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    const/4 v8, -0x1

    if-nez v6, :cond_255

    return v8

    .line 4234
    :cond_255
    invoke-virtual {v6, v3, v1, v0}, Lcom/android/server/am/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;

    move-result-object v9

    .line 4235
    iget-object v0, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4236
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v10

    iget-object v12, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v12, v12, Lcom/android/server/am/ActivityManagerConstants;->mMaxServiceConnectionsPerProcess:I

    if-lt v10, v12, :cond_28a

    .line 4237
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService exceeded max service connection number per process, callerApp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 4244
    :cond_28a
    iget-object v10, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v10

    .line 4245
    :try_start_28f
    iget-object v12, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v12, v7}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    .line 4246
    monitor-exit v10
    :try_end_298
    .catchall {:try_start_28f .. :try_end_298} :catchall_738

    if-eqz v12, :cond_2a2

    .line 4248
    iget-object v10, v12, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    move-object/from16 v43, v10

    move v10, v8

    move-object/from16 v8, v43

    goto :goto_2a5

    :cond_2a2
    move v10, v8

    move-object/from16 v8, p13

    :goto_2a5
    if-eqz v12, :cond_2b7

    .line 4250
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v13

    if-eqz v13, :cond_2b7

    invoke-virtual {v12}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v13

    if-nez v13, :cond_2b7

    .line 4251
    invoke-virtual {v12}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v10

    .line 4252
    :cond_2b7
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->updateProcessStateOnRequest()V

    .line 4256
    sget-object v13, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    const/4 v14, 0x1

    move-object v2, v6

    move v6, v5

    const/4 v5, 0x0

    move-object v12, v9

    move v9, v10

    const/4 v10, 0x0

    move-object/from16 v15, p5

    move-object/from16 v16, v0

    move-object/from16 v28, v1

    move-object/from16 p10, v4

    move-object/from16 v17, v12

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v4, p13

    move/from16 v12, p14

    invoke-virtual/range {v1 .. v15}, Lcom/android/server/am/ActiveServices;->deferServiceBringupIfFrozenLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IZZILandroid/app/BackgroundStartPrivileges;ZLandroid/app/IServiceConnection;)Z

    move-result v14

    move v5, v6

    move-object v15, v13

    move v13, v7

    if-nez v14, :cond_2f9

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v10, p5

    move/from16 v8, p14

    move-object v6, v3

    move v7, v11

    move-object/from16 v3, p13

    .line 4265
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    move-result v4

    move-object v3, v2

    move/from16 v18, v5

    move-object v2, v6

    move/from16 v19, v7

    if-nez v4, :cond_302

    const/16 v20, 0x1

    goto :goto_304

    :cond_2f9
    move-object v1, v3

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p0

    move/from16 v18, v5

    move/from16 v19, v11

    :cond_302
    move/from16 v20, v0

    .line 4268
    :goto_304
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v4

    .line 4270
    :try_start_30c
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 v7, 0x12

    invoke-virtual {v6, v7}, Lcom/android/server/am/ProcessStateController;->startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object v29
    :try_end_316
    .catchall {:try_start_30c .. :try_end_316} :catchall_72e

    move-object/from16 v6, v28

    .line 4272
    :try_start_318
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v7, v0}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z
    :try_end_31f
    .catchall {:try_start_318 .. :try_end_31f} :catchall_71e

    const-wide/16 v7, 0x1

    and-long v7, p6, v7

    cmp-long v7, v7, v25

    if-eqz v7, :cond_362

    .line 4278
    :try_start_327
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    .line 4279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 4278
    invoke-virtual {v7, v3, v8, v9}, Lcom/android/server/am/ProcessStateController;->setServiceLastActivityTime(Lcom/android/server/am/psc/ServiceRecordInternal;J)V

    .line 4280
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v7

    if-nez v7, :cond_362

    .line 4282
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v7, v7, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_33f
    .catchall {:try_start_327 .. :try_end_33f} :catchall_35d

    .line 4283
    :try_start_33f
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v8

    if-eqz v8, :cond_358

    .line 4285
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v9

    .line 4286
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x1

    .line 4285
    invoke-virtual {v8, v12, v9, v10, v11}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    goto :goto_359

    :catchall_356
    move-exception v0

    goto :goto_35b

    :cond_358
    const/4 v12, 0x1

    .line 4288
    :goto_359
    monitor-exit v7

    goto :goto_363

    :goto_35b
    monitor-exit v7
    :try_end_35c
    .catchall {:try_start_33f .. :try_end_35c} :catchall_356

    :try_start_35c
    throw v0

    :catchall_35d
    move-exception v0

    move-object v2, v0

    move-wide v10, v4

    goto/16 :goto_720

    :cond_362
    const/4 v12, 0x1

    :goto_363
    const-wide/32 v7, 0x200000

    and-long v7, p6, v7

    cmp-long v7, v7, v25

    if-eqz v7, :cond_375

    .line 4293
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->requireAllowedAssociationsLocked(Ljava/lang/String;)V
    :try_end_375
    .catchall {:try_start_35c .. :try_end_375} :catchall_35d

    .line 4296
    :cond_375
    :try_start_375
    invoke-virtual {v3}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v25

    .line 4297
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v26

    .line 4298
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v8, v6, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v9, v6, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 4299
    invoke-virtual {v6}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v33

    iget-object v10, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p11, v13

    iget-wide v12, v10, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v10, v3, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    move/from16 v28, v0

    iget-object v0, v3, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v37, v10

    move/from16 v34, v11

    move-wide/from16 v35, v12

    .line 4298
    invoke-virtual/range {v30 .. v38}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IIJLandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    .line 4303
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v7, v6, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    iget v8, v6, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v9, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4304
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 4303
    invoke-virtual {v0, v7, v2, v8, v9}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V
    :try_end_3bb
    .catchall {:try_start_375 .. :try_end_3bb} :catchall_71e

    .line 4306
    :try_start_3bb
    new-instance v1, Lcom/android/server/am/ConnectionRecord;

    iget v9, v6, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v10, v6, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    move-object/from16 v0, p10

    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;
    :try_end_3c5
    .catchall {:try_start_3bb .. :try_end_3c5} :catchall_719

    move-object/from16 p1, v17

    move-object/from16 v17, v2

    move-object/from16 v2, p1

    move-object/from16 v13, p0

    move-object/from16 v11, p13

    move-wide/from16 v39, v4

    move-object/from16 p10, v6

    move/from16 p1, v14

    move-object/from16 p12, v15

    move-object/from16 v8, v23

    move/from16 v7, v24

    const/4 v15, 0x1

    move-object/from16 v4, p5

    move-wide/from16 v5, p6

    move-object v14, v3

    move-object/from16 v3, v22

    :try_start_3e3
    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Landroid/app/IServiceConnection;JILandroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 4310
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 4311
    invoke-virtual {v14, v4, v1}, Lcom/android/server/am/ServiceRecord;->addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V

    .line 4312
    iget-object v5, v2, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3f2
    .catchall {:try_start_3e3 .. :try_end_3f2} :catchall_716

    if-eqz v3, :cond_3ff

    .line 4314
    :try_start_3f4
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->addConnection(Ljava/lang/Object;)V
    :try_end_3f7
    .catchall {:try_start_3f4 .. :try_end_3f7} :catchall_3f8

    goto :goto_3ff

    :catchall_3f8
    move-exception v0

    move-object v2, v0

    move-object v1, v13

    :goto_3fb
    move-wide/from16 v10, v39

    goto/16 :goto_720

    .line 4316
    :cond_3ff
    :goto_3ff
    :try_start_3ff
    iget-object v3, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    move-object/from16 v5, v16

    invoke-virtual {v3, v5, v1}, Lcom/android/server/am/ProcessStateController;->addConnection(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;)V

    .line 4317
    invoke-virtual {v1}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    .line 4320
    iget-object v3, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_40f
    .catchall {:try_start_3ff .. :try_end_40f} :catchall_716

    if-eq v3, v6, :cond_420

    const/16 v3, 0x8

    :try_start_413
    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_420

    .line 4321
    iget-object v3, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3, v5, v15}, Lcom/android/server/am/ProcessStateController;->setHasAboveClient(Lcom/android/server/am/ProcessServiceRecord;Z)V
    :try_end_420
    .catchall {:try_start_413 .. :try_end_420} :catchall_3f8

    :cond_420
    const/high16 v3, 0x1000000

    .line 4323
    :try_start_422
    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v3
    :try_end_426
    .catchall {:try_start_422 .. :try_end_426} :catchall_716

    if-eqz v3, :cond_42a

    .line 4324
    :try_start_428
    iput-boolean v15, v14, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z
    :try_end_42a
    .catchall {:try_start_428 .. :try_end_42a} :catchall_3f8

    :cond_42a
    const/high16 v3, 0x100000

    .line 4326
    :try_start_42c
    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v3
    :try_end_430
    .catchall {:try_start_42c .. :try_end_430} :catchall_716

    if-eqz v3, :cond_435

    .line 4327
    :try_start_432
    invoke-virtual {v14, v15}, Lcom/android/server/am/ServiceRecord;->setAllowedBgActivityStartsByBinding(Z)V
    :try_end_435
    .catchall {:try_start_432 .. :try_end_435} :catchall_3f8

    :cond_435
    const v3, 0x8000

    .line 4330
    :try_start_438
    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v3
    :try_end_43c
    .catchall {:try_start_438 .. :try_end_43c} :catchall_716

    if-eqz v3, :cond_440

    .line 4331
    :try_start_43e
    iput-boolean v15, v14, Lcom/android/server/am/ServiceRecord;->isNotAppComponentUsage:Z
    :try_end_440
    .catchall {:try_start_43e .. :try_end_440} :catchall_3f8

    .line 4334
    :cond_440
    :try_start_440
    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_442
    .catchall {:try_start_440 .. :try_end_442} :catchall_716

    const/4 v9, 0x2

    if-eqz v3, :cond_45e

    :try_start_445
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v3

    if-gt v3, v9, :cond_45e

    const/high16 v3, 0x10000

    .line 4335
    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_45e

    .line 4336
    iget-object v3, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    .line 4337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 4336
    invoke-virtual {v3, v14, v5, v6}, Lcom/android/server/am/ProcessStateController;->setLastTopAlmostPerceptibleBindRequest(Lcom/android/server/am/psc/ServiceRecordInternal;J)V
    :try_end_45e
    .catchall {:try_start_445 .. :try_end_45e} :catchall_3f8

    .line 4340
    :cond_45e
    :try_start_45e
    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_460
    .catchall {:try_start_45e .. :try_end_460} :catchall_716

    if-eqz v3, :cond_467

    .line 4341
    :try_start_462
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v13, v3, v1, v15}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    :try_end_467
    .catchall {:try_start_462 .. :try_end_467} :catchall_3f8

    .line 4343
    :cond_467
    :try_start_467
    iget-object v3, v13, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_46f
    .catchall {:try_start_467 .. :try_end_46f} :catchall_716

    if-nez v3, :cond_47b

    .line 4345
    :try_start_471
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4346
    iget-object v5, v13, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47b
    .catchall {:try_start_471 .. :try_end_47b} :catchall_3f8

    .line 4348
    :cond_47b
    :try_start_47b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4350
    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v3, v3, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/2addr v3, v9

    if-eqz v3, :cond_488

    :goto_485
    move-object/from16 v3, v21

    goto :goto_495

    .line 4353
    :cond_488
    iget-object v3, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v5, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v21
    :try_end_494
    .catchall {:try_start_47b .. :try_end_494} :catchall_716

    goto :goto_485

    :goto_495
    if-eqz v3, :cond_49e

    .line 4355
    :try_start_497
    iget-object v4, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v13, v4, v3, v1}, Lcom/android/server/am/ActiveServices;->getServiceBindingOomAdjPolicyForAddLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;)I

    move-result v6

    goto :goto_4a0

    :cond_49e
    move/from16 v6, v28

    :goto_4a0
    const/4 v4, 0x4

    if-nez p1, :cond_4bb

    if-nez v20, :cond_4bb

    and-int/lit8 v5, v6, 0x8

    if-eqz v5, :cond_4bb

    .line 4360
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/am/ProcessRecord;->isFreezable()Z

    move-result v5

    if-eqz v5, :cond_4bb

    .line 4366
    iget-object v5, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    const/16 v7, 0x3e9

    move-object/from16 v8, p10

    invoke-virtual {v5, v8, v4, v15, v7}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLSP(Lcom/android/server/am/psc/ProcessRecordInternal;IZI)V

    goto :goto_4bd

    :cond_4bb
    move-object/from16 v8, p10

    :goto_4bd
    if-nez v3, :cond_4c6

    .line 4370
    iget-object v5, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v5

    goto :goto_4c8

    :cond_4c6
    move/from16 v5, v28

    :goto_4c8
    if-nez v3, :cond_4d3

    .line 4371
    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v3
    :try_end_4d0
    .catchall {:try_start_497 .. :try_end_4d0} :catchall_3f8

    move/from16 v22, v3

    goto :goto_4d5

    :cond_4d3
    move/from16 v22, v28

    .line 4374
    :goto_4d5
    :try_start_4d5
    invoke-virtual {v1, v15}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v3
    :try_end_4d9
    .catchall {:try_start_4d5 .. :try_end_4d9} :catchall_716

    if-eqz v3, :cond_53a

    .line 4375
    :try_start_4db
    iget-object v3, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    .line 4376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 4375
    invoke-virtual {v3, v14, v10, v11}, Lcom/android/server/am/ProcessStateController;->setServiceLastActivityTime(Lcom/android/server/am/psc/ServiceRecordInternal;J)V

    and-int/lit8 v3, v6, 0x1

    if-nez v3, :cond_4ec

    move v3, v15

    goto :goto_4ee

    :cond_4ec
    move/from16 v3, v28

    .line 4379
    :goto_4ee
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getFlags()I

    move-result v7
    :try_end_4f2
    .catchall {:try_start_4db .. :try_end_4f2} :catchall_52b

    const/4 v10, 0x0

    const/4 v11, 0x1

    move/from16 p7, p1

    move/from16 p9, v6

    move/from16 p3, v7

    move/from16 p5, v10

    move/from16 p8, v11

    move-object/from16 p1, v13

    move-object/from16 p2, v14

    move/from16 p4, v19

    move/from16 p6, v20

    :try_start_506
    invoke-virtual/range {p1 .. p9}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZZI)Ljava/lang/String;

    move-result-object v6
    :try_end_50a
    .catchall {:try_start_506 .. :try_end_50a} :catchall_536

    move/from16 v7, p4

    move/from16 v27, p9

    if-eqz v6, :cond_532

    .line 4386
    :try_start_510
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V
    :try_end_515
    .catchall {:try_start_510 .. :try_end_515} :catchall_52b

    if-eqz v29, :cond_521

    .line 4487
    :try_start_517
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_51a
    .catchall {:try_start_517 .. :try_end_51a} :catchall_51b

    goto :goto_521

    :catchall_51b
    move-exception v0

    move-object v1, v13

    move-wide/from16 v10, v39

    goto/16 :goto_730

    .line 4488
    :cond_521
    :goto_521
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    move-wide/from16 v10, v39

    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    return v28

    :catchall_52b
    move-exception v0

    :goto_52c
    move-wide/from16 v10, v39

    move-object v2, v0

    move-object v1, v13

    goto/16 :goto_720

    :cond_532
    move v6, v3

    :goto_533
    move-wide/from16 v10, v39

    goto :goto_541

    :catchall_536
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_52c

    :cond_53a
    move/from16 v27, v6

    move/from16 v7, v19

    move/from16 v6, v28

    goto :goto_533

    :goto_541
    const/4 v3, 0x1

    move/from16 p3, p11

    move-object/from16 p7, p12

    move-object/from16 p2, p13

    move/from16 p8, v3

    move-object/from16 p1, v13

    move-object/from16 p6, v14

    move-object/from16 p5, v17

    move/from16 p4, v18

    .line 4391
    :try_start_552
    invoke-virtual/range {p1 .. p8}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;Z)V
    :try_end_555
    .catchall {:try_start_552 .. :try_end_555} :catchall_712

    move-object/from16 v3, p1

    move-wide/from16 v39, v10

    move/from16 v10, p4

    move-object/from16 v11, p6

    .line 4394
    :try_start_55d
    iget-object v12, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_55f
    .catchall {:try_start_55d .. :try_end_55f} :catchall_70d

    if-eqz v12, :cond_5b5

    .line 4395
    :try_start_561
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    const/high16 v13, 0x8000000

    .line 4396
    invoke-virtual {v1, v13}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v14

    if-eqz v14, :cond_578

    .line 4397
    iget-object v14, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v14, v12, v15}, Lcom/android/server/am/ProcessStateController;->setTreatLikeActivity(Lcom/android/server/am/ProcessServiceRecord;Z)V

    goto :goto_578

    :catchall_573
    move-exception v0

    move-object v2, v0

    move-object v1, v3

    goto/16 :goto_3fb

    .line 4399
    :cond_578
    :goto_578
    iget-boolean v14, v11, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v14, :cond_57e

    .line 4400
    iput-boolean v15, v12, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    .line 4403
    :cond_57e
    iget-object v14, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v18

    if-eqz v18, :cond_58e

    .line 4404
    invoke-virtual {v12}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v12

    if-nez v12, :cond_59a

    .line 4405
    :cond_58e
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v12

    if-gt v12, v9, :cond_59c

    .line 4406
    invoke-virtual {v1, v13}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v12

    if-eqz v12, :cond_59c

    :cond_59a
    const/4 v12, 0x1

    goto :goto_59e

    :cond_59c
    move/from16 v12, v28

    :goto_59e
    iget-object v13, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 4403
    invoke-virtual {v14, v15, v12, v13}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 4408
    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v12

    if-nez v12, :cond_5b5

    and-int/lit8 v12, v27, 0x4

    if-nez v12, :cond_5b5

    .line 4411
    iget-object v6, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v12}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    const/4 v6, 0x1

    :cond_5b5
    if-eqz v6, :cond_5bc

    .line 4419
    iget-object v6, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V
    :try_end_5bc
    .catchall {:try_start_561 .. :try_end_5bc} :catchall_573

    :cond_5bc
    if-eqz v5, :cond_5c3

    move-object/from16 v6, v17

    move/from16 v17, v9

    goto :goto_5c7

    :cond_5c3
    move-object/from16 v6, v17

    const/16 v17, 0x1

    .line 4430
    :goto_5c7
    :try_start_5c7
    iget-object v4, v11, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4431
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->getShortAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4433
    iget-object v6, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_5d5
    .catchall {:try_start_5c7 .. :try_end_5d5} :catchall_70d

    if-eqz v6, :cond_5e7

    :try_start_5d7
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6
    :try_end_5db
    .catchall {:try_start_5d7 .. :try_end_5db} :catchall_573

    if-nez v6, :cond_5de

    goto :goto_5e7

    :cond_5de
    if-nez v25, :cond_5e5

    if-nez v26, :cond_5e3

    goto :goto_5e5

    :cond_5e3
    const/4 v14, 0x1

    goto :goto_5e9

    :cond_5e5
    :goto_5e5
    move v14, v9

    goto :goto_5e9

    :cond_5e7
    :goto_5e7
    const/4 v9, 0x3

    goto :goto_5e5

    .line 4437
    :goto_5e9
    :try_start_5e9
    iget-object v6, v8, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 4438
    invoke-virtual {v3, v10, v6}, Lcom/android/server/am/ActiveServices;->getShortProcessNameForStats(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v12, 0x1

    .line 4439
    invoke-virtual {v3, v11}, Lcom/android/server/am/ActiveServices;->getShortServiceNameForStats(Lcom/android/server/am/ServiceRecord;)Ljava/lang/String;

    move-result-object v16

    iget-object v6, v11, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4443
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v20

    iget v13, v11, Lcom/android/server/am/ServiceRecord;->mProcessStateOnRequest:I
    :try_end_600
    .catchall {:try_start_5e9 .. :try_end_600} :catchall_70d

    const-wide/16 v23, 0x0

    move-object/from16 v18, v8

    const/16 v8, 0x1dc

    move/from16 v19, v12

    const/4 v12, 0x2

    move/from16 v21, v13

    const/4 v13, 0x0

    move-object/from16 p4, v11

    move-object v11, v5

    move-object/from16 v5, p4

    move-object/from16 p4, v18

    move-object/from16 v18, v6

    move-object/from16 v6, p4

    move/from16 p4, v7

    move/from16 v7, v19

    move-wide/from16 v41, v39

    move-object/from16 v19, v9

    move v9, v4

    move-object/from16 v4, p13

    .line 4430
    :try_start_622
    invoke-static/range {v8 .. v24}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IZILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIZJ)V

    .line 4453
    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_627
    .catchall {:try_start_622 .. :try_end_627} :catchall_70a

    if-eqz v8, :cond_6b6

    :try_start_629
    iget-object v8, v2, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v8, v8, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-eqz v8, :cond_6b6

    .line 4460
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_634

    goto :goto_636

    :cond_634
    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 4461
    :goto_636
    iget-object v8, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    .line 4462
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateController;->getBoundServiceSessionFor(Lcom/android/server/am/ConnectionRecord;)Lcom/android/server/am/BoundServiceSession;

    move-result-object v8
    :try_end_63e
    .catchall {:try_start_629 .. :try_end_63e} :catchall_6ac

    .line 4464
    :try_start_63e
    iget-object v9, v1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v10, v2, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v10, v10, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    move/from16 v11, v28

    invoke-interface {v9, v0, v10, v8, v11}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/app/IBinderSession;Z)V
    :try_end_649
    .catch Ljava/lang/Exception; {:try_start_63e .. :try_end_649} :catch_651
    .catchall {:try_start_63e .. :try_end_649} :catchall_64a

    goto :goto_68b

    :catchall_64a
    move-exception v0

    move-object v2, v0

    move-object v1, v3

    :goto_64d
    move-wide/from16 v10, v41

    goto/16 :goto_720

    :catch_651
    move-exception v0

    .line 4466
    :try_start_652
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure sending service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to connection "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 4467
    invoke-interface {v10}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " (in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4466
    invoke-static {v8, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4474
    :goto_68b
    iget-object v0, v2, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ne v0, v7, :cond_6b1

    iget-object v0, v2, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v1, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    if-eqz v1, :cond_6b1

    const/4 v1, 0x1

    move-object/from16 p3, v0

    move/from16 p5, v1

    move-object/from16 p1, v3

    move-object/from16 p2, v5

    move/from16 p6, v27

    .line 4475
    invoke-virtual/range {p1 .. p6}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZI)Z
    :try_end_6a9
    .catchall {:try_start_652 .. :try_end_6a9} :catchall_6ac

    move-object/from16 v14, p2

    goto :goto_6b2

    :catchall_6ac
    move-exception v0

    move-object/from16 v1, p0

    :goto_6af
    move-object v2, v0

    goto :goto_64d

    :cond_6b1
    move-object v14, v5

    :cond_6b2
    :goto_6b2
    move-object/from16 v1, p0

    move-object v2, v14

    goto :goto_6d8

    :cond_6b6
    move/from16 v11, p4

    move-object v14, v5

    .line 4478
    :try_start_6b9
    iget-object v0, v2, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v1, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z
    :try_end_6bd
    .catchall {:try_start_6b9 .. :try_end_6bd} :catchall_706

    if-nez v1, :cond_6b2

    const/4 v1, 0x0

    move-object/from16 p1, p0

    move-object/from16 p3, v0

    move/from16 p5, v1

    move/from16 p4, v11

    move-object/from16 p2, v14

    move/from16 p6, v27

    .line 4479
    :try_start_6cc
    invoke-virtual/range {p1 .. p6}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZI)Z
    :try_end_6cf
    .catchall {:try_start_6cc .. :try_end_6cf} :catchall_6d4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_6d8

    :catchall_6d4
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_6af

    .line 4483
    :goto_6d8
    :try_start_6d8
    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v12, p14

    invoke-virtual {v1, v12, v4, v0}, Lcom/android/server/am/ActiveServices;->maybeLogBindCrossProfileService(ILjava/lang/String;I)V

    .line 4485
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_6ea
    .catchall {:try_start_6d8 .. :try_end_6ea} :catchall_701

    if-eqz v29, :cond_6f4

    .line 4487
    :try_start_6ec
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_6ef
    .catchall {:try_start_6ec .. :try_end_6ef} :catchall_6f0

    goto :goto_6f4

    :catchall_6f0
    move-exception v0

    move-wide/from16 v10, v41

    goto :goto_730

    .line 4488
    :cond_6f4
    :goto_6f4
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    move-wide/from16 v10, v41

    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    .line 4491
    invoke-virtual {v1, v6, v4}, Lcom/android/server/am/ActiveServices;->notifyBindingServiceEventLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    return v7

    :catchall_701
    move-exception v0

    :goto_702
    move-wide/from16 v10, v41

    :goto_704
    move-object v2, v0

    goto :goto_720

    :catchall_706
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_702

    :catchall_70a
    move-exception v0

    move-object v1, v3

    goto :goto_702

    :catchall_70d
    move-exception v0

    move-object v1, v3

    :goto_70f
    move-wide/from16 v10, v39

    goto :goto_704

    :catchall_712
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_704

    :catchall_716
    move-exception v0

    move-object v1, v13

    goto :goto_70f

    :catchall_719
    move-exception v0

    move-object/from16 v1, p0

    :goto_71c
    move-wide v10, v4

    goto :goto_704

    :catchall_71e
    move-exception v0

    goto :goto_71c

    :goto_720
    if-eqz v29, :cond_72d

    .line 4270
    :try_start_722
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_725
    .catchall {:try_start_722 .. :try_end_725} :catchall_726

    goto :goto_72d

    :catchall_726
    move-exception v0

    :try_start_727
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_72d

    :catchall_72b
    move-exception v0

    goto :goto_730

    :cond_72d
    :goto_72d
    throw v2
    :try_end_72e
    .catchall {:try_start_727 .. :try_end_72e} :catchall_72b

    :catchall_72e
    move-exception v0

    move-wide v10, v4

    .line 4488
    :goto_730
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v1, v10, v11}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    .line 4489
    throw v0

    :catchall_738
    move-exception v0

    .line 4246
    :try_start_739
    monitor-exit v10
    :try_end_73a
    .catchall {:try_start_739 .. :try_end_73a} :catchall_738

    throw v0

    .line 4122
    :cond_73b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find app for caller "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when binding service "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bringDownDisabledPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;IZZZ)Z
    .registers 15

    const/16 v7, -0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 7284
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->bringDownDisabledPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;IZZZI)Z

    move-result p0

    return p0
.end method

.method public bringDownDisabledPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;IZZZI)Z
    .registers 18

    .line 7292
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 7293
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_7
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_45

    .line 7297
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    sub-int/2addr p3, v1

    :goto_13
    if-ltz p3, :cond_64

    .line 7298
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 7300
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v9, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    .line 7298
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZILandroid/util/ArrayMap;)Z

    move-result v0

    or-int/2addr v2, v0

    if-nez p6, :cond_31

    if-eqz v2, :cond_31

    return v1

    :cond_31
    if-eqz p6, :cond_42

    if-nez p2, :cond_42

    .line 7305
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    :cond_42
    add-int/lit8 p3, p3, -0x1

    goto :goto_13

    .line 7309
    :cond_45
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v0, :cond_5d

    .line 7311
    iget-object v9, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    .line 7312
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZILandroid/util/ArrayMap;)Z

    move-result v2

    :cond_5d
    if-eqz p6, :cond_64

    if-nez p2, :cond_64

    .line 7316
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 7320
    :cond_64
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz p1, :cond_cb

    .line 7321
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 p2, 0x16

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessStateController;->startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object p1

    .line 7323
    :try_start_72
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p4, p3, -0x1

    :goto_7a
    if-ltz p4, :cond_8d

    .line 7325
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    add-int/lit8 p4, p4, -0x1

    goto :goto_7a

    :catchall_8a
    move-exception v0

    move-object p0, v0

    goto :goto_bf

    :cond_8d
    if-lez p3, :cond_94

    .line 7332
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p3, p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V
    :try_end_94
    .catchall {:try_start_72 .. :try_end_94} :catchall_8a

    :cond_94
    if-eqz p1, :cond_99

    .line 7335
    invoke-virtual {p1}, Lcom/android/server/am/psc/BatchSession;->close()V

    :cond_99
    if-eqz p5, :cond_b9

    .line 7336
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b9

    .line 7340
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 7341
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 7342
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance p3, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda8;

    invoke-direct {p3, p1}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda8;-><init>(Ljava/util/ArrayList;)V

    const-wide/16 p4, 0xfa

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7348
    :cond_b9
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v2

    :goto_bf
    if-eqz p1, :cond_ca

    .line 7321
    :try_start_c1
    invoke-virtual {p1}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_c5

    goto :goto_ca

    :catchall_c5
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ca
    :goto_ca
    throw p0

    :cond_cb
    return v2
.end method

.method public final bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZLjava/lang/String;)V
    .registers 6

    .line 6513
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_f

    .line 6518
    :cond_7
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    :goto_f
    return-void

    .line 6522
    :cond_10
    invoke-virtual {p0, p1, p4}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    return-void
.end method

.method public final bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 6526
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 v9, 0x13

    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessStateController;->startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object v10

    .line 6529
    :try_start_e
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 6532
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Short FGS brought down without stopping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6533
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->maybeStopShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_32

    :catchall_2e
    move-exception v0

    move-object v1, v0

    goto/16 :goto_3d4

    .line 6538
    :cond_32
    :goto_32
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v3

    .line 6539
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    move v4, v0

    :goto_3d
    const/4 v12, 0x0

    const/4 v13, 0x0

    if-ltz v4, :cond_b2

    .line 6540
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    .line 6541
    :goto_48
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_af

    .line 6542
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 6545
    iput-boolean v11, v0, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 6546
    invoke-virtual {v0}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 6548
    iget-object v6, v0, Lcom/android/server/am/ConnectionRecord;->aliasComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_5e

    goto :goto_60

    :cond_5e
    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;
    :try_end_60
    .catchall {:try_start_e .. :try_end_60} :catchall_2e

    .line 6550
    :goto_60
    :try_start_60
    iget-object v0, v0, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v0, v6, v12, v12, v11}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/app/IBinderSession;Z)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_66
    .catchall {:try_start_60 .. :try_end_65} :catchall_2e

    goto :goto_ac

    :catch_66
    move-exception v0

    .line 6552
    :try_start_67
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure disconnecting service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6553
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    iget-object v8, v8, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v8}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6554
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    iget-object v8, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6552
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ac
    add-int/lit8 v13, v13, 0x1

    goto :goto_48

    :cond_af
    add-int/lit8 v4, v4, -0x1

    goto :goto_3d

    .line 6559
    :cond_b2
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v0

    .line 6562
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_123

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isThreadReady()Z

    move-result v3

    if-eqz v3, :cond_123

    .line 6563
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v11

    move v6, v0

    move v0, v3

    :goto_c9
    if-ltz v0, :cond_121

    .line 6564
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/android/server/am/IntentBindRecord;

    .line 6569
    iget-boolean v3, v7, Lcom/android/server/am/IntentBindRecord;->hasBound:Z
    :try_end_d6
    .catchall {:try_start_67 .. :try_end_d6} :catchall_2e

    if-eqz v3, :cond_11e

    .line 6571
    :try_start_d8
    const-string v4, "bring down unbind"

    if-eqz v6, :cond_de

    move v5, v13

    goto :goto_df

    :cond_de
    const/4 v5, 0x5

    :goto_df
    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;IZ)V

    .line 6575
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v3
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e7} :catch_ff
    .catchall {:try_start_d8 .. :try_end_e7} :catchall_2e

    or-int/2addr v3, v6

    .line 6576
    :try_start_e8
    iput-boolean v13, v7, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 6577
    iput-boolean v13, v7, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 6578
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    iget-object v5, v7, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 6579
    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 6578
    invoke-interface {v4, v2, v7, v5}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_fb} :catch_fd
    .catchall {:try_start_e8 .. :try_end_fb} :catchall_2e

    move v6, v3

    goto :goto_11e

    :catch_fd
    move-exception v0

    goto :goto_101

    :catch_ff
    move-exception v0

    move v3, v6

    .line 6581
    :goto_101
    :try_start_101
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when unbinding service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6583
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V

    move v15, v3

    goto :goto_124

    :cond_11e
    :goto_11e
    add-int/lit8 v0, v0, -0x1

    goto :goto_c9

    :cond_121
    move v15, v6

    goto :goto_124

    :cond_123
    move v15, v0

    .line 6592
    :goto_124
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_1a9

    .line 6593
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bringing down service while still waiting for start foreground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6596
    iput-boolean v13, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 6597
    iput-boolean v13, v2, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 6598
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_149
    .catchall {:try_start_101 .. :try_end_149} :catchall_2e

    .line 6599
    :try_start_149
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_161

    .line 6601
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    .line 6602
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 6601
    invoke-virtual {v0, v13, v4, v5, v6}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_161

    :catchall_15f
    move-exception v0

    goto :goto_1a7

    .line 6604
    :cond_161
    :goto_161
    monitor-exit v3
    :try_end_162
    .catchall {:try_start_149 .. :try_end_162} :catchall_15f

    .line 6605
    :try_start_162
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v4

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v5, 0x4c

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 6607
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

    invoke-virtual {v0, v2}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)Z

    .line 6608
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1a9

    .line 6609
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x45

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6611
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    .line 6612
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6613
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 6614
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 6616
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6617
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1a6
    .catchall {:try_start_162 .. :try_end_1a6} :catchall_2e

    goto :goto_1a9

    .line 6604
    :goto_1a7
    :try_start_1a7
    monitor-exit v3
    :try_end_1a8
    .catchall {:try_start_1a7 .. :try_end_1a8} :catchall_15f

    :try_start_1a8
    throw v0

    .line 6625
    :cond_1a9
    :goto_1a9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 6632
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v3

    .line 6633
    iget-object v0, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_1ea

    if-ne v0, v2, :cond_1c4

    goto :goto_1ea

    .line 6640
    :cond_1c4
    iget-object v1, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v3, v2, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6641
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bringing down "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but actually running "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6644
    :cond_1ea
    :goto_1ea
    iget-object v0, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6645
    iput v13, v2, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 6646
    invoke-virtual {v1, v2, v13, v11}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    .line 6649
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v11

    :goto_1fd
    if-ltz v0, :cond_20f

    .line 6650
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_20c

    .line 6651
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_20c
    add-int/lit8 v0, v0, -0x1

    goto :goto_1fd

    .line 6655
    :cond_20f
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6659
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 6660
    invoke-virtual {v2}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_29b

    .line 6662
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->maybeStopShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 6663
    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    .line 6664
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v4, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_22a
    .catchall {:try_start_1a8 .. :try_end_22a} :catchall_2e

    .line 6665
    :try_start_22a
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v5

    if-eqz v5, :cond_242

    .line 6667
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    .line 6668
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 6667
    invoke-virtual {v5, v13, v6, v7, v8}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_242

    :catchall_240
    move-exception v0

    goto :goto_299

    .line 6670
    :cond_242
    :goto_242
    monitor-exit v4
    :try_end_243
    .catchall {:try_start_22a .. :try_end_243} :catchall_240

    .line 6671
    :try_start_243
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 6672
    invoke-static {v4}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v17

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v21, 0x0

    const/16 v18, 0x4c

    move-object/from16 v16, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    .line 6671
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 6674
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 6675
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    .line 6678
    iget-wide v6, v2, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_270

    sub-long/2addr v4, v6

    long-to-int v4, v4

    goto :goto_271

    :cond_270
    move v4, v13

    :goto_271
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v3

    const/4 v3, 0x2

    move-object v6, v5

    const/4 v5, 0x2

    move-object/from16 v16, v6

    const/4 v6, 0x0

    move-object/from16 v14, v16

    .line 6676
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V

    .line 6685
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    monitor-enter v3
    :try_end_282
    .catchall {:try_start_243 .. :try_end_282} :catchall_2e

    .line 6686
    :try_start_282
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5, v2}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logForegroundServiceStop(ILcom/android/server/am/ServiceRecord;)V

    .line 6687
    monitor-exit v3
    :try_end_28c
    .catchall {:try_start_282 .. :try_end_28c} :catchall_296

    .line 6688
    :try_start_28c
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v5, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v3, v4, v5, v13}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V
    :try_end_295
    .catchall {:try_start_28c .. :try_end_295} :catchall_2e

    goto :goto_29c

    :catchall_296
    move-exception v0

    .line 6687
    :try_start_297
    monitor-exit v3
    :try_end_298
    .catchall {:try_start_297 .. :try_end_298} :catchall_296

    :try_start_298
    throw v0
    :try_end_299
    .catchall {:try_start_298 .. :try_end_299} :catchall_2e

    .line 6670
    :goto_299
    :try_start_299
    monitor-exit v4
    :try_end_29a
    .catchall {:try_start_299 .. :try_end_29a} :catchall_240

    :try_start_29a
    throw v0

    :cond_29b
    move-object v14, v3

    .line 6691
    :goto_29c
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3, v2, v13}, Lcom/android/server/am/ProcessStateController;->setIsForegroundService(Lcom/android/server/am/psc/ServiceRecordInternal;Z)V

    .line 6692
    iput-boolean v13, v2, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    .line 6693
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->dropFgsNotificationStateLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 6694
    iput v13, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 6695
    iput-object v12, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 6696
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V

    if-eqz v0, :cond_2b4

    .line 6700
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->signalForegroundServiceObserversLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 6704
    :cond_2b4
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->clearDeliveredStartsLocked()V

    .line 6705
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6706
    iget-object v0, v14, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6708
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_325

    .line 6709
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 6710
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 6711
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 6709
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopLaunch(ILjava/lang/String;Ljava/lang/String;)V

    .line 6712
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 6713
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isThreadReady()Z

    move-result v0

    if-eqz v0, :cond_325

    .line 6715
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3, v13, v12}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 6716
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v0, v13}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    .line 6717
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    if-eqz v0, :cond_327

    .line 6718
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

    iget-object v0, v0, Lcom/android/server/am/ForegroundServiceDelegation;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_30b

    .line 6719
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6724
    :cond_30b
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v11

    :goto_312
    if-ltz v0, :cond_325

    .line 6725
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_322

    .line 6726
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_321
    .catchall {:try_start_29a .. :try_end_321} :catchall_2e

    goto :goto_325

    :cond_322
    add-int/lit8 v0, v0, -0x1

    goto :goto_312

    :cond_325
    :goto_325
    move v6, v15

    goto :goto_36d

    .line 6732
    :cond_327
    :try_start_327
    const-string v4, "destroy"
    :try_end_329
    .catch Ljava/lang/Exception; {:try_start_327 .. :try_end_329} :catch_34f
    .catchall {:try_start_327 .. :try_end_329} :catchall_2e

    if-eqz v15, :cond_32d

    move v5, v13

    goto :goto_32e

    :cond_32d
    const/4 v5, 0x5

    :goto_32e
    const/4 v3, 0x0

    move v6, v15

    :try_start_330
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;IZ)V

    .line 6736
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6737
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v0
    :try_end_33c
    .catch Ljava/lang/Exception; {:try_start_330 .. :try_end_33c} :catch_34c
    .catchall {:try_start_330 .. :try_end_33c} :catchall_2e

    or-int v15, v6, v0

    .line 6738
    :try_start_33e
    iput-boolean v11, v2, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 6739
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_349
    .catch Ljava/lang/Exception; {:try_start_33e .. :try_end_349} :catch_34a
    .catchall {:try_start_33e .. :try_end_349} :catchall_2e

    goto :goto_36e

    :catch_34a
    move-exception v0

    goto :goto_351

    :catch_34c
    move-exception v0

    move v15, v6

    goto :goto_351

    :catch_34f
    move-exception v0

    move v6, v15

    .line 6741
    :goto_351
    :try_start_351
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when destroying service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6743
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_36e

    :goto_36d
    move v15, v6

    :goto_36e
    if-nez v15, :cond_37e

    .line 6758
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    if-nez p2, :cond_37e

    .line 6764
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 6768
    :cond_37e
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_38b

    .line 6769
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 6772
    :cond_38b
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    instance-of v3, v0, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    if-eqz v3, :cond_396

    .line 6773
    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 6776
    :cond_396
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_39d
    .catchall {:try_start_351 .. :try_end_39d} :catchall_2e

    .line 6777
    :try_start_39d
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 6778
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v4, :cond_3c5

    .line 6779
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 6780
    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v6, v13, v0, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 6781
    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v6, v13, v0, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 6782
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v0, :cond_3c5

    .line 6783
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v0, v2, v13}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 6784
    iput-object v12, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    goto :goto_3c5

    :catchall_3c3
    move-exception v0

    goto :goto_3d2

    .line 6787
    :cond_3c5
    :goto_3c5
    monitor-exit v3
    :try_end_3c6
    .catchall {:try_start_39d .. :try_end_3c6} :catchall_3c3

    .line 6789
    :try_start_3c6
    invoke-virtual {v14, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 6790
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices;->updateNumForegroundServicesLocked()V
    :try_end_3cc
    .catchall {:try_start_3c6 .. :try_end_3cc} :catchall_2e

    if-eqz v10, :cond_3d1

    .line 6791
    invoke-virtual {v10}, Lcom/android/server/am/psc/BatchSession;->close()V

    :cond_3d1
    return-void

    .line 6787
    :goto_3d2
    :try_start_3d2
    monitor-exit v3
    :try_end_3d3
    .catchall {:try_start_3d2 .. :try_end_3d3} :catchall_3c3

    :try_start_3d3
    throw v0
    :try_end_3d4
    .catchall {:try_start_3d3 .. :try_end_3d4} :catchall_2e

    :goto_3d4
    if-eqz v10, :cond_3de

    .line 6526
    :try_start_3d6
    invoke-virtual {v10}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_3d9
    .catchall {:try_start_3d6 .. :try_end_3d9} :catchall_3da

    goto :goto_3de

    :catchall_3da
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3de
    :goto_3de
    throw v1
.end method

.method public final bringUpServiceInnerLocked(Lcom/android/server/am/ServiceRecord;IZZZZZI)Ljava/lang/String;
    .registers 46

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v8, p7

    .line 5946
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isThreadReady()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5947
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->updateOomAdjSeq()V

    move/from16 v7, p3

    .line 5948
    invoke-virtual {v1, v2, v7, v10}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    return-object v11

    :cond_1b
    move/from16 v7, p3

    if-nez p4, :cond_28

    .line 5952
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    return-object v11

    .line 5957
    :cond_28
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v12

    .line 5965
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 5966
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 5970
    :cond_37
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_48

    .line 5972
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5973
    iput-boolean v10, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 5978
    :cond_48
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v3}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v0

    const-string v14, " for service "

    const-string v15, "/"

    const-string v3, "Unable to launch app "

    const-string v4, "ActivityManager"

    if-nez v0, :cond_9b

    .line 5979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 5982
    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is stopped"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5983
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5984
    invoke-virtual {v1, v2, v8}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    return-object v0

    .line 5990
    :cond_9b
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->isNotAppComponentUsage:Z

    if-nez v0, :cond_b8

    .line 5992
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    const/16 v9, 0x1f

    invoke-virtual {v0, v5, v6, v9}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 5997
    :cond_b8
    :try_start_b8
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;
    :try_end_c2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b8 .. :try_end_c2} :catch_ce

    move-object/from16 v16, v11

    .line 5998
    :try_start_c4
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v11

    .line 5997
    invoke-virtual {v0, v5, v6, v9, v11}, Landroid/content/pm/PackageManagerInternal;->notifyComponentUsed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c4 .. :try_end_cb} :catch_cc

    goto :goto_ef

    :catch_cc
    move-exception v0

    goto :goto_d1

    :catch_ce
    move-exception v0

    move-object/from16 v16, v11

    .line 6000
    :goto_d1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed trying to unstop package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6004
    :goto_ef
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v5, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_fb

    const/4 v5, 0x1

    move/from16 v25, v5

    goto :goto_fd

    :cond_fb
    move/from16 v25, v10

    .line 6005
    :goto_fd
    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 6006
    new-instance v17, Lcom/android/server/am/HostingRecord;

    iget-object v5, v2, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    iget v9, v2, Lcom/android/server/am/ServiceRecord;->definingUid:I

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 6009
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->getHostingRecordTriggerType(Lcom/android/server/am/ServiceRecord;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v18, "service"

    move-object/from16 v22, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v9

    invoke-direct/range {v17 .. v23}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 6012
    const-string v5, "Exception when starting service "

    const-string/jumbo v0, "realStartServiceLocked: "

    move-object/from16 v27, v11

    if-nez v25, :cond_1da

    .line 6013
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v10, v27

    const-wide/16 v18, 0x40

    invoke-virtual {v6, v10, v9}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    if-eqz v6, :cond_1ce

    move-object v9, v4

    .line 6017
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    move-object v11, v5

    .line 6018
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    .line 6019
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v20

    .line 6020
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isThreadReady()Z

    move-result v21

    if-eqz v21, :cond_1c8

    .line 6022
    :try_start_148
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v21
    :try_end_14c
    .catch Landroid/os/TransactionTooLargeException; {:try_start_148 .. :try_end_14c} :catch_175
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_14c} :catch_1a3
    .catchall {:try_start_148 .. :try_end_14c} :catchall_169

    if-eqz v21, :cond_177

    move-object/from16 p4, v3

    .line 6023
    :try_start_150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v4

    move-wide/from16 v3, v18

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_17b

    :catchall_169
    move-exception v0

    const-wide/16 v18, 0x40

    goto :goto_1c4

    :catch_16d
    move-exception v0

    move-object v3, v6

    move-wide/from16 v35, v12

    move-object/from16 v12, p4

    :goto_173
    move-object v13, v9

    goto :goto_1a9

    :catch_175
    move-exception v0

    goto :goto_1c3

    :cond_177
    move-object/from16 p4, v3

    move-object/from16 v21, v4

    .line 6026
    :goto_17b
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v22, v5

    iget-wide v4, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6, v3, v4, v5, v0}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z
    :try_end_18a
    .catch Landroid/os/TransactionTooLargeException; {:try_start_150 .. :try_end_18a} :catch_175
    .catch Landroid/os/RemoteException; {:try_start_150 .. :try_end_18a} :catch_16d
    .catchall {:try_start_150 .. :try_end_18a} :catchall_169

    move-object v3, v6

    move-wide/from16 v35, v12

    move-object/from16 v6, v20

    move-object/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v12, p4

    move-object v13, v9

    move/from16 v9, p8

    .line 6028
    :try_start_198
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;ZZI)V
    :try_end_19b
    .catch Landroid/os/TransactionTooLargeException; {:try_start_198 .. :try_end_19b} :catch_175
    .catch Landroid/os/RemoteException; {:try_start_198 .. :try_end_19b} :catch_1a1
    .catchall {:try_start_198 .. :try_end_19b} :catchall_169

    const-wide/16 v18, 0x40

    .line 6036
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-object v16

    :catch_1a1
    move-exception v0

    goto :goto_1a9

    :catch_1a3
    move-exception v0

    move-wide/from16 v35, v12

    move-object v12, v3

    move-object v3, v6

    goto :goto_173

    .line 6034
    :goto_1a9
    :try_start_1a9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1bd
    .catchall {:try_start_1a9 .. :try_end_1bd} :catchall_169

    const-wide/16 v18, 0x40

    .line 6036
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1d3

    .line 6032
    :goto_1c3
    :try_start_1c3
    throw v0
    :try_end_1c4
    .catchall {:try_start_1c3 .. :try_end_1c4} :catchall_169

    .line 6036
    :goto_1c4
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 6037
    throw v0

    :cond_1c8
    move-wide/from16 v35, v12

    move-object v12, v3

    move-object v3, v6

    move-object v13, v9

    goto :goto_1d3

    :cond_1ce
    move-wide/from16 v35, v12

    move-object v12, v3

    move-object v13, v4

    move-object v3, v6

    :cond_1d3
    :goto_1d3
    move/from16 v8, p7

    :goto_1d5
    move-object v6, v3

    :cond_1d6
    :goto_1d6
    move-object/from16 v31, v17

    goto/16 :goto_2a9

    :cond_1da
    move-object v11, v5

    move-wide/from16 v35, v12

    move-object/from16 v10, v27

    move-object v12, v3

    move-object v13, v4

    .line 6044
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->inSharedIsolatedProcess:Z

    if-eqz v3, :cond_26d

    .line 6045
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10, v5, v4}, Lcom/android/server/am/ProcessList;->getSharedIsolatedProcess(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_267

    .line 6047
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v4

    if-nez v4, :cond_267

    .line 6048
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    .line 6049
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    .line 6050
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v6

    .line 6051
    iput-object v3, v2, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 6052
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isThreadReady()Z

    move-result v7

    if-eqz v7, :cond_1d3

    const-wide/16 v18, 0x40

    .line 6054
    :try_start_211
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v7

    if-eqz v7, :cond_238

    .line 6055
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v7, 0x40

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_22d
    .catch Landroid/os/TransactionTooLargeException; {:try_start_211 .. :try_end_22d} :catch_236
    .catch Landroid/os/RemoteException; {:try_start_211 .. :try_end_22d} :catch_232
    .catchall {:try_start_211 .. :try_end_22d} :catchall_22e

    goto :goto_238

    :catchall_22e
    move-exception v0

    const-wide/16 v18, 0x40

    goto :goto_263

    :catch_232
    move-exception v0

    move/from16 v8, p7

    goto :goto_247

    :catch_236
    move-exception v0

    goto :goto_262

    :cond_238
    :goto_238
    const/4 v9, 0x0

    move/from16 v7, p3

    move/from16 v8, p7

    .line 6058
    :try_start_23d
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;ZZI)V
    :try_end_240
    .catch Landroid/os/TransactionTooLargeException; {:try_start_23d .. :try_end_240} :catch_236
    .catch Landroid/os/RemoteException; {:try_start_23d .. :try_end_240} :catch_246
    .catchall {:try_start_23d .. :try_end_240} :catchall_22e

    const-wide/16 v18, 0x40

    .line 6067
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-object v16

    :catch_246
    move-exception v0

    .line 6064
    :goto_247
    :try_start_247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25b
    .catchall {:try_start_247 .. :try_end_25b} :catchall_22e

    const-wide/16 v18, 0x40

    .line 6067
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_1d5

    .line 6062
    :goto_262
    :try_start_262
    throw v0
    :try_end_263
    .catchall {:try_start_262 .. :try_end_263} :catchall_22e

    .line 6067
    :goto_263
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 6068
    throw v0

    :cond_267
    move/from16 v8, p7

    move-object/from16 v6, v16

    goto/16 :goto_1d6

    :cond_26d
    move/from16 v8, p7

    .line 6082
    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 6083
    invoke-static {}, Landroid/webkit/WebViewZygote;->isMultiprocessEnabled()Z

    move-result v0

    if-eqz v0, :cond_293

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 6084
    invoke-static {}, Landroid/webkit/WebViewZygote;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_293

    .line 6085
    iget-object v0, v2, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->definingUid:I

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/am/HostingRecord;->byWebviewZygote(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/HostingRecord;

    move-result-object v17

    .line 6089
    :cond_293
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v3, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1d6

    .line 6090
    iget-object v3, v2, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ServiceRecord;->definingUid:I

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v3, v4, v5, v0}, Lcom/android/server/am/HostingRecord;->byAppZygote(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/HostingRecord;

    move-result-object v17

    goto/16 :goto_1d6

    :goto_2a9
    if-nez v6, :cond_371

    if-nez p5, :cond_371

    if-nez p6, :cond_371

    .line 6100
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 6101
    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 6100
    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/ActiveServices;->generateAdditionalSeInfoFromService(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2ea

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d5

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 6103
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2ea

    .line 6104
    :cond_2d5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 6108
    :cond_2ea
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->isSdkSandbox:Z

    if-eqz v0, :cond_30f

    .line 6109
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppUid:I

    invoke-static {v0}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v33

    .line 6110
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v32, 0x0

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    const/16 v29, 0x1

    move/from16 v30, p2

    move-object/from16 v26, v0

    move-object/from16 v28, v3

    move-object/from16 v34, v4

    move-object/from16 v27, v10

    invoke-virtual/range {v26 .. v34}, Lcom/android/server/am/ActivityManagerService;->startSdkSandboxProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 6112
    iput-object v0, v2, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_329

    :cond_30f
    move-object/from16 v27, v10

    .line 6118
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v20, 0x1

    const/16 v24, 0x0

    const/16 v23, 0x0

    move/from16 v21, p2

    move-object/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v18, v27

    move-object/from16 v22, v31

    invoke-virtual/range {v17 .. v25}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    :goto_329
    if-nez v0, :cond_360

    .line 6122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 6125
    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": process is bad"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6126
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6127
    invoke-virtual {v1, v2, v8}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    return-object v0

    .line 6130
    :cond_360
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v3

    move-wide/from16 v4, v35

    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/android/server/am/AppStartInfoTracker;->handleProcessServiceStart(JLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ServiceRecord;)V

    if-eqz v25, :cond_371

    .line 6133
    iput-object v0, v2, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 6137
    :cond_371
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_393

    .line 6142
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v4, v4, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    int-to-long v4, v4

    const/16 v23, 0x0

    iget v6, v2, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    const/16 v21, 0x12f

    const-string v22, "fg-service-launch"

    move-object/from16 v17, v0

    move/from16 v18, v3

    move-wide/from16 v19, v4

    move/from16 v24, v6

    invoke-virtual/range {v17 .. v24}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistUidLocked(IJILjava/lang/String;II)V

    .line 6149
    :cond_393
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a0

    .line 6150
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6153
    :cond_3a0
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v0, :cond_3b0

    const/4 v3, 0x0

    .line 6155
    iput-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 6156
    invoke-virtual {v2}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v0

    if-eqz v0, :cond_3b0

    .line 6159
    invoke-virtual {v1, v2, v8}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    :cond_3b0
    return-object v16
.end method

.method public final bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZZI)Ljava/lang/String;
    .registers 13

    const-wide/16 v1, 0x40

    .line 5930
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bringUpServiceLocked: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_22

    :catchall_1f
    move-exception v0

    move-object p0, v0

    goto :goto_2a

    .line 5934
    :cond_22
    :goto_22
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/ActiveServices;->bringUpServiceInnerLocked(Lcom/android/server/am/ServiceRecord;IZZZZZI)Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_1f

    .line 5938
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_2a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5939
    throw p0
.end method

.method public final bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;IZ)V
    .registers 14

    .line 5338
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget p3, p3, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    const/16 v0, 0x258

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p3, v0, :cond_3e

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_3e

    .line 5339
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p3

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne p3, v0, :cond_3e

    .line 5341
    const-string p3, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too early to start/bind service in system_server: Phase="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5342
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5341
    invoke-static {p3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p3, v1

    goto :goto_3f

    :cond_3e
    move p3, v2

    :goto_3f
    if-eqz p5, :cond_59

    .line 5347
    iget-object p5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p5, :cond_59

    iget-object p5, p5, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 5348
    invoke-virtual {p5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result p5

    if-nez p5, :cond_57

    iget-object p5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p5, p5, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result p5

    if-eqz p5, :cond_59

    :cond_57
    move p5, v2

    goto :goto_5a

    :cond_59
    move p5, v1

    .line 5350
    :goto_5a
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v0, p4}, Lcom/android/server/am/ProcessStateController;->startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object v0

    .line 5352
    :try_start_62
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v3, :cond_c1

    .line 5353
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 5354
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6f
    .catchall {:try_start_62 .. :try_end_6f} :catchall_b5

    .line 5355
    :try_start_6f
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v4

    if-eqz v4, :cond_87

    .line 5357
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    .line 5358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 5357
    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    goto :goto_87

    :catchall_85
    move-exception p0

    goto :goto_bf

    .line 5360
    :cond_87
    :goto_87
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_6f .. :try_end_88} :catchall_85

    .line 5361
    :try_start_88
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_e7

    .line 5362
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 5363
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/am/ProcessStateController;->startExecutingService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)V

    .line 5364
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    .line 5365
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isExecServicesFg()Z

    move-result v5

    if-nez v5, :cond_a1

    if-eqz p2, :cond_a2

    :cond_a1
    move v1, v2

    .line 5364
    :cond_a2
    invoke-virtual {v4, v3, v1}, Lcom/android/server/am/ProcessStateController;->setExecServicesFg(Lcom/android/server/am/ProcessServiceRecord;Z)V

    if-eqz p3, :cond_e7

    .line 5366
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result p3

    if-ne p3, v2, :cond_e7

    if-nez p5, :cond_b7

    .line 5368
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_e7

    :catchall_b5
    move-exception p0

    goto :goto_11c

    .line 5370
    :cond_b7
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p3, v2}, Lcom/android/server/am/ProcessServiceRecord;->noteScheduleServiceTimeoutPending(Z)V
    :try_end_be
    .catchall {:try_start_88 .. :try_end_be} :catchall_b5

    goto :goto_e7

    .line 5360
    :goto_bf
    :try_start_bf
    monitor-exit v3
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_85

    :try_start_c0
    throw p0

    .line 5374
    :cond_c1
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_e7

    if-eqz p2, :cond_e7

    .line 5375
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 5376
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isExecServicesFg()Z

    move-result v3

    if-nez v3, :cond_e7

    .line 5377
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/ProcessStateController;->setExecServicesFg(Lcom/android/server/am/ProcessServiceRecord;Z)V

    if-eqz p3, :cond_e7

    if-nez p5, :cond_e0

    .line 5380
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_e7

    .line 5382
    :cond_e0
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p3, v2}, Lcom/android/server/am/ProcessServiceRecord;->noteScheduleServiceTimeoutPending(Z)V

    .line 5387
    :cond_e7
    :goto_e7
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_106

    .line 5388
    invoke-virtual {p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result p3

    const/16 p5, 0xa

    if-le p3, p5, :cond_106

    .line 5390
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3, p5}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 5391
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->updateOomAdjSeq()V

    if-eqz p4, :cond_106

    .line 5399
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/16 p3, 0x1a

    invoke-virtual {p0, p3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V
    :try_end_106
    .catchall {:try_start_c0 .. :try_end_106} :catchall_b5

    :cond_106
    if-eqz v0, :cond_10b

    .line 5403
    invoke-virtual {v0}, Lcom/android/server/am/psc/BatchSession;->close()V

    .line 5404
    :cond_10b
    iget-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    or-int/2addr p0, p2

    iput-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 5405
    iget p0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/2addr p0, v2

    iput p0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 5406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    return-void

    :goto_11c
    if-eqz v0, :cond_126

    .line 5350
    :try_start_11e
    invoke-virtual {v0}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_121
    .catchall {:try_start_11e .. :try_end_121} :catchall_122

    goto :goto_126

    :catchall_122
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_126
    :goto_126
    throw p0
.end method

.method public canAllowWhileInUsePermissionInFgsLocked(IILjava/lang/String;)Z
    .registers 10

    const/4 v4, 0x0

    .line 9441
    sget-object v5, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ProcessRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public canAllowWhileInUsePermissionInFgsLocked(IILjava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/app/BackgroundStartPrivileges;)Z
    .registers 7

    move v0, p2

    move p2, p1

    move-object p1, p3

    move p3, v0

    .line 9450
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ProcessRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final canBindingClientStartFgsLocked(I)Ljava/lang/String;
    .registers 5

    .line 8929
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 8930
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v2, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ActiveServices;ILandroid/util/ArraySet;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_1c

    .line 8987
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public canStartForegroundServiceLocked(IILjava/lang/String;)Z
    .registers 13

    .line 8709
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 8712
    :cond_a
    sget-object v7, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v3, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ProcessRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result p0

    const/4 p1, 0x0

    move-object v6, v3

    move-object v8, v7

    move v3, p0

    move-object v7, p1

    .line 8715
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundNoBindingCheckLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_29

    .line 8720
    invoke-virtual {v2, v5}, Lcom/android/server/am/ActiveServices;->canBindingClientStartFgsLocked(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_29

    const/16 p0, 0x36

    :cond_29
    if-eq p0, p1, :cond_2c

    return v1

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public final cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 6

    .line 3560
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v0, :cond_3d

    .line 3565
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 3567
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-ltz v0, :cond_3a

    .line 3568
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    if-eq v1, p1, :cond_37

    .line 3570
    invoke-virtual {v1}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_37

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v3, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v2, v3, :cond_37

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 3572
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_3d

    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 3583
    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
    .registers 23

    move-object/from16 v0, p0

    .line 7427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7428
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v2

    .line 7429
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_11
    if-ltz v3, :cond_2b

    .line 7430
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 7431
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 7432
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 7436
    :cond_2b
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateController;->startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object v2

    .line 7440
    :try_start_35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_3c
    if-ltz v5, :cond_a0

    .line 7441
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/android/server/am/ServiceRecord;

    .line 7442
    invoke-virtual {v10}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v8

    if-eqz v8, :cond_9d

    .line 7443
    iget-object v8, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v8, v8, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/2addr v8, v4

    if-eqz v8, :cond_77

    .line 7444
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Stopping service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": remove task"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7446
    invoke-virtual {v0, v10, v4}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    move v7, v4

    goto :goto_9d

    :catchall_74
    move-exception v0

    move-object v1, v0

    goto :goto_ad

    .line 7448
    :cond_77
    iget-object v8, v10, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 7449
    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v12

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p3

    invoke-direct/range {v9 .. v18}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILjava/lang/String;Ljava/lang/String;I)V

    .line 7448
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7451
    iget-object v8, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_9d

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isThreadReady()Z

    move-result v8
    :try_end_98
    .catchall {:try_start_35 .. :try_end_98} :catchall_74

    if-eqz v8, :cond_9d

    .line 7455
    :try_start_9a
    invoke-virtual {v0, v10, v4, v6}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_9d
    .catch Landroid/os/TransactionTooLargeException; {:try_start_9a .. :try_end_9d} :catch_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_74

    :catch_9d
    :cond_9d
    :goto_9d
    add-int/lit8 v5, v5, -0x1

    goto :goto_3c

    :cond_a0
    if-eqz v7, :cond_a7

    .line 7468
    :try_start_a2
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V
    :try_end_a7
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_74

    :cond_a7
    if-eqz v2, :cond_ac

    .line 7471
    invoke-virtual {v2}, Lcom/android/server/am/psc/BatchSession;->close()V

    :cond_ac
    return-void

    :goto_ad
    if-eqz v2, :cond_b7

    .line 7436
    :try_start_af
    invoke-virtual {v2}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    goto :goto_b7

    :catchall_b3
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b7
    :goto_b7
    throw v1
.end method

.method public final clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 7

    .line 5856
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_41

    .line 5860
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_20

    .line 5861
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-ne v1, v2, :cond_1d

    return-void

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 5867
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5868
    :try_start_27
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result p0

    .line 5869
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 5868
    invoke-virtual {v1, v4, p0, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    .line 5870
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_3e

    const/4 p0, 0x0

    .line 5871
    iput-object p0, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    return-void

    :catchall_3e
    move-exception p0

    .line 5870
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0

    :cond_41
    return-void
.end method

.method public final collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZILandroid/util/ArrayMap;)Z
    .registers 15

    .line 7250
    invoke-virtual {p6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ltz v0, :cond_9f

    .line 7251
    invoke-virtual {p6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    if-eqz p1, :cond_2b

    .line 7252
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 7253
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    if-eqz p2, :cond_2b

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 7255
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    goto :goto_2b

    :cond_29
    move v5, v2

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v5, v1

    .line 7256
    :goto_2c
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string v7, "ActivityManager"

    if-eqz v6, :cond_52

    invoke-virtual {v6}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v6

    if-ge v6, p5, :cond_52

    .line 7257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip force stopping service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": below minimum oom adj level"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    :cond_52
    if-eqz v5, :cond_9b

    .line 7261
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_60

    if-nez p3, :cond_60

    .line 7262
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_9b

    :cond_60
    if-nez p4, :cond_63

    return v1

    .line 7267
    :cond_63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force stopping service "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7268
    iget-object v3, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_84

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_84

    .line 7269
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices;->stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_84
    const/4 v3, 0x0

    .line 7271
    invoke-virtual {v4, v3, v3, v2, v3}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    .line 7272
    iput-object v3, v4, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 7273
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-nez v3, :cond_95

    .line 7274
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 7276
    :cond_95
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    :cond_9b
    :goto_9b
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    :cond_9f
    return v3
.end method

.method public final decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V
    .registers 8

    .line 2046
    iget-object v0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    if-eqz v0, :cond_3d

    .line 2048
    iget v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    if-gtz v1, :cond_3d

    .line 2050
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 2052
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2054
    iget-object v0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object p2, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    iput-boolean v2, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    const-wide/16 v0, 0x0

    .line 2056
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    return-void

    .line 2057
    :cond_2f
    iget-wide v0, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, v0, v2

    if-gez p2, :cond_3d

    .line 2058
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    :cond_3d
    return-void
.end method

.method public final deferServiceBringupIfFrozenLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IZZILandroid/app/BackgroundStartPrivileges;ZLandroid/app/IServiceConnection;)Z
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1445
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1446
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v5, p5

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    return v0

    .line 1451
    :cond_18
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2c

    .line 1453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1454
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    :cond_2c
    new-instance v3, Lcom/android/server/am/ActiveServices$4;

    move-object/from16 v6, p2

    move-object/from16 v4, p4

    move/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v7, p10

    move/from16 v8, p11

    move-object/from16 v15, p12

    move/from16 v9, p13

    move-object/from16 v10, p14

    move-object/from16 v16, v0

    move-object v0, v3

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v15}, Lcom/android/server/am/ActiveServices$4;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;ILjava/lang/String;IZLandroid/app/BackgroundStartPrivileges;)V

    move-object v1, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final dropFgsNotificationStateLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 7

    .line 6795
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-nez v0, :cond_5

    return-void

    .line 6801
    :cond_5
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz p0, :cond_43

    .line 6804
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_5e

    .line 6806
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    if-ne v2, p1, :cond_25

    goto :goto_40

    .line 6810
    :cond_25
    invoke-virtual {v2}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v3

    if-eqz v3, :cond_40

    iget v3, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v3, v4, :cond_40

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6812
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    return-void

    :cond_40
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 6818
    :cond_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FGS "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not found!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6823
    :cond_5e
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->stripForegroundServiceFlagFromNotification()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 16

    .line 8486
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 8487
    :try_start_6
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 8488
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v1

    .line 8489
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_57

    aget v5, v1, v4

    .line 8490
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez v6, :cond_24

    goto :goto_54

    :cond_24
    const-wide v7, 0x20b00000001L

    .line 8494
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v9, 0x10500000001L

    .line 8495
    invoke-virtual {p1, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8496
    iget-object v5, v6, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    move v6, v3

    .line 8497
    :goto_38
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v6, v9, :cond_51

    .line 8498
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ServiceRecord;

    const-wide v10, 0x20b00000002L

    invoke-virtual {v9, p1, v10, v11}, Lcom/android/server/am/ServiceRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    :catchall_4f
    move-exception p0

    goto :goto_5f

    .line 8501
    :cond_51
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 8503
    :cond_57
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8504
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_6 .. :try_end_5b} :catchall_4f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_5f
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_4f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    .registers 9

    .line 8571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8572
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 8573
    :try_start_17
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "SERVICE "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8574
    iget-object v1, p4, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8575
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8576
    const-string v1, " pid="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8577
    iget-object v1, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_52

    .line 8578
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 8579
    const-string v1, " user="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p4, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_57

    :catchall_4f
    move-exception p1

    goto/16 :goto_d0

    .line 8580
    :cond_52
    const-string v1, "(not running)"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_57
    if-eqz p6, :cond_5c

    .line 8582
    invoke-virtual {p4, p3, v0}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8584
    :cond_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_17 .. :try_end_5d} :catchall_4f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 8586
    iget-object p0, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_cf

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    if-eqz p0, :cond_cf

    .line 8587
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p6, "  Client:"

    invoke-virtual {p3, p6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8588
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 8590
    :try_start_75
    new-instance p6, Lcom/android/internal/os/TransferPipe;

    invoke-direct {p6}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7a} :catch_9c
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7a} :catch_a3

    .line 8592
    :try_start_7a
    invoke-virtual {p6}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-interface {p0, v0, p4, p5}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 8593
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "    "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 8594
    invoke-virtual {p6, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_98
    .catchall {:try_start_7a .. :try_end_98} :catchall_9e

    .line 8596
    :try_start_98
    invoke-virtual {p6}, Lcom/android/internal/os/TransferPipe;->kill()V

    return-void

    :catch_9c
    move-exception p0

    goto :goto_b8

    :catchall_9e
    move-exception p0

    invoke-virtual {p6}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 8597
    throw p0
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a3} :catch_9c
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a3} :catch_a3

    .line 8601
    :catch_a3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "    Got a RemoteException while dumping the service"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_cf

    .line 8599
    :goto_b8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "    Failure while dumping the service: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_cf
    :goto_cf
    return-void

    .line 8584
    :goto_d0
    :try_start_d0
    monitor-exit p0
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_4f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[I[Ljava/lang/String;IZ)Z
    .registers 20

    const/4 v1, 0x1

    .line 8518
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCachedAppOptimizer()Lcom/android/server/am/CachedAppOptimizer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 8519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8521
    invoke-static {p3}, Lcom/android/internal/util/DumpUtils;->filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v3

    .line 8523
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_87

    if-nez p4, :cond_29

    .line 8525
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v5}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v5

    goto :goto_2b

    :catchall_25
    move-exception v0

    move-object p1, v0

    goto/16 :goto_ab

    :cond_29
    move-object/from16 v5, p4

    .line 8528
    :goto_2b
    array-length v6, v5

    move v7, v2

    :goto_2d
    if-ge v7, v6, :cond_5a

    aget v8, v5, v7

    .line 8529
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez v8, :cond_3c

    goto :goto_57

    .line 8533
    :cond_3c
    iget-object v8, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    move v9, v2

    .line 8534
    :goto_3f
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_57

    .line 8535
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ServiceRecord;

    .line 8537
    invoke-interface {v3, v10}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_54

    .line 8538
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    add-int/lit8 v9, v9, 0x1

    goto :goto_3f

    :cond_57
    :goto_57
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    .line 8542
    :cond_5a
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_1c .. :try_end_5b} :catchall_25

    :try_start_5b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 8544
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_87

    if-gtz v3, :cond_6e

    .line 8561
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getCachedAppOptimizer()Lcom/android/server/am/CachedAppOptimizer;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    return v2

    .line 8549
    :cond_6e
    :try_start_6e
    new-instance v3, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    move v3, v2

    .line 8552
    :goto_7b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_a1

    if-eqz v3, :cond_8a

    .line 8554
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_8a

    :catchall_87
    move-exception v0

    move-object p1, v0

    goto :goto_b0

    .line 8557
    :cond_8a
    :goto_8a
    const-string v4, ""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v8, p5

    move/from16 v9, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActiveServices;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    :try_end_9d
    .catchall {:try_start_6e .. :try_end_9d} :catchall_87

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_7b

    .line 8561
    :cond_a1
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getCachedAppOptimizer()Lcom/android/server/am/CachedAppOptimizer;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    return v1

    .line 8542
    :goto_ab
    :try_start_ab
    monitor-exit v4
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_25

    :try_start_ac
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_b0
    .catchall {:try_start_ac .. :try_end_b0} :catchall_87

    .line 8561
    :goto_b0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getCachedAppOptimizer()Lcom/android/server/am/CachedAppOptimizer;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 8562
    throw p1
.end method

.method public enableFgsNotificationRateLimitLocked(Z)Z
    .registers 3

    .line 3292
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralRateLimited:Z

    if-eq p1, v0, :cond_d

    .line 3293
    iput-boolean p1, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralRateLimited:Z

    if-nez p1, :cond_d

    .line 3296
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralEligible:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clear()V

    :cond_d
    return p1
.end method

.method public final findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;
    .registers 4

    .line 4833
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object p0

    if-ne p0, p2, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public forceStopPackageLocked(Ljava/lang/String;I)V
    .registers 7

    .line 7403
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_3f

    .line 7404
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_3f

    .line 7405
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1a
    if-ltz v2, :cond_36

    .line 7406
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 7407
    iget-object v3, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 7408
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 7409
    iput-boolean v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 7412
    :cond_36
    iget-boolean v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-eqz v2, :cond_3f

    const-wide/16 v2, 0x0

    .line 7413
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 7416
    :cond_3f
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_46
    if-ltz v0, :cond_64

    .line 7417
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 7418
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget v1, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v1, p2, :cond_61

    .line 7419
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_61
    add-int/lit8 v0, v0, -0x1

    goto :goto_46

    .line 7422
    :cond_64
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->removeServiceRestartBackoffEnabledLocked(Ljava/lang/String;)V

    .line 7423
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActiveServices;->removeServiceNotificationDeferralsLocked(Ljava/lang/String;I)V

    return-void
.end method

.method public foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z
    .registers 11

    const-wide v0, 0x7fffffffffffffffL

    .line 1932
    iput-wide v0, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1933
    iget-boolean v0, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    return v1

    .line 1938
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    const/4 v2, 0x0

    if-nez v0, :cond_28

    iget-boolean v0, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-eqz v0, :cond_17

    goto :goto_28

    .line 1956
    :cond_17
    iget-wide v3, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    add-long/2addr v3, v5

    cmp-long p0, p2, v3

    if-ltz p0, :cond_25

    return v1

    .line 1967
    :cond_25
    iput-wide v3, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    return v2

    .line 1939
    :cond_28
    :goto_28
    iget-wide v3, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    .line 1940
    iget-wide v5, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_37

    .line 1941
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    goto :goto_3d

    .line 1942
    :cond_37
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    :goto_3d
    add-long/2addr v3, v5

    cmp-long v0, p2, v3

    if-ltz v0, :cond_43

    return v1

    .line 1950
    :cond_43
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    add-long/2addr p2, v0

    cmp-long p0, p2, v3

    if-lez p0, :cond_4f

    move-wide v3, p2

    .line 1951
    :cond_4f
    iput-wide v3, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    return v2
.end method

.method public foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V
    .registers 10

    .line 2117
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v0, :cond_50

    .line 2120
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    if-ltz v1, :cond_49

    .line 2121
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 2122
    iget v6, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    invoke-virtual {p1}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v7

    if-ne v6, v7, :cond_46

    .line 2123
    invoke-virtual {p1}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_3f

    .line 2124
    iget-boolean v6, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v6, :cond_3c

    .line 2125
    iput-boolean v2, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    move v4, v2

    .line 2128
    :cond_3c
    iput-boolean v2, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    goto :goto_46

    .line 2129
    :cond_3f
    iget-boolean v6, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-eqz v6, :cond_46

    .line 2130
    iput-boolean v3, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    move v4, v2

    :cond_46
    :goto_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :cond_49
    if-eqz v4, :cond_50

    const-wide/16 v1, 0x0

    .line 2136
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    :cond_50
    return-void
.end method

.method public final generateAdditionalSeInfoFromService(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 4889
    const-string v0, ""

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_3d

    .line 4892
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 4893
    const-string v1, "android.service.voice.HotwordDetectionService"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ":isolatedComputeApp"

    if-nez v1, :cond_3c

    const-string v1, "android.service.voice.VisualQueryDetectionService"

    .line 4894
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "android.service.ondeviceintelligence.OnDeviceSandboxedInferenceService"

    .line 4895
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_3c

    .line 4901
    :cond_2a
    const-string v1, "android.service.wearable.WearableSensingService"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 4902
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerService;->hasRestrictedAssociations(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3b

    return-object v2

    :cond_3b
    return-object v0

    :cond_3c
    :goto_3c
    return-object v2

    :cond_3d
    :goto_3d
    return-object v0
.end method

.method public final getAllowMode(Landroid/content/Intent;Ljava/lang/String;)I
    .registers 3

    if-eqz p2, :cond_18

    .line 5307
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 5308
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x3

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public final getAppStateTracker()Lcom/android/server/AppStateTracker;
    .registers 2

    .line 813
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-nez v0, :cond_e

    .line 814
    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 816
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    return-object p0
.end method

.method public getClientPackagesLocked(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 11

    .line 9791
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 9792
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 9793
    :goto_f
    array-length v4, v1

    if-ge v3, v4, :cond_3a

    .line 9794
    aget v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v4

    .line 9795
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v2

    :goto_1d
    if-ge v6, v5, :cond_37

    .line 9796
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 9797
    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 9798
    invoke-static {v7, v0}, Lcom/android/server/am/ActiveServices;->getClientPackages(Lcom/android/server/am/ServiceRecord;Landroid/util/ArraySet;)V

    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_3a
    return-object v0
.end method

.method public getExtraRestartTimeInBetweenLocked()J
    .registers 3

    .line 5799
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    if-nez v1, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    .line 5802
    :cond_b
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    move-result v0

    .line 5803
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public final getFgsTimeLimitedInfo(II)Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;
    .registers 3

    .line 3837
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mTimeLimitedFgsInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_11

    .line 3839
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getForegroundServiceTypeLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)I
    .registers 6

    .line 1914
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1915
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v1

    .line 1918
    :try_start_c
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 1920
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result p1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    goto :goto_1a

    :catchall_17
    move-exception p1

    goto :goto_22

    :cond_19
    const/4 p1, 0x0

    .line 1923
    :goto_1a
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    return p1

    :goto_22
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    .line 1924
    throw p1
.end method

.method public final getHostingRecordTriggerType(Lcom/android/server/am/ServiceRecord;)Ljava/lang/String;
    .registers 3

    .line 6167
    const-string p0, "android.permission.BIND_JOB_SERVICE"

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    iget p0, p1, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    const/16 p1, 0x3e8

    if-ne p0, p1, :cond_14

    .line 6169
    const-string/jumbo p0, "job"

    return-object p0

    .line 6171
    :cond_14
    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method public final getNextFgsStopTime(ILcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;)J
    .registers 7

    .line 3829
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->getTimeLimitForFgsType(I)J

    move-result-wide p0

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p0, v0

    if-nez v2, :cond_e

    return-wide v0

    .line 3833
    :cond_e
    invoke-virtual {p2}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->getLastFgsStartTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->getTotalRuntime()J

    move-result-wide v2

    sub-long/2addr p0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public getRunningServiceConnectionsLocked(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 8

    .line 7832
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$Injector;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7833
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object p1

    if-nez p1, :cond_18

    .line 7835
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 7838
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p1

    .line 7839
    new-instance v0, Ljava/util/ArrayList;

    .line 7840
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 7841
    :goto_27
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_53

    .line 7842
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move v4, v1

    .line 7843
    :goto_34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_50

    .line 7844
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 7845
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeConnectionInfoLocked(Lcom/android/server/am/ConnectionRecord;)Landroid/app/ActivityManager$ConnectionInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_53
    return-object v0
.end method

.method public getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .registers 5

    .line 7799
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$Injector;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7800
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 7802
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p0

    .line 7803
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1c
    if-ltz p1, :cond_44

    .line 7804
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 7805
    :goto_25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 7806
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    iget-object v2, v2, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_3e

    .line 7807
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ConnectionRecord;

    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    return-object p0

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_41
    add-int/lit8 p1, p1, -0x1

    goto :goto_1c

    :cond_44
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRunningServiceInfoLocked(IIIZZ)Ljava/util/List;
    .registers 13

    .line 7747
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7750
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz p5, :cond_6f

    .line 7753
    :try_start_10
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p3}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object p3

    move p4, v2

    .line 7754
    :goto_19
    array-length p5, p3

    if-ge p4, p5, :cond_4b

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p5, p1, :cond_4b

    .line 7755
    aget p5, p3, p4

    invoke-virtual {p0, p5}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object p5

    move v3, v2

    .line 7756
    :goto_29
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_48

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, p1, :cond_48

    .line 7757
    invoke-virtual {p5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 7758
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :catchall_45
    move-exception p1

    goto/16 :goto_d8

    :cond_48
    add-int/lit8 p4, p4, 0x1

    goto :goto_19

    .line 7762
    :cond_4b
    :goto_4b
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v2, p3, :cond_d0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p3, p1, :cond_d0

    .line 7763
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/ServiceRecord;

    .line 7765
    invoke-virtual {p0, p3}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object p4

    .line 7766
    iget-wide v3, p3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v3, p4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 7767
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 7770
    :cond_6f
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p5

    .line 7771
    invoke-virtual {p0, p5}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v3

    move v4, v2

    .line 7772
    :goto_78
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_9e

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, p1, :cond_9e

    .line 7773
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    if-nez p4, :cond_94

    .line 7775
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_9b

    iget v6, v6, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-ne v6, p3, :cond_9b

    .line 7776
    :cond_94
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9b
    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    .line 7780
    :cond_9e
    :goto_9e
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_d0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, p1, :cond_d0

    .line 7781
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 7782
    iget v4, v3, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v4, p5, :cond_cd

    if-nez p4, :cond_c2

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_cd

    iget v4, v4, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-ne v4, p3, :cond_cd

    .line 7785
    :cond_c2
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v4

    .line 7786
    iget-wide v5, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 7787
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_cd
    .catchall {:try_start_10 .. :try_end_cd} :catchall_45

    :cond_cd
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    .line 7792
    :cond_d0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    return-object p2

    :goto_d8
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    .line 7793
    throw p1
.end method

.method public final getServiceBindingOomAdjPolicyForAddLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    if-eqz p2, :cond_27

    const/4 v1, 0x7

    if-ne p1, p2, :cond_a

    move v0, v1

    goto :goto_d

    .line 6192
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCached()Z

    :goto_d
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_1c

    .line 6204
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->evaluateServiceConnectionAdd(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/ConnectionRecord;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v0

    .line 6211
    :goto_1d
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isFreezable()Z

    move-result p0

    if-eqz p0, :cond_26

    or-int/lit8 p0, v1, 0x8

    return p0

    :cond_26
    return v1

    :cond_27
    return v0
.end method

.method public final getServiceBindingOomAdjPolicyForRemovalLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;)I
    .registers 5

    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    if-eqz p3, :cond_15

    const/4 v0, 0x7

    if-ne p1, p2, :cond_a

    return v0

    .line 6228
    :cond_a
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->evaluateServiceConnectionRemoval(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/ConnectionRecord;)Z

    move-result p0

    if-nez p0, :cond_15

    return v0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;
    .registers 3

    .line 836
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ServiceRecord;

    return-object p0
.end method

.method public final getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .registers 4

    .line 866
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez v0, :cond_1c

    .line 868
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;-><init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V

    .line 869
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1c
    return-object v0
.end method

.method public getServicesLocked(I)Landroid/util/ArrayMap;
    .registers 2

    .line 875
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getShortProcessNameForStats(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1630
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 1631
    array-length p1, p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_32

    const/4 p1, 0x0

    .line 1633
    aget-object v0, p0, p1

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p0, 0x0

    return-object p0

    :cond_1d
    if-eqz p2, :cond_32

    .line 1636
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1638
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    return-object p2
.end method

.method public final getShortServiceNameForStats(Lcom/android/server/am/ServiceRecord;)Ljava/lang/String;
    .registers 2

    .line 1646
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1647
    invoke-virtual {p0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTimeLimitForFgsType(I)J
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_d

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    .line 3815
    :cond_d
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    return-wide p0

    .line 3817
    :cond_14
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    return-wide p0
.end method

.method public getTimeLimitedFgsType(I)I
    .registers 8

    and-int/lit16 v0, p1, 0x2000

    const-wide/16 v1, 0x0

    const/16 v3, 0x2000

    if-ne v0, v3, :cond_f

    .line 3795
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    goto :goto_11

    :cond_f
    const/4 v3, 0x0

    move-wide v4, v1

    :goto_11
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2a

    cmp-long p1, v4, v1

    if-eqz p1, :cond_23

    .line 3800
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, p1, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    cmp-long p1, v1, v4

    if-lez p1, :cond_2a

    .line 3802
    :cond_23
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    return v0

    :cond_2a
    return v3
.end method

.method public hasForegroundServiceNotificationLocked(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 7

    .line 845
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActiveServices$ServiceMap;

    const/4 p2, 0x0

    if-eqz p0, :cond_3f

    move v0, p2

    .line 847
    :goto_c
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 848
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 849
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {v1}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 850
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v1, :cond_3c

    .line 851
    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 p0, 0x1

    return p0

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_3f
    return p2
.end method

.method public hasServiceTimedOutLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .registers 6

    .line 3928
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3929
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v1

    .line 3931
    :try_start_c
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_27

    const/4 p2, 0x0

    if-nez p1, :cond_1b

    .line 3938
    :cond_13
    :goto_13
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    return p2

    .line 3935
    :cond_1b
    :try_start_1b
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result p1
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_27

    if-eqz p1, :cond_13

    const/4 p2, 0x1

    goto :goto_13

    :catchall_27
    move-exception p1

    .line 3938
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    .line 3939
    throw p1
.end method

.method public final initMediaProjectFgsTypeCustomPermission()V
    .registers 4

    .line 3053
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->getDefaultPolicy()Landroid/app/ForegroundServiceTypePolicy;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    .line 3055
    invoke-virtual {v0, v1, v2}, Landroid/app/ForegroundServiceTypePolicy;->getForegroundServiceTypePolicyInfo(II)Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3059
    new-instance v1, Lcom/android/server/am/ActiveServices$MediaProjectionFgsTypeCustomPermission;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$MediaProjectionFgsTypeCustomPermission;-><init>(Lcom/android/server/am/ActiveServices;)V

    invoke-virtual {v0, v1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->setCustomPermission(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;)V

    :cond_15
    return-void
.end method

.method public final initSystemExemptedFgsTypePermission()V
    .registers 4

    .line 3020
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->getDefaultPolicy()Landroid/app/ForegroundServiceTypePolicy;

    move-result-object v0

    const/16 v1, 0x400

    const/4 v2, 0x0

    .line 3022
    invoke-virtual {v0, v1, v2}, Landroid/app/ForegroundServiceTypePolicy;->getForegroundServiceTypePolicyInfo(II)Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3026
    new-instance v1, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;-><init>(Lcom/android/server/am/ActiveServices;)V

    invoke-virtual {v0, v1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->setCustomPermission(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;)V

    :cond_15
    return-void
.end method

.method public final isBgFgsRestrictionEnabled(Lcom/android/server/am/ServiceRecord;I)Z
    .registers 7

    .line 9277
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 9282
    :cond_a
    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v2, 0xa2c30a7

    invoke-static {v2, v3, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p1

    if-nez p1, :cond_18

    return v1

    .line 9290
    :cond_18
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    const/4 p1, 0x1

    if-nez p0, :cond_22

    return p1

    :cond_22
    const/16 p0, 0x3e8

    if-ne p2, p0, :cond_27

    return p1

    .line 9297
    :cond_27
    invoke-static {v2, v3, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_2e

    return v1

    :cond_2e
    return p1
.end method

.method public final isDeviceProvisioningPackage(Ljava/lang/String;)Z
    .registers 4

    .line 9806
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 9807
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040285

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    .line 9810
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    if-eqz p0, :cond_21

    .line 9811
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public final isForegroundServiceAllowedInBackgroundRestricted(ILjava/lang/String;)Z
    .registers 4

    .line 2171
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 2173
    invoke-virtual {p1, p2}, Lcom/android/server/am/UidRecord;->getProcessInPackage(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 2174
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->isForegroundServiceAllowedInBackgroundRestricted(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final isForegroundServiceAllowedInBackgroundRestricted(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    .line 2153
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    return v0

    .line 2156
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isBackgroundRestricted()Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 2157
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result p0

    const/4 v1, 0x3

    if-gt p0, v1, :cond_1a

    goto :goto_2a

    .line 2160
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result p0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_28

    .line 2161
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isSetBoundByNonBgRestrictedApp()Z

    move-result p0

    if-eqz p0, :cond_28

    return v0

    :cond_28
    const/4 p0, 0x0

    return p0

    :cond_2a
    :goto_2a
    return v0
.end method

.method public final isPermissionGranted(Ljava/lang/String;II)Z
    .registers 4

    .line 9237
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z
    .registers 5

    .line 6492
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    return v0

    :cond_8
    if-nez p2, :cond_e

    .line 6498
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result p3

    :cond_e
    if-eqz p3, :cond_11

    return v0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isServiceRestartBackoffEnabledLocked(Ljava/lang/String;)Z
    .registers 2

    .line 5922
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isTempAllowedByAlarmClock(I)Z
    .registers 3

    .line 2182
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 2183
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->isAllowlistedForFgsStartLOSP(I)Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_11

    .line 2185
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    const/16 v0, 0x12d

    if-ne p0, v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    return p1
.end method

.method public killMisbehavingService(Lcom/android/server/am/ServiceRecord;IILjava/lang/String;I)V
    .registers 16

    .line 1788
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1789
    :try_start_6
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const/4 v2, 0x0

    if-nez v0, :cond_12

    .line 1791
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_27

    :catchall_f
    move-exception v0

    move-object p0, v0

    goto :goto_39

    .line 1795
    :cond_12
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 1796
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    if-eqz p1, :cond_27

    .line 1798
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 1801
    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "Bad notification for startForeground"

    const/4 v8, 0x1

    const/4 v6, -0x1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    .line 1803
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final killServicesLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7475
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 7503
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateController;->startBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object v3

    .line 7506
    :try_start_10
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_16
    const/4 v7, 0x0

    if-ltz v5, :cond_27

    .line 7507
    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v8

    .line 7508
    invoke-virtual {v0, v8, v1, v7, v6}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)I

    add-int/lit8 v5, v5, -0x1

    goto :goto_16

    :catchall_23
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2e0

    .line 7510
    :cond_27
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 7511
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessStateController;->removeAllConnections(Lcom/android/server/am/ProcessServiceRecord;)V

    const/4 v5, 0x0

    .line 7513
    iput-boolean v5, v2, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    .line 7516
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_39
    if-ltz v8, :cond_fe

    .line 7517
    invoke-virtual {v2, v8}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v9

    .line 7518
    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v11, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 7519
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 7520
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 7518
    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopLaunch(ILjava/lang/String;Ljava/lang/String;)V

    .line 7521
    iget-object v10, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v10, v1, :cond_74

    if-eqz v10, :cond_74

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v10

    if-nez v10, :cond_74

    .line 7522
    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v11, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v10, v11, v9}, Lcom/android/server/am/ProcessStateController;->stopService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)Z

    .line 7523
    iget-object v10, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 7525
    :cond_74
    invoke-virtual {v9, v7, v7, v5, v7}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    .line 7526
    iput-object v7, v9, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 7527
    iput v5, v9, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 7528
    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v10, v10, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_82
    .catchall {:try_start_10 .. :try_end_82} :catchall_23

    .line 7529
    :try_start_82
    invoke-virtual {v9}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 7530
    monitor-exit v10
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_fb

    .line 7531
    :try_start_86
    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7535
    iget-object v10, v9, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    sub-int/2addr v10, v6

    :goto_92
    if-ltz v10, :cond_f6

    .line 7537
    iget-object v11, v9, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/IntentBindRecord;

    .line 7542
    iput-object v7, v11, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 7543
    iput-boolean v5, v11, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iput-boolean v5, v11, Lcom/android/server/am/IntentBindRecord;->received:Z

    iput-boolean v5, v11, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 7548
    iget-object v12, v11, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    sub-int/2addr v12, v6

    :goto_ab
    if-ltz v12, :cond_f2

    .line 7549
    iget-object v13, v11, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 7551
    invoke-virtual {v13}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result v14

    if-nez v14, :cond_ee

    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v13

    if-nez v13, :cond_c2

    goto :goto_ee

    .line 7557
    :cond_c2
    iget-object v13, v11, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/AppBindRecord;

    .line 7559
    iget-object v14, v13, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v14

    sub-int/2addr v14, v6

    :goto_d1
    if-ltz v14, :cond_ee

    .line 7560
    iget-object v15, v13, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ConnectionRecord;

    .line 7561
    invoke-virtual {v15, v6}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v16

    if-eqz v16, :cond_ea

    const/16 v7, 0x30

    .line 7562
    invoke-virtual {v15, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->notHasFlag(I)Z

    move-result v7
    :try_end_e7
    .catchall {:try_start_86 .. :try_end_e7} :catchall_23

    if-eqz v7, :cond_ea

    goto :goto_ee

    :cond_ea
    add-int/lit8 v14, v14, -0x1

    const/4 v7, 0x0

    goto :goto_d1

    :cond_ee
    :goto_ee
    add-int/lit8 v12, v12, -0x1

    const/4 v7, 0x0

    goto :goto_ab

    :cond_f2
    add-int/lit8 v10, v10, -0x1

    const/4 v7, 0x0

    goto :goto_92

    :cond_f6
    add-int/lit8 v8, v8, -0x1

    const/4 v7, 0x0

    goto/16 :goto_39

    :catchall_fb
    move-exception v0

    .line 7530
    :try_start_fc
    monitor-exit v10
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    :try_start_fd
    throw v0

    .line 7585
    :cond_fe
    iget v7, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v7

    .line 7588
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_109
    if-ltz v8, :cond_205

    .line 7589
    invoke-virtual {v2, v8}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v9

    .line 7593
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v10

    if-nez v10, :cond_11f

    .line 7594
    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v10, v2, v9}, Lcom/android/server/am/ProcessStateController;->stopService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)Z

    .line 7595
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 7600
    :cond_11f
    iget-object v10, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v11, v9, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ServiceRecord;

    if-eq v10, v9, :cond_155

    if-eqz v10, :cond_201

    .line 7603
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Service "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " in process "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " not same as in map: "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_201

    :cond_155
    if-eqz p2, :cond_1b7

    .line 7611
    iget v10, v9, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v10, v10

    iget-object v12, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v12, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_1b7

    iget-object v10, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x8

    if-nez v10, :cond_1b7

    .line 7614
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Service crashed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " times, stopping: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7616
    iget v10, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 7617
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v9, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 7618
    iget-object v13, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v13, :cond_1a5

    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v13

    goto :goto_1a6

    :cond_1a5
    const/4 v13, -0x1

    :goto_1a6
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v10

    const/16 v11, 0x7552

    .line 7616
    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7619
    invoke-virtual {v0, v9, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_201

    :cond_1b7
    if-eqz p2, :cond_1fe

    .line 7620
    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v11, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 7621
    invoke-virtual {v10, v11, v5}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v10

    if-nez v10, :cond_1c6

    goto :goto_1fe

    .line 7624
    :cond_1c6
    invoke-virtual {v0, v9, v6}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v10

    if-nez v10, :cond_1d0

    .line 7631
    invoke-virtual {v0, v9, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_201

    .line 7632
    :cond_1d0
    invoke-virtual {v9, v5}, Lcom/android/server/am/ServiceRecord;->canStopIfKilled(Z)Z

    move-result v10

    if-eqz v10, :cond_201

    .line 7636
    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v10, v9, v5}, Lcom/android/server/am/ProcessStateController;->setStartRequested(Lcom/android/server/am/psc/ServiceRecordInternal;Z)V

    .line 7637
    iget-object v10, v9, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v10, :cond_201

    .line 7638
    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v10, v10, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1e8
    .catchall {:try_start_fd .. :try_end_1e8} :catchall_23

    .line 7639
    :try_start_1e8
    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v11, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v11

    .line 7640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 7639
    invoke-virtual {v9, v5, v11, v12, v13}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 7641
    monitor-exit v10

    goto :goto_201

    :catchall_1fb
    move-exception v0

    monitor-exit v10
    :try_end_1fd
    .catchall {:try_start_1e8 .. :try_end_1fd} :catchall_1fb

    :try_start_1fd
    throw v0

    .line 7622
    :cond_1fe
    :goto_1fe
    invoke-virtual {v0, v9, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    :cond_201
    :goto_201
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_109

    .line 7651
    :cond_205
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    if-nez p2, :cond_2a6

    .line 7655
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessStateController;->stopAllServices(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 7656
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->clearBoundClientUids()V

    .line 7659
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    :goto_21d
    if-ltz v4, :cond_248

    .line 7660
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 7661
    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_245

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v8, v9, :cond_245

    .line 7663
    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7664
    invoke-virtual {v0, v7}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_245
    add-int/lit8 v4, v4, -0x1

    goto :goto_21d

    .line 7667
    :cond_248
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    :goto_24f
    if-ltz v4, :cond_277

    .line 7668
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 7669
    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_274

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v8, :cond_274

    .line 7671
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_274
    add-int/lit8 v4, v4, -0x1

    goto :goto_24f

    .line 7674
    :cond_277
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v6

    :goto_27e
    if-ltz v4, :cond_2a6

    .line 7675
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 7676
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a3

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_2a3

    .line 7678
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_2a3
    add-int/lit8 v4, v4, -0x1

    goto :goto_27e

    .line 7684
    :cond_2a6
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_2ac
    :goto_2ac
    if-lez v4, :cond_2d0

    add-int/lit8 v4, v4, -0x1

    .line 7687
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 7688
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v7, v1, :cond_2ac

    .line 7689
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v7, v7, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2c3
    .catchall {:try_start_1fd .. :try_end_2c3} :catchall_23

    .line 7690
    :try_start_2c3
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 7691
    monitor-exit v7
    :try_end_2c7
    .catchall {:try_start_2c3 .. :try_end_2c7} :catchall_2cd

    .line 7692
    :try_start_2c7
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2cc
    .catchall {:try_start_2c7 .. :try_end_2cc} :catchall_23

    goto :goto_2ac

    :catchall_2cd
    move-exception v0

    .line 7691
    :try_start_2ce
    monitor-exit v7
    :try_end_2cf
    .catchall {:try_start_2ce .. :try_end_2cf} :catchall_2cd

    :try_start_2cf
    throw v0

    .line 7697
    :cond_2d0
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateController;->stopAllExecutingServices(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 7698
    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessServiceRecord;->noteScheduleServiceTimeoutPending(Z)V
    :try_end_2da
    .catchall {:try_start_2cf .. :try_end_2da} :catchall_23

    if-eqz v3, :cond_2df

    .line 7699
    invoke-virtual {v3}, Lcom/android/server/am/psc/BatchSession;->close()V

    :cond_2df
    return-void

    :goto_2e0
    if-eqz v3, :cond_2ea

    .line 7503
    :try_start_2e2
    invoke-virtual {v3}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_2e5
    .catchall {:try_start_2e2 .. :try_end_2e5} :catchall_2e6

    goto :goto_2ea

    :catchall_2e6
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2ea
    :goto_2ea
    throw v1
.end method

.method public final synthetic lambda$attachApplicationLocked$2()V
    .registers 10

    .line 7204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 7205
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v8

    .line 7207
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices;->getExtraRestartTimeInBetweenLocked()J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    const-string/jumbo v5, "other"

    move-object v0, p0

    .line 7206
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->rescheduleServiceRestartIfPossibleLocked(JJLjava/lang/String;J)V

    .line 7210
    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    :try_start_22
    monitor-exit v8
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$canBindingClientStartFgsLocked$6(ILandroid/util/ArraySet;Lcom/android/server/am/ProcessRecord;)Landroid/util/Pair;
    .registers 25

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 8932
    iget v3, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-ne v3, v0, :cond_93

    .line 8933
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 8934
    iget-object v3, v2, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_14
    if-ge v5, v3, :cond_93

    .line 8936
    iget-object v6, v2, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 8937
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v6

    .line 8938
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move v8, v4

    :goto_27
    if-ge v8, v7, :cond_90

    .line 8940
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move v10, v4

    .line 8941
    :goto_30
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_8d

    .line 8942
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ConnectionRecord;

    .line 8943
    iget-object v12, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v12, v12, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 8951
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v13

    if-eqz v13, :cond_47

    goto :goto_8a

    .line 8954
    :cond_47
    iget v13, v12, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 8955
    iget v12, v12, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-eq v12, v0, :cond_8a

    .line 8959
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_58

    goto :goto_8a

    .line 8962
    :cond_58
    iget-object v15, v11, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 8963
    sget-object v19, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    const/16 v18, 0x0

    move-object/from16 v14, p0

    move/from16 v17, v12

    move/from16 v16, v13

    .line 8964
    invoke-virtual/range {v14 .. v19}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ProcessRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v18, v15

    move-object/from16 v20, v19

    move v15, v11

    move-object/from16 v19, v12

    .line 8969
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundNoBindingCheckLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result v11

    move-object/from16 v15, v18

    const/4 v12, -0x1

    if-eq v11, v12, :cond_83

    .line 8975
    new-instance v0, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 8977
    :cond_83
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_8a
    :goto_8a
    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    :cond_8d
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    :cond_90
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_93
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic lambda$shouldAllowFgsStartForegroundNoBindingCheckLocked$7(IZLcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;
    .registers 6

    .line 9082
    iget v0, p3, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-ne v0, p1, :cond_54

    .line 9083
    invoke-virtual {p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_4b

    if-eqz p2, :cond_11

    const/4 p2, 0x5

    if-gt p1, p2, :cond_11

    goto :goto_4b

    .line 9088
    :cond_11
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 9089
    iget-boolean p1, p1, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundForegroundServiceStartsPermission:Z

    if-eqz p1, :cond_22

    const/16 p0, 0x3d

    .line 9091
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 9093
    :cond_22
    invoke-virtual {p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastInvisibleTime()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_54

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p3, p1, v0

    if-gez p3, :cond_54

    .line 9095
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 9097
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_54

    const/16 p0, 0x43

    .line 9098
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 9086
    :cond_4b
    :goto_4b
    invoke-static {p1}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_54
    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic lambda$shouldAllowFgsWhileInUsePermissionByBindingsLocked$5(ILandroid/util/ArraySet;Lcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;
    .registers 23

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 8875
    iget v3, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    const/4 v4, 0x0

    if-eq v3, v0, :cond_c

    return-object v4

    .line 8878
    :cond_c
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 8879
    iget-object v3, v2, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v5, 0x0

    move v6, v5

    :goto_16
    if-ge v6, v3, :cond_a0

    .line 8881
    iget-object v7, v2, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 8882
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v7

    .line 8883
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move v9, v5

    :goto_29
    if-ge v9, v8, :cond_98

    .line 8885
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    move v11, v5

    .line 8886
    :goto_32
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_91

    .line 8887
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ConnectionRecord;

    .line 8888
    iget-object v13, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 8889
    iget v13, v13, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-eq v13, v0, :cond_50

    .line 8894
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_55

    :cond_50
    move-object/from16 v14, p0

    move-object/from16 v16, v4

    goto :goto_8c

    :cond_55
    move-object/from16 v14, p0

    .line 8899
    iget-object v15, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v15, v0}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v15

    move-object/from16 v16, v4

    const/4 v4, 0x2

    const/16 v17, 0x1

    if-ne v15, v4, :cond_67

    move/from16 v18, v17

    goto :goto_69

    :cond_67
    move/from16 v18, v5

    :goto_69
    if-ge v15, v4, :cond_74

    const/high16 v4, 0x100000

    .line 8903
    invoke-virtual {v12, v4}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_74

    goto :goto_76

    :cond_74
    move/from16 v17, v5

    :goto_76
    if-nez v18, :cond_83

    if-eqz v17, :cond_7b

    goto :goto_83

    .line 8910
    :cond_7b
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 8906
    :cond_83
    :goto_83
    invoke-static {v15}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :goto_8c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v16

    goto :goto_32

    :cond_91
    move-object/from16 v14, p0

    move-object/from16 v16, v4

    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    :cond_98
    move-object/from16 v14, p0

    move-object/from16 v16, v4

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_16

    :cond_a0
    move-object/from16 v16, v4

    return-object v16
.end method

.method public final logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V
    .registers 50

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    .line 9346
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    invoke-static {v2, v3}, Lcom/android/server/am/ActivityManagerUtils;->shouldSamplePackageForAtom(Ljava/lang/String;F)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_148

    :cond_16
    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v5, v4, :cond_29

    if-eq v5, v3, :cond_29

    if-ne v5, v2, :cond_20

    goto :goto_29

    .line 9359
    :cond_20
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v6

    .line 9360
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    move-result v7

    goto :goto_2d

    .line 9355
    :cond_29
    :goto_29
    iget-boolean v6, v1, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgsAtEntering:Z

    .line 9356
    iget v7, v1, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    .line 9362
    :goto_2d
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->mRecentCallerApplicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x0

    if-eqz v8, :cond_36

    .line 9363
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move v10, v8

    goto :goto_37

    :cond_36
    move v10, v9

    .line 9366
    :goto_37
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move v11, v3

    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move v12, v4

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move v13, v9

    iget v9, v1, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 9375
    iget-object v14, v1, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    const/4 v15, -0x1

    if-eqz v14, :cond_4e

    .line 9376
    iget v14, v14, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    :goto_4b
    move/from16 v16, v12

    goto :goto_50

    :cond_4e
    move v14, v15

    goto :goto_4b

    :goto_50
    iget-boolean v12, v1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    move/from16 v17, v13

    iget-boolean v13, v1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    move/from16 v18, v15

    iget v15, v1, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    iget-boolean v2, v1, Lcom/android/server/am/ServiceRecord;->mFgsHasNotificationPermission:Z

    move/from16 v20, v18

    .line 9383
    invoke-virtual {v1}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result v18

    iget-boolean v11, v1, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    move/from16 v22, v2

    .line 9386
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

    move/from16 v23, v3

    if-eqz v2, :cond_71

    iget-object v3, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    iget v3, v3, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    goto :goto_73

    :cond_71
    move/from16 v3, v20

    :goto_73
    if-eqz v2, :cond_7b

    .line 9387
    iget-object v2, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    iget v2, v2, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    move/from16 v17, v2

    .line 9388
    :cond_7b
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move/from16 v20, v3

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 9392
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v26

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 9393
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->getUidProcessCapabilityLocked(I)I

    move-result v27

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v3, v1, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 9394
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v28

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 9395
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->getUidProcessCapabilityLocked(I)I

    move-result v29

    iget v0, v1, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    iget v3, v1, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    move/from16 v34, v0

    iget v0, v1, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    move/from16 v37, v0

    iget v0, v1, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    move/from16 v38, v0

    iget v0, v1, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    move/from16 v35, v2

    const/16 v2, 0x3c

    move/from16 v24, v16

    const/16 v16, 0x0

    move/from16 v36, v3

    move/from16 v3, v23

    const/16 v23, 0x0

    move/from16 v25, v24

    const/16 v24, 0x0

    move/from16 v30, v25

    const/16 v25, 0x0

    move/from16 v32, v30

    const-wide/16 v30, 0x0

    move/from16 v39, v32

    const-wide/16 v32, 0x0

    move/from16 v19, v39

    move/from16 v39, v0

    move/from16 v0, v19

    move/from16 v19, v22

    move/from16 v22, v17

    move/from16 v17, v19

    move/from16 v19, p5

    move/from16 v40, p6

    move/from16 v41, p7

    move/from16 v21, v20

    move/from16 v20, v11

    move v11, v14

    move/from16 v14, p3

    .line 9366
    invoke-static/range {v2 .. v41}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZIIIIIZZIIIZIIZIII[I[JIIIIJJIIIIIIIZ)V

    if-ne v5, v0, :cond_f2

    const/16 v0, 0x7594

    goto :goto_103

    :cond_f2
    const/4 v11, 0x2

    if-ne v5, v11, :cond_f8

    const/16 v0, 0x7596

    goto :goto_103

    :cond_f8
    const/4 v0, 0x3

    if-ne v5, v0, :cond_fe

    const/16 v0, 0x7595

    goto :goto_103

    :cond_fe
    const/4 v0, 0x5

    if-ne v5, v0, :cond_148

    const/16 v0, 0x7597

    .line 9420
    :goto_103
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 9421
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 9423
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 9424
    invoke-static {v7}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 9425
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 9426
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 9427
    iget-boolean v2, v1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 9428
    iget-boolean v2, v1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 9429
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    .line 9430
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 9431
    invoke-static/range {p4 .. p4}, Lcom/android/server/am/ActiveServices;->fgsStopReasonToString(I)Ljava/lang/String;

    move-result-object v21

    .line 9432
    invoke-virtual {v1}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    filled-new-array/range {v11 .. v22}, [Ljava/lang/Object;

    move-result-object v1

    .line 9420
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_148
    :goto_148
    return-void
.end method

.method public logFgsApiBeginLocked(III)V
    .registers 6

    .line 2192
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    monitor-enter v0

    .line 2193
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    const-string v1, ""

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logForegroundServiceApiEventBegin(IIILjava/lang/String;)J

    .line 2194
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public logFgsApiEndLocked(III)V
    .registers 5

    .line 2198
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    monitor-enter v0

    .line 2199
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logForegroundServiceApiEventEnd(III)J

    .line 2200
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public logFgsApiStateChangedLocked(IIII)V
    .registers 6

    .line 2204
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    monitor-enter v0

    .line 2205
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logForegroundServiceApiStateChanged(IIII)V

    .line 2206
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final logFgsBackgroundStart(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 5

    .line 9313
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    if-nez v0, :cond_59

    .line 9314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Background started FGS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9315
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedStart()Z

    move-result v1

    if-nez v1, :cond_1a

    if-nez p2, :cond_17

    goto :goto_1a

    .line 9316
    :cond_17
    const-string p2, "Disallowed "

    goto :goto_1c

    .line 9315
    :cond_1a
    :goto_1a
    const-string p2, "Allowed "

    .line 9316
    :goto_1c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9318
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result p2

    if-eqz p2, :cond_2d

    const-string p2, " (Called on SHORT_SERVICE)"

    goto :goto_2f

    :cond_2d
    const-string p2, ""

    :goto_2f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9319
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedStart()Z

    move-result v0

    const-string v1, "ActivityManager"

    if-eqz v0, :cond_53

    .line 9320
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    invoke-static {v0, p0}, Lcom/android/server/am/ActivityManagerUtils;->shouldSamplePackageForAtom(Ljava/lang/String;F)Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 9322
    invoke-static {v1, p2}, Landroid/util/Slog;->wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V

    .line 9324
    :cond_4f
    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 9326
    :cond_53
    invoke-static {v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    const/4 p0, 0x1

    .line 9328
    iput-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    :cond_59
    return-void
.end method

.method public makeConnectionInfoLocked(Lcom/android/server/am/ConnectionRecord;)Landroid/app/ActivityManager$ConnectionInfo;
    .registers 5

    .line 7819
    new-instance p0, Landroid/app/ActivityManager$ConnectionInfo;

    .line 7820
    invoke-virtual {p1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getFlags()J

    move-result-wide v0

    .line 7821
    invoke-virtual {p1}, Lcom/android/server/am/ConnectionRecord;->getClientProcessName()Ljava/lang/String;

    move-result-object v2

    .line 7822
    invoke-virtual {p1}, Lcom/android/server/am/ConnectionRecord;->getClientPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/app/ActivityManager$ConnectionInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .registers 7

    .line 7703
    new-instance p0, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {p0}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    .line 7705
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 7706
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_13

    .line 7707
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 7709
    :cond_13
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 7710
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 7711
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 7712
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 7713
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 7714
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 7715
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    .line 7716
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->getLastActivity()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 7717
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 7718
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 7720
    :cond_4d
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 7721
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 7723
    :cond_59
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_6b

    .line 7724
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 7726
    :cond_6b
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 7727
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 7730
    :cond_7b
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p1

    .line 7731
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_85
    if-ltz v0, :cond_b3

    .line 7732
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 7733
    :goto_8e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b0

    .line 7734
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 7735
    iget v4, v3, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    if-eqz v4, :cond_ad

    .line 7736
    iget-object p1, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p1, p1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 7737
    iget p1, v3, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    iput p1, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    return-object p0

    :cond_ad
    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    :cond_b0
    add-int/lit8 v0, v0, -0x1

    goto :goto_85

    :cond_b3
    return-object p0
.end method

.method public final maybeLogBindCrossProfileService(ILjava/lang/String;I)V
    .registers 5

    .line 4508
    invoke-static {p3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_29

    .line 4511
    :cond_7
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    if-eq p3, p1, :cond_29

    .line 4512
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4513
    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_29

    :cond_18
    const/16 p0, 0x97

    .line 4516
    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    .line 4517
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 4518
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    :cond_29
    :goto_29
    return-void
.end method

.method public final maybeStopFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 5

    .line 3905
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3910
    :cond_b
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ActiveServices;->getFgsTimeLimitedInfo(II)Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3914
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->updateTotalRuntime(J)V

    .line 3915
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->decNumParallelServices()V

    .line 3917
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop FGS timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x54

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3919
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v0, 0x55

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final maybeStopShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 3

    .line 3663
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessStateController;->clearShortFgsInfo(Lcom/android/server/am/ServiceRecord;)V

    .line 3664
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 3670
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->unscheduleShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    return-void
.end method

.method public final maybeUpdateFgsTrackingLocked(Lcom/android/server/am/ServiceRecord;I)V
    .registers 9

    .line 3845
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result p2

    if-nez p2, :cond_d

    .line 3847
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isFgsTimeLimited()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const/16 v0, 0x55

    const/16 v1, 0x54

    if-eqz p2, :cond_3c

    .line 3854
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/ActiveServices;->getFgsTimeLimitedInfo(II)Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    move-result-object p2

    if-eqz p2, :cond_27

    .line 3858
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->updateTotalRuntime(J)V

    .line 3859
    invoke-virtual {p2}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->decNumParallelServices()V

    .line 3862
    :cond_27
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isFgsTimeLimited()Z

    move-result p2

    if-nez p2, :cond_3c

    .line 3864
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3865
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void

    .line 3871
    :cond_3c
    const-string p2, "FGS (time-limited) start: "

    invoke-static {p2, p1}, Lcom/android/server/am/ActiveServices;->traceInstantFgs(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    .line 3872
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3875
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mTimeLimitedFgsInfo:Landroid/util/SparseArray;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseArray;

    if-nez p2, :cond_61

    .line 3877
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 3878
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mTimeLimitedFgsInfo:Landroid/util/SparseArray;

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3880
    :cond_61
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result v4

    .line 3881
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    if-nez v5, :cond_78

    .line 3883
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->createTimeLimitedFgsInfo()Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    move-result-object v5

    .line 3884
    invoke-virtual {p2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3886
    :cond_78
    invoke-virtual {v5, v2, v3}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->noteFgsFgsStart(J)V

    .line 3889
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3890
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3892
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 3894
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->getNextFgsStopTime(ILcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_b5

    .line 3898
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t calculate timeout for time-limited fgs: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3901
    :cond_b5
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final maybeUpdateShortFgsTrackingLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 5

    .line 3622
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3623
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p2, p1}, Lcom/android/server/am/ProcessStateController;->clearShortFgsInfo(Lcom/android/server/am/ServiceRecord;)V

    .line 3624
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->unscheduleShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    return-void

    .line 3628
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasShortFgsInfo()Z

    move-result v0

    if-nez p2, :cond_22

    if-nez v0, :cond_1a

    goto :goto_22

    .line 3655
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->update()V

    return-void

    .line 3638
    :cond_22
    :goto_22
    const-string/jumbo p2, "short FGS start/extend: "

    invoke-static {p2, p1}, Lcom/android/server/am/ActiveServices;->traceInstantFgs(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    .line 3639
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/am/ProcessStateController;->setShortFgsInfo(Lcom/android/server/am/ServiceRecord;J)V

    .line 3642
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->unscheduleShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3644
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v0, 0x4c

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 3646
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public newServiceDumperLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceDumper;
    .registers 15

    .line 8482
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceDumper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActiveServices$ServiceDumper;-><init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V

    return-object v0
.end method

.method public notifyActiveMediaForegroundServiceLocked(Ljava/lang/String;II)V
    .registers 15

    .line 9669
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez p2, :cond_c

    goto/16 :goto_85

    .line 9673
    :cond_c
    iget-object v0, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_14
    if-ge v2, v1, :cond_85

    .line 9675
    iget-object v0, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 9676
    iget-object v0, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-virtual {v4}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v0

    if-nez v0, :cond_80

    .line 9679
    invoke-virtual {v4}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result v0

    if-nez v0, :cond_80

    iget v0, v4, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v0, p3, :cond_80

    .line 9683
    iget-boolean v0, v4, Lcom/android/server/am/ServiceRecord;->systemRequestedFgToBg:Z

    if-eqz v0, :cond_80

    iget-object v0, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v5, 0x10cb597b

    invoke-static {v5, v6, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 9692
    :try_start_4a
    iget v5, v4, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4e} :catch_5a

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v3, p0

    :try_start_53
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;IIIZ)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_81

    :catch_57
    move-exception v0

    :goto_58
    move-object p0, v0

    goto :goto_5d

    :catch_5a
    move-exception v0

    move-object v3, p0

    goto :goto_58

    .line 9697
    :goto_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in system initiated foreground service transition for package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9700
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9697
    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    :cond_80
    move-object v3, p0

    :goto_81
    add-int/lit8 v2, v2, 0x1

    move-object p0, v3

    goto :goto_14

    :cond_85
    :goto_85
    return-void
.end method

.method public final notifyBindingServiceEventLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 5

    .line 4498
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_6

    .line 4499
    iget-object p2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_6
    if-eqz p2, :cond_18

    .line 4501
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget p1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    const/4 v0, 0x0

    const/16 v1, 0x4b

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 4502
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_18
    return-void
.end method

.method public notifyInactiveMediaForegroundServiceLocked(Ljava/lang/String;II)V
    .registers 15

    .line 9731
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez p2, :cond_c

    goto/16 :goto_7c

    .line 9735
    :cond_c
    iget-object v0, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_14
    if-ge v2, v1, :cond_7c

    .line 9737
    iget-object v0, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 9738
    iget-object v0, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {v4}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 9739
    invoke-virtual {v4}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_77

    iget v0, v4, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v0, p3, :cond_77

    .line 9742
    iget-object v0, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v5, 0x10cb597b

    invoke-static {v5, v6, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_77

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 9752
    :try_start_4e
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;IIIZ)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_78

    :catch_52
    move-exception v0

    move-object p0, v0

    .line 9757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in system initiated background service transition for package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9760
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9757
    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    :cond_77
    move-object v3, p0

    :goto_78
    add-int/lit8 v2, v2, 0x1

    move-object p0, v3

    goto :goto_14

    :cond_7c
    :goto_7c
    return-void
.end method

.method public onFgsCrashTimeout(Lcom/android/server/am/ServiceRecord;)V
    .registers 14

    .line 4003
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 4008
    :cond_b
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 4009
    :try_start_11
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/ActiveServices;->getFgsTimeLimitedInfo(II)Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 4013
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->decNumParallelServices()V

    goto :goto_22

    :catchall_1f
    move-exception v0

    move-object p0, v0

    goto :goto_86

    .line 4016
    :cond_22
    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A foreground service of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4017
    invoke-static {v0}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " did not stop within its timeout: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4018
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4020
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FGS Crashed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    const-string v0, "FGS (time-limited) Crash: "

    invoke-static {v0, p1}, Lcom/android/server/am/ActiveServices;->traceInstantFgs(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    .line 4022
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_81

    .line 4023
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v4, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    .line 4027
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStopInTimeException;->createExtrasForService(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v10, 0x7

    .line 4023
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V

    .line 4029
    :cond_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_11 .. :try_end_82} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_86
    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onFgsTimeout(Lcom/android/server/am/ServiceRecord;)V
    .registers 14

    .line 3943
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 3944
    :try_start_6
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result v0

    const/16 v2, 0x55

    if-eqz v0, :cond_16

    .line 3945
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_1a

    :cond_16
    move-object v3, p0

    move-object v4, p1

    goto/16 :goto_fd

    .line 3951
    :cond_1a
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-gt v3, v4, :cond_24

    const/4 v3, 0x1

    goto :goto_25

    :cond_24
    move v3, v5

    .line 3952
    :goto_25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    if-eqz v3, :cond_2d

    move-wide v3, v6

    goto :goto_33

    .line 3953
    :cond_2d
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastTopTime()J

    move-result-wide v3

    .line 3954
    :goto_33
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getTimeLimitForFgsType(I)J

    move-result-wide v8

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v10, v3, v10

    if-eqz v10, :cond_6c

    sub-long v10, v6, v3

    cmp-long v10, v8, v10

    if-lez v10, :cond_6c

    .line 3957
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x54

    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3958
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3962
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3964
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    add-long/2addr v3, v8

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3965
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_6 .. :try_end_64} :catchall_68

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_68
    move-exception v0

    move-object p0, v0

    goto/16 :goto_109

    .line 3968
    :cond_6c
    :try_start_6c
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FGS ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") timed out: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    const-string v3, "FGS (time-limited) timed out: "

    invoke-static {v3, p1}, Lcom/android/server/am/ActiveServices;->traceInstantFgs(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    .line 3972
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3, v0}, Lcom/android/server/am/ActiveServices;->getFgsTimeLimitedInfo(II)Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    move-result-object v3

    if-eqz v3, :cond_bd

    .line 3975
    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->updateTotalRuntime(J)V

    .line 3976
    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->setTimeLimitExceededAt(J)V

    .line 3980
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->getFirstFgsStartUptime()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-lez v4, :cond_b1

    .line 3981
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->getFirstFgsStartUptime()J

    move-result-wide v3

    sub-long/2addr v6, v3

    long-to-int v5, v6

    :cond_b1
    move v6, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 3978
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V
    :try_end_bc
    .catchall {:try_start_6c .. :try_end_bc} :catchall_68

    goto :goto_bf

    :cond_bd
    move-object v3, p0

    move-object v4, p1

    .line 3990
    :goto_bf
    :try_start_bf
    iget-object p0, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result p1

    invoke-interface {p0, v4, p1, v0}, Landroid/app/IApplicationThread;->scheduleTimeoutServiceForType(Landroid/os/IBinder;II)V
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_cc} :catch_cd
    .catchall {:try_start_bf .. :try_end_cc} :catchall_68

    goto :goto_e5

    :catch_cd
    move-exception v0

    move-object p0, v0

    .line 3992
    :try_start_cf
    const-string p1, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception from scheduleTimeoutServiceForType: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3996
    :goto_e5
    iget-object p0, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p0, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3998
    iget-object p1, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, p1, Lcom/android/server/am/ActivityManagerConstants;->mFgsCrashExtraWaitDuration:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3999
    monitor-exit v1
    :try_end_f9
    .catchall {:try_start_cf .. :try_end_f9} :catchall_68

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3946
    :goto_fd
    :try_start_fd
    iget-object p0, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p0, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3948
    monitor-exit v1
    :try_end_105
    .catchall {:try_start_fd .. :try_end_105} :catchall_68

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3999
    :goto_109
    :try_start_109
    monitor-exit v1
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_68

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onForegroundServiceNotificationUpdateLocked(ZLandroid/app/Notification;ILjava/lang/String;I)V
    .registers 11

    .line 3329
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_33

    .line 3330
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 3331
    iget v4, v3, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne p5, v4, :cond_30

    iget v4, v3, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne p3, v4, :cond_30

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3333
    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    if-eqz p1, :cond_30

    .line 3341
    iput-boolean v1, v3, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    .line 3342
    iput-boolean v2, v3, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    .line 3343
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3352
    :cond_33
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz p0, :cond_66

    .line 3354
    :goto_3d
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-ge v2, p1, :cond_66

    .line 3355
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 3356
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result p5

    if-eqz p5, :cond_63

    iget p5, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne p3, p5, :cond_63

    iget-object p5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p5, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3358
    invoke-virtual {p5, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_63

    .line 3363
    iput-object p2, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_66
    return-void
.end method

.method public onShortFgsAnrTimeout(Lcom/android/server/am/ServiceRecord;)V
    .registers 6

    .line 3748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A foreground service of FOREGROUND_SERVICE_TYPE_SHORT_SERVICE did not stop within a timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3749
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3751
    invoke-static {v0}, Lcom/android/internal/os/TimeoutRecord;->forShortFgsTimeout(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v0

    .line 3753
    iget-object v1, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockStarted()V

    .line 3754
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 3755
    :try_start_24
    iget-object v2, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockEnded()V

    .line 3757
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3758
    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ServiceRecord;->shouldTriggerShortFgsAnr(J)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 3763
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mShortFGSAnrTimer:Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)Z

    .line 3764
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_3d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3d
    move-exception p0

    goto :goto_6c

    .line 3766
    :cond_3f
    :try_start_3f
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mShortFGSAnrTimer:Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/utils/AnrTimer;->accept(Ljava/lang/Object;Lcom/android/internal/os/TimeoutRecord;)V

    .line 3768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Short FGS ANR\'ed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3772
    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    const-string/jumbo v2, "short FGS ANR: "

    invoke-static {v2, p1}, Lcom/android/server/am/ActiveServices;->traceInstantFgs(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    .line 3777
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    .line 3782
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_3f .. :try_end_68} :catchall_3d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_6c
    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_3d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onShortFgsProcstateTimeout(Lcom/android/server/am/ServiceRecord;)V
    .registers 6

    .line 3730
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 3731
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3732
    invoke-virtual {p1, v1, v2}, Lcom/android/server/am/ServiceRecord;->shouldDemoteShortFgsProcState(J)Z

    move-result v1

    if-nez v1, :cond_17

    .line 3737
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_15
    move-exception p0

    goto :goto_41

    .line 3740
    :cond_17
    :try_start_17
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Short FGS procstate demoted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    const-string/jumbo v1, "short FGS demote: "

    invoke-static {v1, p1}, Lcom/android/server/am/ActiveServices;->traceInstantFgs(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    .line 3743
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v1, 0xd

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    .line 3744
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_41
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onShortFgsTimeout(Lcom/android/server/am/ServiceRecord;)V
    .registers 12

    .line 3674
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 3675
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3676
    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ServiceRecord;->shouldTriggerShortFgsTimeout(J)Z

    move-result v0

    if-nez v0, :cond_19

    .line 3681
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_15
    move-exception v0

    move-object p0, v0

    goto/16 :goto_a9

    .line 3683
    :cond_19
    :try_start_19
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Short FGS timed out: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    const-string/jumbo v0, "short FGS timeout: "

    invoke-static {v0, p1}, Lcom/android/server/am/ActiveServices;->traceInstantFgs(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    .line 3688
    iget-wide v4, p1, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3f

    sub-long/2addr v2, v4

    long-to-int v0, v2

    :goto_3d
    move v5, v0

    goto :goto_41

    :cond_3f
    const/4 v0, 0x0

    goto :goto_3d

    :goto_41
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 3686
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V
    :try_end_4b
    .catchall {:try_start_19 .. :try_end_4b} :catchall_15

    .line 3695
    :try_start_4b
    iget-object p0, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getStartId()I

    move-result p1

    invoke-interface {p0, v3, p1}, Landroid/app/IApplicationThread;->scheduleTimeoutService(Landroid/os/IBinder;I)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_5c} :catch_5d
    .catchall {:try_start_4b .. :try_end_5c} :catchall_15

    goto :goto_79

    :catch_5d
    move-exception v0

    move-object p0, v0

    .line 3697
    :try_start_5f
    const-string p1, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from scheduleTimeoutService: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    :goto_79
    iget-object p0, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 p1, 0x4d

    invoke-virtual {p0, p1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3703
    iget-object p1, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 3704
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v4

    .line 3703
    invoke-virtual {p1, p0, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3709
    iget-object p0, v2, Lcom/android/server/am/ActiveServices;->mShortFGSAnrTimer:Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

    .line 3710
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getAnrTime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 3709
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/utils/AnrTimer;->start(Ljava/lang/Object;J)V

    .line 3711
    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_5f .. :try_end_a5} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_a9
    :try_start_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onUidRemovedLocked(I)V
    .registers 2

    .line 3924
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mTimeLimitedFgsInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 18

    .line 1807
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    .line 1808
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Injector;->getCallingPid()I

    move-result v5

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Injector;->getCallingUid()I

    move-result v6

    .line 1809
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1807
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 1814
    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v2, :cond_3a

    .line 1821
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    iget-object v1, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    if-eqz v0, :cond_73

    .line 1823
    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    return-object v0

    .line 1815
    :cond_3a
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: Accessing service from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    .line 1817
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$Injector;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    .line 1818
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$Injector;->getCallingUid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requires "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_73
    const/4 v0, 0x0

    return-object v0
.end method

.method public performRescheduleServiceRestartOnMemoryPressureLocked(JJLjava/lang/String;J)V
    .registers 23

    move-wide/from16 v4, p6

    sub-long v1, p3, p1

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-nez v1, :cond_c

    goto/16 :goto_97

    :cond_c
    if-lez v1, :cond_85

    .line 5760
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    add-long v6, v1, p3

    .line 5764
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-wide v1, v4

    const/4 v10, 0x0

    :goto_1e
    if-ge v10, v8, :cond_97

    .line 5765
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 5766
    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x8

    if-nez v11, :cond_3a

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 5767
    invoke-virtual {p0, v11}, Lcom/android/server/am/ActiveServices;->isServiceRestartBackoffEnabledLocked(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3d

    :cond_3a
    move-object v1, v3

    move v11, v10

    goto :goto_7e

    :cond_3d
    cmp-long v11, v1, v4

    const/4 v12, 0x1

    if-gtz v11, :cond_5a

    .line 5776
    iget-wide v1, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 5777
    iget-wide v13, v3, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    move v11, v10

    iget-wide v9, v3, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    add-long v9, v9, p3

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    cmp-long v1, v9, v1

    if-eqz v1, :cond_6a

    goto :goto_6b

    :cond_5a
    move v11, v10

    .line 5780
    iget-wide v9, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v9, v1

    cmp-long v9, v9, v6

    if-gez v9, :cond_6a

    add-long/2addr v1, v6

    .line 5781
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    goto :goto_6b

    :cond_6a
    const/4 v12, 0x0

    .line 5784
    :goto_6b
    iget-wide v9, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long v1, v9, v4

    iput-wide v1, v3, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    if-eqz v12, :cond_7c

    .line 5787
    const-string v2, "Rescheduling"

    move-object v0, p0

    move-object v1, v3

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_7c
    move-wide v1, v9

    goto :goto_80

    .line 5768
    :goto_7e
    iget-wide v1, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    :goto_80
    add-int/lit8 v10, v11, 0x1

    move-wide/from16 v4, p6

    goto :goto_1e

    :cond_85
    if-gez v1, :cond_97

    .line 5792
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    move-object v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->rescheduleServiceRestartIfPossibleLocked(JJLjava/lang/String;J)V

    :cond_97
    :goto_97
    return-void
.end method

.method public performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 5637
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    if-eqz v0, :cond_10

    .line 5638
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 5639
    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 5642
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5643
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 5644
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr p4, v0

    iput-wide p4, p1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 5645
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " restart of crashed service "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p4, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "ms for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ActivityManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5647
    iget p0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 5648
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget-wide p3, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p2, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x7553

    .line 5647
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 14

    .line 5807
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 5810
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v0

    if-nez v0, :cond_27

    .line 5816
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Restarting service that is not needed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    const/4 v1, 0x6

    .line 5819
    :try_start_28
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateController;->startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object v2
    :try_end_30
    .catch Landroid/os/TransactionTooLargeException; {:try_start_28 .. :try_end_30} :catch_6a
    .catchall {:try_start_28 .. :try_end_30} :catchall_67

    .line 5821
    :try_start_30
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_58

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    :try_start_43
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZZI)Ljava/lang/String;
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_55

    if-eqz v2, :cond_4f

    .line 5823
    :try_start_48
    invoke-virtual {v2}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_4b
    .catch Landroid/os/TransactionTooLargeException; {:try_start_48 .. :try_end_4b} :catch_72
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_4f

    :catchall_4c
    move-exception v0

    :goto_4d
    move-object p0, v0

    goto :goto_6c

    .line 5831
    :cond_4f
    :goto_4f
    iget-object p0, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    return-void

    :catchall_55
    move-exception v0

    :goto_56
    move-object p0, v0

    goto :goto_5b

    :catchall_58
    move-exception v0

    move-object v3, p0

    goto :goto_56

    :goto_5b
    if-eqz v2, :cond_66

    .line 5819
    :try_start_5d
    invoke-virtual {v2}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_66

    :catchall_61
    move-exception v0

    move-object p1, v0

    :try_start_63
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_66
    :goto_66
    throw p0
    :try_end_67
    .catch Landroid/os/TransactionTooLargeException; {:try_start_63 .. :try_end_67} :catch_72
    .catchall {:try_start_63 .. :try_end_67} :catchall_4c

    :catchall_67
    move-exception v0

    move-object v3, p0

    goto :goto_4d

    :catch_6a
    move-object v3, p0

    goto :goto_72

    .line 5831
    :goto_6c
    iget-object p1, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 5833
    throw p0

    .line 5831
    :catch_72
    :goto_72
    iget-object p0, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    return-void
.end method

.method public processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 11

    .line 7218
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateController;->startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object v0

    .line 7221
    :try_start_a
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v3, v2, :cond_62

    .line 7222
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 7223
    iget v6, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, 0x1

    if-ne v6, v7, :cond_32

    iget-object v6, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 7224
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_6f

    :cond_32
    :goto_32
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-ne v6, p1, :cond_60

    .line 7226
    :cond_36
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Forcing bringing down service: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 7227
    iput-object v2, v5, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 7228
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7229
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    .line 7232
    invoke-virtual {p0, v5, v8}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    move v4, v8

    :cond_60
    add-int/2addr v3, v8

    goto :goto_12

    :cond_62
    if-eqz v4, :cond_69

    .line 7240
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V
    :try_end_69
    .catchall {:try_start_a .. :try_end_69} :catchall_30

    :cond_69
    if-eqz v0, :cond_6e

    .line 7243
    invoke-virtual {v0}, Lcom/android/server/am/psc/BatchSession;->close()V

    :cond_6e
    return-void

    :goto_6f
    if-eqz v0, :cond_79

    .line 7218
    :try_start_71
    invoke-virtual {v0}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_79

    :catchall_75
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_79
    :goto_79
    throw p0
.end method

.method public publishServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Landroid/os/IBinder;)V
    .registers 16

    .line 4522
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz p1, :cond_c5

    const/4 v3, 0x0

    if-eqz p2, :cond_a0

    .line 4527
    :try_start_d
    iget-boolean v0, p2, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-nez v0, :cond_a0

    .line 4528
    iput-object p3, p2, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    const/4 v0, 0x1

    .line 4529
    iput-boolean v0, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 4530
    iput-boolean v0, p2, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 4531
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v4

    .line 4532
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v0

    :goto_21
    if-ltz v5, :cond_a0

    .line 4533
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/ArrayList;

    move v7, v3

    .line 4534
    :goto_2b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_9d

    .line 4535
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    .line 4536
    iget-object v0, p2, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    iget-object v9, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v9, v9, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v9}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_9a

    .line 4549
    :cond_47
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->aliasComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_4c

    goto :goto_4e

    :cond_4c
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 4550
    :goto_4e
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    .line 4551
    invoke-virtual {v9, v8}, Lcom/android/server/am/ProcessStateController;->getBoundServiceSessionFor(Lcom/android/server/am/ConnectionRecord;)Lcom/android/server/am/BoundServiceSession;

    move-result-object v9
    :try_end_56
    .catchall {:try_start_d .. :try_end_56} :catchall_5c

    .line 4553
    :try_start_56
    iget-object v10, v8, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v10, v0, p3, v9, v3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/app/IBinderSession;Z)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_60
    .catchall {:try_start_56 .. :try_end_5b} :catchall_5c

    goto :goto_9a

    :catchall_5c
    move-exception v0

    move-object p1, v0

    move-object v4, p0

    goto :goto_bd

    :catch_60
    move-exception v0

    .line 4555
    :try_start_61
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure sending service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to connection "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 4556
    invoke-interface {v11}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " (in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4555
    invoke-static {v9, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_61 .. :try_end_9a} :catchall_5c

    :goto_9a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_9d
    add-int/lit8 v5, v5, -0x1

    goto :goto_21

    .line 4563
    :cond_a0
    :try_start_a0
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 4564
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result p2
    :try_end_aa
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_ba

    if-eqz p2, :cond_ae

    const/16 v3, 0x14

    :cond_ae
    move v9, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 4563
    :try_start_b3
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b7

    goto :goto_c6

    :catchall_b7
    move-exception v0

    :goto_b8
    move-object p1, v0

    goto :goto_bd

    :catchall_ba
    move-exception v0

    move-object v4, p0

    goto :goto_b8

    .line 4568
    :goto_bd
    iget-object p0, v4, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    .line 4569
    throw p1

    :cond_c5
    move-object v4, p0

    .line 4568
    :goto_c6
    iget-object p0, v4, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;ZZI)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v0, p3

    move/from16 v8, p8

    if-eqz v0, :cond_160

    .line 6252
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/4 v9, 0x6

    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateController;->startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object v10

    .line 6254
    :try_start_15
    invoke-virtual/range {p1 .. p5}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    .line 6255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 6256
    iput-wide v3, v2, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 6257
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v5, v2, v3, v4}, Lcom/android/server/am/ProcessStateController;->setServiceLastActivityTime(Lcom/android/server/am/psc/ServiceRecordInternal;J)V

    and-int/lit8 v3, v8, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_2d

    move v6, v11

    goto :goto_2e

    :cond_2d
    move v6, v12

    .line 6260
    :goto_2e
    iget-object v13, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 6261
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3, v13, v2}, Lcom/android/server/am/ProcessStateController;->startService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)Z

    move-result v14

    .line 6262
    const-string v4, "create"

    const/4 v5, 0x0

    move/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;IZ)V

    move-object v15, v1

    move v1, v3

    .line 6265
    iget-object v3, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v7, v12, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 6266
    invoke-virtual {v15, v13, v12}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    if-nez v6, :cond_5f

    .line 6272
    iget-object v3, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 6273
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->updateOomAdjSeq()V

    .line 6278
    iget-object v3, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v9}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V
    :try_end_5a
    .catchall {:try_start_15 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception v0

    move-object v1, v0

    goto/16 :goto_155

    .line 6298
    :cond_5f
    :goto_5f
    :try_start_5f
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6299
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 6300
    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x64

    .line 6301
    invoke-static {v9, v3, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;)V

    .line 6303
    iget-object v9, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v9, v3, v5, v6}, Lcom/android/server/am/BatteryStatsService;->noteServiceStartLaunch(ILjava/lang/String;Ljava/lang/String;)V

    .line 6304
    iget-object v3, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v11}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 6306
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 6308
    invoke-virtual {v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->getReportedProcState()I

    move-result v5

    .line 6306
    invoke-interface {v0, v2, v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 6309
    invoke-virtual {v2, v12}, Lcom/android/server/am/ServiceRecord;->postNotification(Z)V
    :try_end_90
    .catch Landroid/os/DeadObjectException; {:try_start_5f .. :try_end_90} :catch_ff
    .catchall {:try_start_5f .. :try_end_90} :catchall_fd

    .line 6336
    :try_start_90
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v0, :cond_96

    .line 6337
    iput-boolean v11, v13, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    .line 6340
    :cond_96
    invoke-virtual {v15, v2, v1, v8}, Lcom/android/server/am/ActiveServices;->requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;ZI)V

    .line 6342
    invoke-virtual {v15, v13, v4, v11}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    if-eqz v14, :cond_a1

    .line 6345
    invoke-virtual {v13, v2}, Lcom/android/server/am/ProcessServiceRecord;->addBoundClientUidsOfNewService(Lcom/android/server/am/ServiceRecord;)V
    :try_end_a1
    .catchall {:try_start_90 .. :try_end_a1} :catchall_5b

    :cond_a1
    if-eqz v10, :cond_a6

    .line 6347
    invoke-virtual {v10}, Lcom/android/server/am/psc/BatchSession;->close()V

    .line 6352
    :cond_a6
    invoke-virtual {v2}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->callStart:Z

    if-eqz v0, :cond_d2

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d2

    .line 6353
    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v11, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILjava/lang/String;Ljava/lang/String;I)V

    move-object v2, v1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    :cond_d2
    move v11, v1

    .line 6357
    :goto_d3
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v0

    invoke-virtual {v15, v2, v11, v0}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 6359
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_eb

    .line 6361
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v15, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6362
    iput-boolean v12, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 6365
    :cond_eb
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v0, :cond_fc

    .line 6367
    iput-boolean v12, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 6368
    invoke-virtual {v2}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v0

    if-eqz v0, :cond_fc

    move/from16 v0, p7

    .line 6371
    invoke-virtual {v15, v2, v0}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    :cond_fc
    return-void

    :catchall_fd
    move-exception v0

    goto :goto_11e

    :catch_ff
    move-exception v0

    .line 6312
    :try_start_100
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Application dead when creating service "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6313
    iget-object v1, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "Died when creating service"

    invoke-virtual {v1, v7, v3}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 6314
    throw v0
    :try_end_11e
    .catchall {:try_start_100 .. :try_end_11e} :catchall_fd

    .line 6318
    :goto_11e
    :try_start_11e
    iget-object v1, v15, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 6320
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v3

    if-eqz v3, :cond_12d

    const/16 v3, 0x13

    goto :goto_12e

    :cond_12d
    move v3, v12

    :goto_12e
    const/4 v5, 0x0

    move v6, v1

    move/from16 p4, v1

    move-object/from16 p3, v2

    move/from16 p7, v3

    move/from16 p6, v5

    move/from16 p5, v6

    move-object/from16 p2, v15

    .line 6319
    invoke-virtual/range {p2 .. p7}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V

    move-object/from16 v1, p2

    move/from16 v3, p4

    if-eqz v14, :cond_14f

    .line 6325
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v5, v13, v2}, Lcom/android/server/am/ProcessStateController;->stopService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)Z

    .line 6326
    invoke-virtual {v2, v4, v4, v12, v4}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    :cond_14f
    if-nez v3, :cond_154

    .line 6331
    invoke-virtual {v1, v2, v12}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 6334
    :cond_154
    throw v0
    :try_end_155
    .catchall {:try_start_11e .. :try_end_155} :catchall_5b

    :goto_155
    if-eqz v10, :cond_15f

    .line 6252
    :try_start_157
    invoke-virtual {v10}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_15a
    .catchall {:try_start_157 .. :try_end_15a} :catchall_15b

    goto :goto_15f

    :catchall_15b
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15f
    :goto_15f
    throw v1

    .line 6247
    :cond_160
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final registerAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 5

    .line 3371
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_5

    return-void

    .line 3374
    :cond_5
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3375
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$AppOpCallback;

    if-nez v1, :cond_25

    .line 3377
    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/server/am/ActiveServices$AppOpCallback;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/app/AppOpsManager;)V

    .line 3378
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3380
    :cond_25
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices$AppOpCallback;->registerLocked()V

    return-void
.end method

.method public registerForegroundServiceObserverLocked(ILandroid/app/IForegroundServiceObserver;)Z
    .registers 13

    const/4 v0, 0x0

    .line 7376
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v0

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v1, :cond_3f

    .line 7378
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v4, :cond_3c

    .line 7380
    iget-object v5, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v0

    :goto_1c
    if-ge v6, v5, :cond_3c

    .line 7382
    iget-object v7, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 7383
    invoke-virtual {v7}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v8

    if-eqz v8, :cond_39

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, v9, :cond_39

    .line 7384
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {p2, v7, v8, v9, v3}, Landroid/app/IForegroundServiceObserver;->onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V

    :cond_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 7391
    :cond_3f
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_44} :catch_45

    return v3

    .line 7395
    :catch_45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad FGS observer from uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)I
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    .line 6833
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 6834
    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 6835
    iget-object v2, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 6838
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_26

    .line 6840
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6841
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_26

    .line 6842
    invoke-virtual {v2, v0}, Lcom/android/server/am/ServiceRecord;->removeConnection(Landroid/os/IBinder;)V

    .line 6845
    :cond_26
    iget-object v3, v8, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6846
    invoke-virtual {v7}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 6847
    iget-object v3, v7, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v3, :cond_39

    move-object/from16 v4, p3

    if-eq v3, v4, :cond_39

    .line 6848
    invoke-virtual {v3, v7}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->removeConnection(Ljava/lang/Object;)V

    .line 6850
    :cond_39
    iget-object v3, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v9, 0x1

    move-object/from16 v4, p2

    if-eq v3, v4, :cond_93

    .line 6851
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 6852
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v4, v3, v7}, Lcom/android/server/am/ProcessStateController;->removeConnection(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;)V

    const/16 v4, 0x8

    .line 6853
    invoke-virtual {v7, v4}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 6854
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessStateController;->updateHasAboveClientLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    :cond_58
    const/high16 v4, 0x1000000

    .line 6858
    invoke-virtual {v7, v4}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 6859
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->updateAllowlistManager()V

    .line 6860
    iget-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-nez v4, :cond_70

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_70

    .line 6861
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActiveServices;->updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    :cond_70
    const/high16 v4, 0x100000

    .line 6865
    invoke-virtual {v7, v4}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 6866
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->updateIsAllowedBgActivityStartsByBinding()V

    :cond_7b
    const/high16 v4, 0x10000

    .line 6869
    invoke-virtual {v7, v4}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 6870
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessStateController;->updateHasTopStartedAlmostPerceptibleServices(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 6872
    :cond_8a
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_93

    .line 6873
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v3, v7, v9}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 6876
    :cond_93
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_ab

    .line 6878
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6879
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_ab

    .line 6880
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6884
    :cond_ab
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v11, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v12, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-wide v14, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, v2, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    .line 6887
    iget-object v0, v8, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_d5

    .line 6888
    iget-object v0, v8, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    iget-object v3, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6891
    :cond_d5
    iget-boolean v0, v7, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    const/4 v10, 0x0

    if-nez v0, :cond_1bd

    .line 6894
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_16b

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isThreadReady()Z

    move-result v0

    if-eqz v0, :cond_16b

    iget-object v0, v8, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_16b

    iget-object v0, v8, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v0, :cond_16b

    .line 6896
    iget-object v0, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v0, v3, v7}, Lcom/android/server/am/ActiveServices;->getServiceBindingOomAdjPolicyForRemovalLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;)I

    move-result v11

    and-int/lit8 v0, v11, 0x4

    if-eqz v0, :cond_102

    move v6, v9

    goto :goto_103

    :cond_102
    move v6, v10

    .line 6901
    :goto_103
    :try_start_103
    const-string/jumbo v4, "unbind"

    if-eqz v6, :cond_10a

    move v5, v10

    goto :goto_10c

    :cond_10a
    const/4 v0, 0x5

    move v5, v0

    :goto_10c
    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;IZ)V

    .line 6904
    iget-object v0, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v3, :cond_133

    const/16 v0, 0x20

    invoke-virtual {v7, v0}, Lcom/android/server/am/psc/ConnectionRecordInternal;->notHasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_133

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 6905
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v0

    const/16 v3, 0xd

    if-gt v0, v3, :cond_133

    .line 6909
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v10, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    goto :goto_133

    :catch_131
    move-exception v0

    goto :goto_14d

    .line 6911
    :cond_133
    :goto_133
    iget-object v0, v8, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iput-boolean v10, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 6914
    iput-boolean v10, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 6915
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v3, v8, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v4, v3, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 6916
    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 6915
    invoke-interface {v0, v2, v3, v4}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_14a} :catch_131

    move/from16 v5, p4

    goto :goto_16e

    .line 6918
    :goto_14d
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when unbinding service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v5, p4

    .line 6919
    invoke-virtual {v1, v2, v5}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_16e

    :cond_16b
    move/from16 v5, p4

    move v11, v10

    .line 6925
    :goto_16e
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_188

    invoke-virtual {v2}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v0

    if-nez v0, :cond_188

    .line 6926
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6927
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6931
    :cond_188
    invoke-virtual {v7, v9}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 6932
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v4

    if-nez v4, :cond_1b5

    .line 6934
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_1b5

    .line 6935
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 6936
    :try_start_19f
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    .line 6937
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 6936
    invoke-virtual {v0, v10, v6, v7, v8}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 6938
    monitor-exit v3

    goto :goto_1b5

    :catchall_1b2
    move-exception v0

    monitor-exit v3
    :try_end_1b4
    .catchall {:try_start_19f .. :try_end_1b4} :catchall_1b2

    throw v0

    :cond_1b5
    :goto_1b5
    const/4 v3, 0x1

    .line 6941
    const-string/jumbo v6, "removeConnection"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZLjava/lang/String;)V

    :cond_1bc
    return v11

    :cond_1bd
    return v10
.end method

.method public final removeServiceNotificationDeferralsLocked(Ljava/lang/String;I)V
    .registers 6

    .line 3304
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_28

    .line 3305
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 3306
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne p2, v2, :cond_25

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3307
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3308
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_28
    return-void
.end method

.method public final removeServiceRestartBackoffEnabledLocked(Ljava/lang/String;)V
    .registers 2

    .line 5913
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZI)Z
    .registers 19

    move-object v0, p2

    .line 5413
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x0

    if-eqz v1, :cond_c2

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-nez v1, :cond_e

    goto/16 :goto_c2

    :cond_e
    and-int/lit8 v1, p5, 0x2

    const/4 v9, 0x1

    if-eqz v1, :cond_15

    move v6, v9

    goto :goto_16

    :cond_15
    move v6, v8

    .line 5421
    :goto_16
    iget-boolean v1, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-eqz v1, :cond_1c

    if-eqz p4, :cond_c1

    :cond_1c
    iget-object v1, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_c1

    const/4 v10, 0x5

    .line 5423
    :try_start_25
    const-string v4, "bind"

    if-eqz v6, :cond_2f

    move v5, v8

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p3

    goto :goto_35

    :cond_2f
    const/4 v1, 0x4

    move v5, v1

    move-object v2, p1

    move/from16 v3, p3

    move-object v1, p0

    :goto_35
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;IZ)V

    const-wide/16 v3, 0x40

    .line 5426
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 5427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestServiceBinding="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 5428
    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". bindSeq="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/ActiveServices;->mBindServiceSeqCounter:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5427
    invoke-static {v3, v4, v1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    goto :goto_68

    :catch_66
    move-exception v0

    goto :goto_aa

    .line 5430
    :cond_68
    :goto_68
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5431
    invoke-virtual {v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->getReportedProcState()I

    move-result v5

    iget-wide v6, p0, Lcom/android/server/am/ActiveServices;->mBindServiceSeqCounter:J

    const-wide/16 v11, 0x1

    add-long/2addr v11, v6

    iput-wide v11, p0, Lcom/android/server/am/ActiveServices;->mBindServiceSeqCounter:J

    move/from16 v4, p4

    move-object v2, v0

    move-object v0, v1

    move-object v1, p1

    .line 5430
    invoke-interface/range {v0 .. v7}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;ZIJ)V

    move-object v0, v2

    if-nez p4, :cond_8e

    .line 5433
    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 5435
    :cond_8e
    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 5436
    iput-boolean v8, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_92
    .catch Landroid/os/TransactionTooLargeException; {:try_start_25 .. :try_end_92} :catch_66
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_92} :catch_93

    goto :goto_c1

    .line 5447
    :catch_93
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 5449
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v0

    if-eqz v0, :cond_a1

    move v6, v10

    goto :goto_a2

    :cond_a1
    move v6, v8

    :goto_a2
    const/4 v5, 0x0

    move v4, v3

    move-object v1, p0

    move-object v2, p1

    .line 5448
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V

    return v8

    .line 5440
    :goto_aa
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 5442
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v4

    if-eqz v4, :cond_b8

    move v6, v10

    goto :goto_b9

    :cond_b8
    move v6, v8

    :goto_b9
    const/4 v5, 0x0

    move v4, v3

    move-object v1, p0

    move-object v2, p1

    .line 5441
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V

    .line 5443
    throw v0

    :cond_c1
    :goto_c1
    return v9

    :cond_c2
    :goto_c2
    return v8
.end method

.method public final requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;ZI)V
    .registers 12

    .line 6177
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_26

    .line 6178
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/am/IntentBindRecord;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v7, p3

    .line 6179
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZI)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_26

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    move-object p0, v2

    move-object p1, v3

    move p2, v5

    move p3, v7

    goto :goto_8

    :cond_26
    :goto_26
    return-void
.end method

.method public final requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z
    .registers 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1336
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_be

    const/4 v6, 0x0

    if-nez p6, :cond_4b

    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p8, :cond_2d

    .line 1342
    const-string v1, " Binding"

    goto :goto_2f

    :cond_2d
    const-string v1, " Starting"

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " a service in package"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires a permissions review"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1341
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 1347
    :cond_4b
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x18800000

    .line 1348
    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1351
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p8, :cond_76

    .line 1354
    new-instance v8, Landroid/os/RemoteCallback;

    new-instance v0, Lcom/android/server/am/ActiveServices$2;

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActiveServices$2;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V

    invoke-direct {v8, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 1404
    const-string v0, "android.intent.extra.REMOTE_CALLBACK"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_af

    :cond_76
    move-object/from16 v0, p5

    .line 1406
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v2, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    new-array v3, v3, [Landroid/content/Intent;

    aput-object v0, v3, v6

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1409
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v18

    const/high16 v19, 0x54000000

    const/16 v20, 0x0

    const/4 v9, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p7

    move-object/from16 v17, v3

    .line 1406
    invoke-virtual/range {v8 .. v20}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v0

    .line 1412
    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1420
    :goto_af
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/ActiveServices$3;

    move/from16 v13, p7

    invoke-direct {v2, v1, v7, v13}, Lcom/android/server/am/ActiveServices$3;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v6

    :cond_be
    return v3
.end method

.method public final requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V
    .registers 6

    const/4 p0, 0x2

    .line 2035
    invoke-virtual {p1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_19

    .line 2038
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr p2, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 2037
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_19
    const/4 p2, 0x1

    .line 2040
    iput-boolean p2, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 2041
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public rescheduleServiceRestartIfPossibleLocked(JJLjava/lang/String;J)V
    .registers 25

    move-object/from16 v0, p0

    move-wide/from16 v4, p6

    add-long v6, p1, p3

    const-wide/16 v1, 0x2

    mul-long v8, v6, v1

    .line 5706
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v11, v2

    move-wide v2, v4

    :goto_14
    if-ge v11, v10, :cond_d7

    .line 5707
    iget-object v12, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 5708
    iget-object v13, v12, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x8

    if-nez v13, :cond_30

    iget-object v13, v12, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 5709
    invoke-virtual {v0, v13}, Lcom/android/server/am/ActiveServices;->isServiceRestartBackoffEnabledLocked(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_33

    :cond_30
    move-object v1, v12

    goto/16 :goto_cb

    :cond_33
    add-long v13, v2, v6

    move/from16 p3, v1

    move-wide v15, v2

    .line 5714
    iget-wide v1, v12, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    cmp-long v3, v13, v1

    if-gtz v3, :cond_5b

    if-lez v11, :cond_4e

    .line 5718
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    add-int/lit8 v13, v11, -0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    iget-wide v13, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-long/2addr v13, v6

    goto :goto_50

    :cond_4e
    const-wide/16 v13, 0x0

    .line 5717
    :goto_50
    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    goto :goto_82

    :cond_5b
    cmp-long v3, v15, v4

    if-gtz v3, :cond_6e

    .line 5725
    iget-wide v13, v12, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    add-long v13, v13, p1

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    goto :goto_74

    .line 5728
    :cond_6e
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    :goto_74
    add-int/lit8 v1, p3, 0x1

    if-le v11, v1, :cond_82

    .line 5732
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5733
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_82
    :goto_82
    add-int/lit8 v1, p3, 0x1

    move/from16 v13, p3

    :goto_86
    if-gt v1, v11, :cond_b6

    .line 5738
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 5739
    iget-wide v3, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    if-nez v1, :cond_97

    move v14, v1

    move-wide v0, v15

    goto :goto_a4

    .line 5740
    :cond_97
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    add-int/lit8 v14, v1, -0x1

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    move v14, v1

    iget-wide v0, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    :goto_a4
    sub-long/2addr v3, v0

    cmp-long v0, v3, v8

    if-ltz v0, :cond_aa

    goto :goto_b6

    .line 5744
    :cond_aa
    iget-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-int/lit8 v2, v14, 0x1

    move-wide/from16 v4, p6

    move-wide v15, v0

    move v1, v2

    move v13, v14

    move-object/from16 v0, p0

    goto :goto_86

    .line 5747
    :cond_b6
    :goto_b6
    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long v0, v0, p6

    iput-wide v0, v12, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 5748
    const-string v2, "Rescheduling"

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move-wide/from16 v4, p6

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V

    move v1, v13

    move-wide v2, v15

    goto :goto_cf

    .line 5710
    :goto_cb
    iget-wide v0, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide v2, v0

    move v1, v11

    :goto_cf
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v4, p6

    goto/16 :goto_14

    :cond_d7
    return-void
.end method

.method public rescheduleServiceRestartOnMemoryPressureIfNeededLocked(IILjava/lang/String;J)V
    .registers 15

    .line 5662
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    if-nez v1, :cond_9

    return-void

    .line 5666
    :cond_9
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    aget-wide v2, v0, p1

    aget-wide v4, v0, p2

    move-object v1, p0

    move-object v6, p3

    move-wide v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->performRescheduleServiceRestartOnMemoryPressureLocked(JJLjava/lang/String;J)V

    return-void
.end method

.method public rescheduleServiceRestartOnMemoryPressureIfNeededLocked(ZZJ)V
    .registers 13

    if-ne p1, p2, :cond_3

    return-void

    .line 5684
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    move-result v3

    .line 5685
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    aget-wide v3, v4, v3

    const-wide/16 v5, 0x0

    if-eqz p1, :cond_19

    move-wide v1, v3

    goto :goto_1a

    :cond_19
    move-wide v1, v5

    :goto_1a
    if-eqz p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move-wide v3, v5

    .line 5687
    :goto_1e
    const-string v5, "config"

    move-object v0, p0

    move-wide v6, p3

    .line 5686
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->performRescheduleServiceRestartOnMemoryPressureLocked(JJLjava/lang/String;J)V

    return-void
.end method

.method public resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 2

    .line 8699
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearFgsAllowWiu()V

    .line 8700
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearFgsAllowStart()V

    const/4 p0, 0x0

    .line 8702
    iput-object p0, p1, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    .line 8703
    iput-object p0, p1, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    const/4 p0, 0x0

    .line 8704
    iput-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    .line 8705
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forStart()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/am/ServiceRecord;->updateAllowUiJobScheduling(Z)V

    return-void
.end method

.method public final retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .registers 33

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v17, p12

    move/from16 v18, p13

    .line 4879
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLandroid/app/ForegroundServiceDelegationOptions;ZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v0

    return-object v0
.end method

.method public final retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLandroid/app/ForegroundServiceDelegationOptions;ZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .registers 38

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    .line 4915
    invoke-virtual/range {v1 .. v19}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLandroid/app/ForegroundServiceDelegationOptions;ZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v0

    return-object v0
.end method

.method public final retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLandroid/app/ForegroundServiceDelegationOptions;ZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .registers 57

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v4, p7

    move-object/from16 v12, p15

    if-eqz p3, :cond_17

    if-eqz v0, :cond_f

    goto :goto_17

    .line 4932
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No instanceName provided for sdk sandbox process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4939
    :cond_17
    :goto_17
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 4940
    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActiveServices;->getAllowMode(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "service"

    const/4 v8, 0x0

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move-object v11, v4

    move-object v4, v2

    .line 4939
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 4943
    invoke-virtual {v1, v7}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v10

    .line 4948
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mComponentAliasResolver:Lcom/android/server/am/ComponentAliasResolver;

    const/4 v5, 0x0

    move-object/from16 v4, p6

    move v6, v7

    move/from16 v7, p9

    .line 4949
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ComponentAliasResolver;->resolveService(Landroid/content/Intent;Ljava/lang/String;III)Lcom/android/server/am/ComponentAliasResolver$Resolution;

    move-result-object v13

    move-object v9, v3

    move v14, v7

    .line 4953
    const-string v15, ":"

    if-nez v0, :cond_4c

    .line 4954
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_72

    .line 4956
    :cond_4c
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_8d0

    .line 4961
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4962
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    :goto_72
    if-eqz v2, :cond_7d

    .line 4966
    iget-object v4, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    goto :goto_7e

    :cond_7d
    const/4 v4, 0x0

    :goto_7e
    if-nez v4, :cond_91

    if-nez p13, :cond_91

    if-nez v0, :cond_91

    .line 4970
    new-instance v4, Landroid/content/Intent$FilterComparison;

    invoke-direct {v4, v9}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 4971
    iget-object v5, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 4974
    :cond_91
    const-string v5, "Unable to start service "

    const-string v7, ": not found"

    const-string v8, " U="

    const/16 p10, 0x0

    const-string v3, "ActivityManager"

    move-object/from16 v16, v2

    if-eqz v4, :cond_df

    .line 4977
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    move-object/from16 v17, v13

    iget-object v13, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v13, v14, v6}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 4979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p10

    .line 4983
    :cond_cb
    iget-object v2, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_e1

    iget-object v2, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 4984
    invoke-virtual {v11, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1

    move-object/from16 v13, p10

    :goto_dd
    move-object v4, v3

    goto :goto_e3

    :cond_df
    move-object/from16 v17, v13

    :cond_e1
    move-object v13, v4

    goto :goto_dd

    :goto_e3
    const-wide/16 v2, 0x400

    if-nez v13, :cond_1de

    if-eqz v12, :cond_1de

    .line 4996
    new-instance v0, Landroid/content/pm/ServiceInfo;

    invoke-direct {v0}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 4999
    :try_start_ee
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget-object v5, v12, Landroid/app/ForegroundServiceDelegationOptions;->mClientPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_f8
    .catch Landroid/os/RemoteException; {:try_start_ee .. :try_end_f8} :catch_f9

    goto :goto_fb

    :catch_f9
    move-object/from16 v2, p10

    :goto_fb
    if-eqz v2, :cond_1c6

    .line 5010
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v4, v12, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    if-ne v3, v4, :cond_1a2

    .line 5015
    iput-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5016
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 5017
    iget v3, v12, Landroid/app/ForegroundServiceDelegationOptions;->mForegroundServiceTypes:I

    iput v3, v0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 5018
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 5019
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 5020
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz p11, :cond_17b

    .line 5022
    new-instance v13, Landroid/content/Intent$FilterComparison;

    .line 5023
    invoke-virtual {v9}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 5024
    new-instance v15, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    move-object/from16 v2, p10

    invoke-direct {v15, v1, v2}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices-IA;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v4, v11

    .line 5025
    invoke-static/range {v2 .. v8}, Lcom/android/server/am/ActiveServices;->getProcessNameForService(Landroid/content/pm/ServiceInfo;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v28

    .line 5029
    new-instance v18, Lcom/android/server/am/ServiceRecord;

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v29, -0x1

    move-object/from16 v21, v3

    move/from16 v26, p12

    move-object/from16 v19, v0

    move-object/from16 v25, v2

    move-object/from16 v20, v3

    move/from16 v23, v4

    move-object/from16 v22, v5

    move-object/from16 v24, v13

    move-object/from16 v27, v15

    invoke-direct/range {v18 .. v31}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;Ljava/lang/String;ILjava/lang/String;Z)V

    move-object/from16 v13, v18

    move-object/from16 v0, v24

    move-object/from16 v2, v27

    .line 5035
    iget v4, v12, Landroid/app/ForegroundServiceDelegationOptions;->mClientNotificationId:I

    iput v4, v13, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 5036
    iget-object v4, v12, Landroid/app/ForegroundServiceDelegationOptions;->mClientNotification:Landroid/app/Notification;

    iput-object v4, v13, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 5037
    invoke-virtual {v2, v13}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 5038
    iget-object v2, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5039
    iget-object v2, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5041
    iput-object v11, v13, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    .line 5042
    iput v14, v13, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 5044
    :cond_17b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v3}, Lcom/android/server/am/ActiveServices;->generateAdditionalSeInfoFromService(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 5045
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->getAlias()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/ComponentName;)V

    return-object v0

    .line 5011
    :cond_1a2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startForegroundServiceDelegate failed, uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not match clientUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5007
    :cond_1c6
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startForegroundServiceDelegate failed, could not resolve client package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1de
    move-object/from16 v12, p10

    move-object/from16 p10, v10

    .line 5048
    const-string v10, "Service lookup failed: "

    const-string v12, " and "

    move-object/from16 v18, v13

    const-string v13, "association not allowed between packages "

    if-nez v18, :cond_6d3

    if-eqz p14, :cond_1f2

    const-wide/32 v19, 0x10800400

    goto :goto_1f5

    :cond_1f2
    const-wide/32 v19, 0x10000400

    :goto_1f5
    if-eqz p18, :cond_1fe

    const-wide v21, 0x200000000L

    or-long v19, v19, v21

    .line 5059
    :cond_1fe
    :try_start_1fe
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2
    :try_end_204
    .catch Landroid/os/RemoteException; {:try_start_1fe .. :try_end_204} :catch_6d3

    move-object v14, v5

    move-object v3, v9

    move-object/from16 v23, v12

    const/16 p14, 0x0

    move/from16 v9, p8

    move-object v12, v4

    move-object/from16 v4, p6

    move-object/from16 v36, v8

    move/from16 v8, p9

    move-object/from16 v37, v7

    move v7, v6

    move-wide/from16 v5, v19

    move-object/from16 v20, v10

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v10, v36

    :try_start_220
    invoke-virtual/range {v2 .. v9}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;JIII)Landroid/content/pm/ResolveInfo;

    move-result-object v2
    :try_end_224
    .catch Landroid/os/RemoteException; {:try_start_220 .. :try_end_224} :catch_6c8

    move-wide v4, v5

    move v6, v7

    if-eqz v2, :cond_239

    .line 5061
    :try_start_228
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_23b

    :catch_22b
    move-object/from16 v16, p14

    move-object/from16 v35, v12

    move-object/from16 v34, v13

    move-object/from16 v13, v18

    move-object/from16 v32, v20

    move-object/from16 v33, v23

    goto/16 :goto_6df

    :cond_239
    move-object/from16 v2, p14

    :goto_23b
    if-nez v2, :cond_259

    .line 5063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p14

    :cond_259
    if-eqz v0, :cond_28a

    .line 5067
    iget v7, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_28a

    if-eqz p3, :cond_264

    goto :goto_28a

    .line 5070
    :cond_264
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t use instance name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' with non-isolated non-sdk sandbox service \'"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_28a
    :goto_28a
    if-eqz p3, :cond_29b

    .line 5073
    iget v7, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_293

    goto :goto_29b

    .line 5075
    :cond_293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Service cannot be both sdk sandbox and isolated"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_29b
    .catch Landroid/os/RemoteException; {:try_start_228 .. :try_end_29b} :catch_22b

    .line 5079
    :cond_29b
    :goto_29b
    :try_start_29b
    new-instance v7, Landroid/content/ComponentName;

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v9, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v16, :cond_2ab

    move-object/from16 v9, v16

    goto :goto_2ac

    :cond_2ab
    move-object v9, v7

    .line 5082
    :goto_2ac
    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-wide/from16 v24, v4

    .line 5083
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5082
    invoke-virtual {v14, v11, v8, v4, v5}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4
    :try_end_2bc
    .catch Landroid/os/RemoteException; {:try_start_29b .. :try_end_2bc} :catch_6c8

    if-nez v4, :cond_30d

    .line 5084
    :try_start_2be
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c9
    .catch Landroid/os/RemoteException; {:try_start_2be .. :try_end_2c9} :catch_22b

    move-object/from16 v14, v23

    :try_start_2cb
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5085
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2de
    .catch Landroid/os/RemoteException; {:try_start_2cb .. :try_end_2de} :catch_2ff

    move-object/from16 v4, v20

    :try_start_2e0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5087
    new-instance v2, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-direct {v2, v1, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Ljava/lang/String;)V

    return-object v2

    :catch_2f3
    move-object/from16 v16, p14

    move-object/from16 v32, v4

    move-object/from16 v35, v12

    move-object/from16 v34, v13

    move-object/from16 v33, v14

    goto/16 :goto_6dd

    :catch_2ff
    move-object/from16 v16, p14

    move-object/from16 v35, v12

    move-object/from16 v34, v13

    move-object/from16 v33, v14

    move-object/from16 v13, v18

    move-object/from16 v32, v20

    goto/16 :goto_6df

    :cond_30d
    move-object/from16 v4, v20

    move-object/from16 v14, v23

    .line 5093
    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_313
    .catch Landroid/os/RemoteException; {:try_start_2e0 .. :try_end_313} :catch_2f3

    move-object/from16 v16, v13

    :try_start_315
    iget-object v13, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5094
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_319
    .catch Landroid/os/RemoteException; {:try_start_315 .. :try_end_319} :catch_6bf

    move-object/from16 v20, v4

    .line 5095
    :try_start_31b
    iget v4, v2, Landroid/content/pm/ServiceInfo;->flags:I
    :try_end_31d
    .catch Landroid/os/RemoteException; {:try_start_31b .. :try_end_31d} :catch_6b6

    and-int/lit8 v23, v4, 0x4

    move/from16 v26, v4

    const-string v4, " is not an isolatedProcess"

    move/from16 v27, v5

    const-string v5, "BIND_EXTERNAL_SERVICE failed, "

    if-eqz v23, :cond_433

    if-eqz p13, :cond_41a

    move-object/from16 v23, v13

    .line 5097
    :try_start_32d
    iget-boolean v13, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v13, :cond_3fe

    if-nez p17, :cond_3f4

    and-int/lit8 v13, v26, 0x2

    if-eqz v13, :cond_3da

    .line 5109
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v11, v8, v6}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_3d0

    .line 5115
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5
    :try_end_347
    .catch Landroid/os/RemoteException; {:try_start_32d .. :try_end_347} :catch_3c5

    move-object/from16 v26, v14

    const-wide/16 v13, 0x400

    :try_start_34b
    invoke-interface {v5, v11, v13, v14, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_3ae

    .line 5121
    new-instance v13, Landroid/content/pm/ServiceInfo;

    invoke-direct {v13, v2}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 5122
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v14}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v2, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5123
    iget-object v14, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v14, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5124
    iget v14, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v14, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5125
    new-instance v2, Landroid/content/ComponentName;

    iget-object v14, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v14, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5126
    new-instance v9, Landroid/content/ComponentName;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_38b

    .line 5127
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    goto :goto_3a3

    :catch_37d
    :goto_37d
    move-object/from16 v35, v12

    move-object/from16 v34, v16

    move-object/from16 v13, v18

    move-object/from16 v32, v20

    :goto_385
    move-object/from16 v33, v26

    :goto_387
    move-object/from16 v16, p14

    goto/16 :goto_6df

    .line 5128
    :cond_38b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v19

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3a3
    invoke-direct {v9, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5129
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v14, v2

    move-object v2, v13

    move-object v13, v9

    goto/16 :goto_43b

    .line 5118
    :cond_3ae
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIND_EXTERNAL_SERVICE failed, could not resolve client package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3c5
    move-object/from16 v35, v12

    move-object/from16 v33, v14

    move-object/from16 v34, v16

    move-object/from16 v13, v18

    move-object/from16 v32, v20

    goto :goto_387

    :cond_3d0
    move-object/from16 v26, v14

    .line 5111
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "BIND_EXTERNAL_SERVICE failed, calling package not owned by calling UID "

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3da
    move-object/from16 v26, v14

    .line 5106
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f4
    move-object/from16 v26, v14

    .line 5102
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "BIND_PACKAGE_ISOLATED_PROCESS cannot be applied to an external service."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3fe
    move-object/from16 v26, v14

    .line 5098
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not exported"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41a
    move-object/from16 v26, v14

    .line 5131
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIND_EXTERNAL_SERVICE required for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_433
    move-object/from16 v23, v13

    move-object/from16 v26, v14

    if-nez p13, :cond_692

    move-object v13, v7

    move-object v14, v9

    :goto_43b
    if-eqz p16, :cond_448

    if-nez p17, :cond_440

    goto :goto_448

    .line 5139
    :cond_440
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Either BIND_SHARED_ISOLATED_PROCESS or BIND_PACKAGE_ISOLATED_PROCESS should be set. Not both."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_448
    .catch Landroid/os/RemoteException; {:try_start_34b .. :try_end_448} :catch_37d

    .line 5142
    :cond_448
    :goto_448
    const-string v5, "BIND_SHARED_ISOLATED_PROCESS failed, "

    if-nez p16, :cond_44e

    if-eqz p17, :cond_454

    .line 5143
    :cond_44e
    :try_start_44e
    iget v7, v2, Landroid/content/pm/ServiceInfo;->flags:I
    :try_end_450
    .catch Landroid/os/RemoteException; {:try_start_44e .. :try_end_450} :catch_68b

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_668

    :cond_454
    if-eqz p17, :cond_465

    .line 5148
    :try_start_456
    invoke-static {v2}, Lcom/android/server/am/ActiveServices;->isDefaultProcessService(Landroid/content/pm/ServiceInfo;)Z

    move-result v4

    if-nez v4, :cond_45d

    goto :goto_465

    .line 5149
    :cond_45d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "BIND_PACKAGE_ISOLATED_PROCESS cannot be used for services running in the main app process."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_465
    :goto_465
    if-eqz p16, :cond_492

    if-eqz v0, :cond_48a

    .line 5157
    iget v4, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_470

    goto :goto_492

    .line 5158
    :cond_470
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has not set the allowSharedIsolatedProcess  attribute."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5154
    :cond_48a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "instanceName must be provided for binding a service into a shared isolated process."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_492
    .catch Landroid/os/RemoteException; {:try_start_456 .. :try_end_492} :catch_37d

    :cond_492
    :goto_492
    if-lez v6, :cond_56b

    .line 5164
    :try_start_494
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v5, v2, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->isSystemUserOnly(I)Z

    move-result v4
    :try_end_49c
    .catch Landroid/os/RemoteException; {:try_start_494 .. :try_end_49c} :catch_54a

    if-eqz v4, :cond_4b6

    .line 5165
    :try_start_49e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is only available for the SYSTEM user, calling userId is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b5
    .catch Landroid/os/RemoteException; {:try_start_49e .. :try_end_4b5} :catch_37d

    return-object p14

    .line 5170
    :cond_4b6
    :try_start_4b6
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget v0, v2, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v4, v5, v7, v9, v0}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_54d

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5172
    invoke-virtual {v0, v8, v4}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v0

    if-eqz v0, :cond_54d

    const/4 v4, 0x0

    .line 5174
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 5176
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_4df
    .catch Landroid/os/RemoteException; {:try_start_4b6 .. :try_end_4df} :catch_54a

    .line 5178
    :try_start_4df
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 5179
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2
    :try_end_4e5
    .catchall {:try_start_4df .. :try_end_4e5} :catchall_53b

    const/4 v7, 0x0

    move/from16 v9, p8

    move/from16 v22, v4

    move-object/from16 v19, v14

    move-object/from16 v21, v20

    move-object/from16 v4, p6

    move-object/from16 v20, v13

    move-wide v13, v5

    move-wide/from16 v5, v24

    :try_start_4f5
    invoke-virtual/range {v2 .. v9}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;JIII)Landroid/content/pm/ResolveInfo;

    move-result-object v2
    :try_end_4f9
    .catchall {:try_start_4f5 .. :try_end_4f9} :catchall_538

    move-object v9, v3

    if-nez v2, :cond_52d

    .line 5182
    :try_start_4fc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to resolve service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_519
    .catchall {:try_start_4fc .. :try_end_519} :catchall_52b

    .line 5189
    :try_start_519
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V
    :try_end_520
    .catch Landroid/os/RemoteException; {:try_start_519 .. :try_end_520} :catch_521

    return-object p14

    :catch_521
    move-object/from16 v35, v12

    move-object/from16 v34, v16

    move-object/from16 v13, v18

    move-object/from16 v32, v21

    goto/16 :goto_385

    :catchall_52b
    move-exception v0

    goto :goto_542

    .line 5187
    :cond_52d
    :try_start_52d
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_52f
    .catchall {:try_start_52d .. :try_end_52f} :catchall_52b

    .line 5189
    :try_start_52f
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v3, v13, v14}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    move-object v10, v0

    goto :goto_559

    :catchall_538
    move-exception v0

    move-object v9, v3

    goto :goto_542

    :catchall_53b
    move-exception v0

    move-object v9, v3

    move/from16 v22, v4

    move-wide v13, v5

    move-object/from16 v21, v20

    :goto_542
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    .line 5190
    throw v0

    :catch_54a
    move-object v9, v3

    goto/16 :goto_37d

    :cond_54d
    move-object v9, v3

    move-object/from16 v19, v14

    move-object/from16 v21, v20

    const/16 v22, 0x0

    move-object/from16 v20, v13

    move-object/from16 v10, p10

    move v7, v6

    .line 5192
    :goto_559
    new-instance v0, Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v2}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 5193
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3, v7}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_568
    .catch Landroid/os/RemoteException; {:try_start_52f .. :try_end_568} :catch_521

    move-object v2, v0

    move-object v0, v10

    goto :goto_576

    :cond_56b
    move-object v9, v3

    move-object/from16 v19, v14

    move-object/from16 v21, v20

    const/16 v22, 0x0

    move-object/from16 v20, v13

    move-object/from16 v0, p10

    .line 5195
    :goto_576
    :try_start_576
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    move-object/from16 v5, v19

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/android/server/am/ServiceRecord;
    :try_end_582
    .catch Landroid/os/RemoteException; {:try_start_576 .. :try_end_582} :catch_65c

    if-nez v19, :cond_64e

    if-eqz p11, :cond_64e

    .line 5199
    :try_start_586
    new-instance v10, Landroid/content/Intent$FilterComparison;

    .line 5200
    invoke-virtual {v9}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v10, v3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 5201
    new-instance v11, Lcom/android/server/am/ActiveServices$ServiceRestarter;
    :try_end_591
    .catch Landroid/os/RemoteException; {:try_start_586 .. :try_end_591} :catch_64e

    move-object/from16 v13, p14

    :try_start_593
    invoke-direct {v11, v1, v13}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices-IA;)V

    move/from16 v6, p3

    move-object/from16 v4, p7

    move/from16 v7, p16

    move/from16 v8, p17

    move-object v3, v5

    move-object/from16 v5, p2

    .line 5202
    invoke-static/range {v2 .. v8}, Lcom/android/server/am/ActiveServices;->getProcessNameForService(Landroid/content/pm/ServiceInfo;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v5

    move-object v9, v2

    .line 5205
    new-instance v2, Lcom/android/server/am/ServiceRecord;
    :try_end_5a8
    .catch Landroid/os/RemoteException; {:try_start_593 .. :try_end_5a8} :catch_64b

    move-object v4, v12

    move-object v12, v5

    move-object v5, v3

    :try_start_5ab
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;
    :try_end_5ad
    .catch Landroid/os/RemoteException; {:try_start_5ab .. :try_end_5ad} :catch_640

    const/16 v18, 0x1

    if-nez p16, :cond_5ce

    if-eqz p17, :cond_5b4

    goto :goto_5ce

    :cond_5b4
    move/from16 v15, v22

    :goto_5b6
    move-object/from16 v14, p5

    move-object/from16 v35, v4

    move-object v8, v10

    move-object/from16 v34, v16

    move-object/from16 v4, v20

    move-object/from16 v32, v21

    move-object/from16 v6, v23

    move-object/from16 v33, v26

    move/from16 v7, v27

    move/from16 v10, p12

    move-object/from16 v16, v13

    move/from16 v13, p4

    goto :goto_5d1

    :cond_5ce
    :goto_5ce
    move/from16 v15, v18

    goto :goto_5b6

    :goto_5d1
    :try_start_5d1
    invoke-direct/range {v2 .. v15}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;Ljava/lang/String;ILjava/lang/String;Z)V
    :try_end_5d4
    .catch Landroid/os/RemoteException; {:try_start_5d1 .. :try_end_5d4} :catch_658

    .line 5210
    :try_start_5d4
    invoke-virtual {v11, v2}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 5211
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5212
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5215
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5e9
    if-ltz v0, :cond_60f

    .line 5216
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 5217
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v6, :cond_60c

    iget-object v3, v3, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    .line 5218
    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60c

    .line 5220
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_60c
    add-int/lit8 v0, v0, -0x1

    goto :goto_5e9

    .line 5223
    :cond_60f
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_617
    if-ltz v0, :cond_63d

    .line 5224
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 5225
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v6, :cond_63a

    iget-object v3, v3, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    .line 5226
    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63a

    .line 5228
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_63a
    .catch Landroid/os/RemoteException; {:try_start_5d4 .. :try_end_63a} :catch_63d

    :cond_63a
    add-int/lit8 v0, v0, -0x1

    goto :goto_617

    :catch_63d
    :cond_63d
    move-object v13, v2

    goto/16 :goto_6df

    :catch_640
    move-object/from16 v35, v4

    :goto_642
    move-object/from16 v34, v16

    move-object/from16 v32, v21

    move-object/from16 v33, v26

    move-object/from16 v16, v13

    goto :goto_658

    :catch_64b
    move-object/from16 v35, v12

    goto :goto_642

    :catch_64e
    :cond_64e
    move-object/from16 v35, v12

    move-object/from16 v34, v16

    move-object/from16 v32, v21

    move-object/from16 v33, v26

    move-object/from16 v16, p14

    :catch_658
    :goto_658
    move-object/from16 v13, v19

    goto/16 :goto_6df

    :catch_65c
    move-object/from16 v35, v12

    move-object/from16 v34, v16

    move-object/from16 v32, v21

    :goto_662
    move-object/from16 v33, v26

    :goto_664
    move-object/from16 v16, p14

    goto/16 :goto_6dd

    :cond_668
    move-object/from16 v35, v12

    move-object v7, v13

    move-object/from16 v34, v16

    move-object/from16 v32, v20

    move-object/from16 v33, v26

    move-object/from16 v16, p14

    .line 5144
    :try_start_673
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_68b
    move-object/from16 v35, v12

    move-object/from16 v34, v16

    move-object/from16 v32, v20

    goto :goto_662

    :cond_692
    move-object/from16 v35, v12

    move-object/from16 v34, v16

    move-object/from16 v32, v20

    move-object/from16 v33, v26

    move-object/from16 v16, p14

    .line 5135
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not an externalService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6b6
    .catch Landroid/os/RemoteException; {:try_start_673 .. :try_end_6b6} :catch_6dd

    :catch_6b6
    move-object/from16 v35, v12

    move-object/from16 v33, v14

    move-object/from16 v34, v16

    move-object/from16 v32, v20

    goto :goto_664

    :catch_6bf
    move-object/from16 v32, v4

    move-object/from16 v35, v12

    move-object/from16 v33, v14

    move-object/from16 v34, v16

    goto :goto_664

    :catch_6c8
    move-object/from16 v16, p14

    move-object/from16 v35, v12

    move-object/from16 v34, v13

    move-object/from16 v32, v20

    move-object/from16 v33, v23

    goto :goto_6dd

    :catch_6d3
    :cond_6d3
    move-object/from16 v35, v4

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    const/16 v16, 0x0

    :catch_6dd
    :goto_6dd
    move-object/from16 v13, v18

    :goto_6df
    if-eqz v13, :cond_8cf

    move-object/from16 v4, p7

    .line 5238
    iput-object v4, v13, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    move/from16 v8, p9

    .line 5239
    iput v8, v13, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 5241
    :try_start_6e9
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 5242
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5243
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x0

    .line 5242
    invoke-virtual {v0, v4, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/am/ServiceRecord;->mRecentCallerApplicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_6fc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6e9 .. :try_end_6fc} :catch_6fc

    .line 5246
    :catch_6fc
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v3, v13, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v4, v8, v2, v3}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_741

    .line 5248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v33

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v32

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v12, v35

    invoke-static {v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5251
    new-instance v2, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-direct {v2, v1, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Ljava/lang/String;)V

    return-object v2

    :cond_741
    move-object/from16 v12, v35

    .line 5253
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v3, v13, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 p12, p1

    move-object/from16 p15, p6

    move/from16 p14, p8

    move-object/from16 p10, v0

    move-object/from16 p11, v2

    move-object/from16 p16, v3

    move/from16 p13, v8

    invoke-virtual/range {p10 .. p16}, Lcom/android/server/firewall/IntentFirewall;->checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    move-object/from16 v3, p12

    move/from16 v9, p14

    if-nez v0, :cond_76b

    .line 5255
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const-string v2, "blocked by firewall"

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Ljava/lang/String;)V

    return-object v0

    .line 5257
    :cond_76b
    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v13, Lcom/android/server/am/ServiceRecord;->exported:Z

    invoke-static {v0, v9, v8, v2, v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    const-string v2, "Permission Denial: Accessing service "

    const-string v5, ", uid="

    const-string v6, " from pid="

    if-eqz v0, :cond_7fd

    .line 5259
    iget-boolean v0, v13, Lcom/android/server/am/ServiceRecord;->exported:Z

    if-nez v0, :cond_7cb

    .line 5260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that is not exported from uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5264
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not exported from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Ljava/lang/String;)V

    return-object v0

    .line 5267
    :cond_7cb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5271
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Ljava/lang/String;)V

    return-object v0

    .line 5272
    :cond_7fd
    const-string v0, "android.permission.BIND_HOTWORD_DETECTION_SERVICE"

    iget-object v7, v13, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_825

    const-string v0, "android.permission.BIND_VISUAL_QUERY_DETECTION_SERVICE"

    iget-object v7, v13, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 5273
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_825

    const-string v0, "android.permission.BIND_WEARABLE_SENSING_SERVICE"

    iget-object v7, v13, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 5274
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_825

    const-string v0, "android.permission.BIND_ON_DEVICE_SANDBOXED_INFERENCE_SERVICE"

    iget-object v7, v13, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 5275
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_860

    :cond_825
    const/16 v0, 0x3e8

    if-eq v8, v0, :cond_860

    .line 5281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requiring permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can only be bound to from the system."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5286
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const-string v2, "can only be bound to by the system."

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Ljava/lang/String;)V

    return-object v0

    .line 5288
    :cond_860
    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v0, :cond_8a8

    if-eqz v4, :cond_8a8

    .line 5289
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8a8

    .line 5290
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, v0, v8, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8a8

    .line 5292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Appop Denial: Accessing service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires appop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5295
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5292
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    .line 5300
    :cond_8a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v13, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActiveServices;->generateAdditionalSeInfoFromService(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 5301
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->getAlias()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/ComponentName;)V

    return-object v0

    :cond_8cf
    return-object v16

    .line 4958
    :cond_8d0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t use custom instance name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' without expicit component in Intent"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public schedulePendingServiceStartLocked(Ljava/lang/String;I)V
    .registers 9

    .line 1508
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_6
    add-int/lit8 v1, v0, -0x1

    :goto_8
    if-ltz v1, :cond_5f

    if-lez v0, :cond_5f

    .line 1510
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 1511
    iget v3, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v3, p2, :cond_5c

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_5c

    .line 1515
    :cond_21
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_42

    .line 1517
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_31
    if-ltz v4, :cond_3f

    .line 1518
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_31

    .line 1520
    :cond_3f
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1523
    :cond_42
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1525
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v0, v3, :cond_56

    .line 1530
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_6

    .line 1533
    :cond_56
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_5f
    return-void
.end method

.method public scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 5

    .line 8053
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_22

    :cond_13
    const/4 v0, 0x1

    .line 8056
    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 8057
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    int-to-long v1, p0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/utils/AnrTimer;->start(Ljava/lang/Object;J)V

    :cond_22
    :goto_22
    return-void
.end method

.method public final scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5458
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    .line 5459
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not scheduling restart of crashed service "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - system is shutting down"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 5464
    :cond_2d
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v2

    .line 5465
    iget-object v4, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v5, v1, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v1, :cond_66

    .line 5466
    iget-object v0, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v2, v1, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 5467
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to schedule restart of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " when found in map: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 5472
    :cond_66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 5475
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v2, v6, :cond_76

    move v8, v7

    goto :goto_77

    :cond_76
    move v8, v3

    .line 5477
    :goto_77
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_1fa

    .line 5479
    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v9, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 5480
    iget-wide v14, v9, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 5485
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_10b

    sub-int/2addr v9, v7

    move/from16 v16, v3

    :goto_94
    if-ltz v9, :cond_ff

    .line 5488
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 5489
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    const-wide/16 v17, 0x0

    .line 5490
    iget-object v10, v6, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v10, :cond_aa

    move/from16 v19, v7

    goto :goto_f9

    :cond_aa
    if-eqz p2, :cond_b6

    .line 5492
    iget v10, v6, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    const/4 v11, 0x3

    if-ge v10, v11, :cond_b9

    iget v10, v6, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    const/4 v11, 0x6

    if-ge v10, v11, :cond_b9

    :cond_b6
    move/from16 v19, v7

    goto :goto_e0

    .line 5500
    :cond_b9
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v7

    const-string v7, "Canceling start item "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " in service "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v19

    goto :goto_f9

    .line 5494
    :goto_e0
    iget-object v7, v1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v7, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5495
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v6, v6, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    sub-long/2addr v10, v6

    const-wide/16 v6, 0x2

    mul-long/2addr v10, v6

    cmp-long v6, v12, v10

    if-gez v6, :cond_f4

    move-wide v12, v10

    :cond_f4
    cmp-long v6, v14, v10

    if-gez v6, :cond_f9

    move-wide v14, v10

    :cond_f9
    :goto_f9
    add-int/lit8 v9, v9, -0x1

    move/from16 v7, v19

    const/4 v6, -0x1

    goto :goto_94

    :cond_ff
    move/from16 v19, v7

    const-wide/16 v17, 0x0

    .line 5505
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move/from16 v6, v16

    goto :goto_110

    :cond_10b
    move/from16 v19, v7

    const-wide/16 v17, 0x0

    move v6, v3

    :goto_110
    if-eqz p2, :cond_12e

    .line 5509
    invoke-virtual {v1, v6}, Lcom/android/server/am/ServiceRecord;->canStopIfKilled(Z)Z

    move-result v6

    if-eqz v6, :cond_11f

    .line 5510
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v7

    if-nez v7, :cond_11f

    return v3

    .line 5514
    :cond_11f
    invoke-virtual {v1}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v7

    if-eqz v7, :cond_12b

    if-nez v6, :cond_12b

    const-string/jumbo v6, "start-requested"

    goto :goto_130

    :cond_12b
    const-string v6, "connection"

    goto :goto_130

    .line 5516
    :cond_12e
    const-string v6, "always"

    .line 5519
    :goto_130
    iget v7, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 5520
    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v7, v9, v17

    if-nez v7, :cond_147

    .line 5521
    iget v7, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 5522
    iput-wide v12, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    :goto_144
    move-wide/from16 v20, v4

    goto :goto_177

    .line 5523
    :cond_147
    iget v7, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    move/from16 v11, v19

    if-le v7, v11, :cond_159

    .line 5524
    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    sub-int/2addr v7, v11

    int-to-long v12, v7

    mul-long/2addr v9, v12

    iput-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_144

    :cond_159
    move-wide/from16 v20, v4

    .line 5532
    iget-wide v3, v1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v3, v14

    cmp-long v3, v20, v3

    if-lez v3, :cond_167

    .line 5533
    iput v11, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 5534
    iput-wide v12, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_177

    .line 5536
    :cond_167
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    int-to-long v3, v3

    mul-long/2addr v9, v3

    iput-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v3, v9, v12

    if-gez v3, :cond_177

    .line 5538
    iput-wide v12, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 5543
    :cond_177
    :goto_177
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->isServiceRestartBackoffEnabledLocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e9

    .line 5544
    iget-wide v3, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long v4, v20, v3

    iput-wide v4, v1, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    iput-wide v4, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    if-eqz v8, :cond_18f

    .line 5548
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v8, 0x0

    .line 5551
    :cond_18f
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 5553
    invoke-virtual {v0}, Lcom/android/server/am/ActiveServices;->getExtraRestartTimeInBetweenLocked()J

    move-result-wide v3

    add-long v4, v20, v3

    .line 5554
    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long v3, v3, v20

    .line 5555
    iput-wide v3, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_1f5

    .line 5560
    :cond_1aa
    invoke-virtual {v0}, Lcom/android/server/am/ActiveServices;->getExtraRestartTimeInBetweenLocked()J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v5, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    add-long/2addr v3, v9

    .line 5564
    :goto_1b5
    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 5566
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v19, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_1c1
    if-ltz v5, :cond_1f5

    .line 5567
    iget-object v11, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ServiceRecord;

    .line 5568
    iget-wide v11, v11, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long v13, v11, v3

    cmp-long v13, v9, v13

    if-ltz v13, :cond_1e0

    add-long v13, v11, v3

    cmp-long v15, v9, v13

    if-gez v15, :cond_1e0

    .line 5571
    iput-wide v13, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long v13, v13, v20

    .line 5572
    iput-wide v13, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_1b5

    :cond_1e0
    add-long/2addr v11, v3

    cmp-long v11, v9, v11

    if-ltz v11, :cond_1e6

    goto :goto_1f5

    :cond_1e6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1c1

    .line 5584
    :cond_1e9
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    iput-wide v3, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long v4, v20, v3

    .line 5585
    iput-wide v4, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    :cond_1f5
    :goto_1f5
    move-wide/from16 v4, v20

    const/4 v7, 0x0

    :goto_1f8
    move-object v3, v6

    goto :goto_217

    :cond_1fa
    move-wide/from16 v20, v4

    const-wide/16 v17, 0x0

    .line 5590
    iget v3, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/16 v19, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/4 v7, 0x0

    .line 5591
    iput v7, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    move-wide/from16 v3, v17

    .line 5592
    iput-wide v3, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 5593
    iput-wide v3, v1, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    move-wide/from16 v4, v20

    .line 5594
    iput-wide v4, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 5595
    const-string/jumbo v6, "persistent"

    goto :goto_1f8

    .line 5598
    :goto_217
    iput-wide v4, v1, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    if-nez v8, :cond_261

    const/4 v6, -0x1

    if-ne v2, v6, :cond_23b

    .line 5601
    iput-boolean v7, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 5602
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5603
    :try_start_227
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    .line 5604
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 5603
    invoke-virtual {v1, v6, v8, v9}, Lcom/android/server/am/ServiceRecord;->makeRestarting(IJ)V

    .line 5605
    monitor-exit v2

    goto :goto_23b

    :catchall_238
    move-exception v0

    monitor-exit v2
    :try_end_23a
    .catchall {:try_start_227 .. :try_end_23a} :catchall_238

    throw v0

    .line 5608
    :cond_23b
    :goto_23b
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_241
    if-ge v7, v2, :cond_25c

    .line 5609
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 5610
    iget-wide v8, v6, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v10, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    cmp-long v6, v8, v10

    if-lez v6, :cond_259

    .line 5611
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_261

    :cond_259
    add-int/lit8 v7, v7, 0x1

    goto :goto_241

    .line 5617
    :cond_25c
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5621
    :cond_261
    :goto_261
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 5623
    const-string v2, "Scheduling"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V

    const/16 v19, 0x1

    return v19
.end method

.method public scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 8043
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_2f

    .line 8046
    :cond_f
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isExecServicesFg()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 8047
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_TIMEOUT:J

    goto :goto_24

    :cond_1e
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BACKGROUND_TIMEOUT:J

    .line 8048
    :goto_24
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/utils/AnrTimer;->start(Ljava/lang/Object;J)V

    .line 8049
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->noteScheduleServiceTimeoutPending(Z)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public final sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 6378
    const-string v7, "Failed delivering service starts"

    const-string v8, "ActivityManager"

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_10d

    .line 6382
    :cond_12
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/4 v9, 0x6

    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateController;->startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object v10

    .line 6384
    :try_start_1b
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 6386
    :goto_20
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v12, 0x0

    if-lez v3, :cond_aa

    .line 6387
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 6392
    iget-object v3, v13, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    const/4 v14, 0x1

    if-nez v3, :cond_3a

    if-le v0, v14, :cond_3a

    goto :goto_20

    .line 6399
    :cond_3a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v13, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 6400
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6401
    iget v3, v13, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    add-int/2addr v3, v14

    iput v3, v13, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 6402
    iget-object v3, v13, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v3, :cond_5e

    .line 6403
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 6404
    invoke-virtual {v13}, Lcom/android/server/am/ServiceRecord$StartItem;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v5

    .line 6403
    invoke-interface {v4, v3, v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    goto :goto_5e

    :catchall_5a
    move-exception v0

    move-object v1, v0

    goto/16 :goto_10e

    .line 6406
    :cond_5e
    :goto_5e
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-object v5, v13, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    iget v6, v13, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6407
    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v15

    .line 6406
    invoke-virtual {v3, v4, v5, v6, v15}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    .line 6409
    const-string/jumbo v4, "start"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;IZ)V

    .line 6412
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v3, :cond_8f

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    if-nez v3, :cond_8f

    .line 6413
    invoke-virtual {v2}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v3

    if-nez v3, :cond_8d

    .line 6419
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_8f

    .line 6424
    :cond_8d
    iput-boolean v12, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 6428
    :cond_8f
    :goto_8f
    iget v3, v13, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-le v3, v14, :cond_94

    const/4 v12, 0x2

    .line 6431
    :cond_94
    iget v3, v13, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-lez v3, :cond_9a

    or-int/lit8 v12, v12, 0x1

    .line 6434
    :cond_9a
    new-instance v3, Landroid/app/ServiceStartArgs;

    iget-boolean v4, v13, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    iget v5, v13, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    iget-object v6, v13, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-direct {v3, v4, v5, v12, v6}, Landroid/app/ServiceStartArgs;-><init>(ZIILandroid/content/Intent;)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    :cond_aa
    if-nez p3, :cond_b8

    .line 6438
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 6443
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 6446
    :cond_b8
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v11}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const/4 v3, 0x4

    .line 6447
    invoke-virtual {v0, v3}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V
    :try_end_c1
    .catchall {:try_start_1b .. :try_end_c1} :catchall_5a

    .line 6450
    :try_start_c1
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    :try_end_ca
    .catch Landroid/os/TransactionTooLargeException; {:try_start_c1 .. :try_end_ca} :catch_d0
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_ca} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_ca} :catch_cc
    .catchall {:try_start_c1 .. :try_end_ca} :catchall_5a

    const/4 v0, 0x0

    goto :goto_df

    :catch_cc
    move-exception v0

    goto :goto_d2

    :catch_ce
    move-exception v0

    goto :goto_d8

    :catch_d0
    move-exception v0

    goto :goto_dc

    .line 6464
    :goto_d2
    :try_start_d2
    const-string v3, "Unexpected exception"

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_df

    .line 6461
    :goto_d8
    invoke-static {v8, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_df

    .line 6456
    :goto_dc
    invoke-static {v8, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_df
    if-eqz v0, :cond_108

    .line 6470
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 6471
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_eb
    if-ge v12, v7, :cond_f9

    const/4 v5, 0x1

    const/16 v6, 0x13

    move v4, v3

    .line 6472
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p1

    goto :goto_eb

    .line 6480
    :cond_f9
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 6482
    instance-of v1, v0, Landroid/os/TransactionTooLargeException;

    if-nez v1, :cond_105

    goto :goto_108

    .line 6483
    :cond_105
    check-cast v0, Landroid/os/TransactionTooLargeException;

    throw v0
    :try_end_108
    .catchall {:try_start_d2 .. :try_end_108} :catchall_5a

    :cond_108
    :goto_108
    if-eqz v10, :cond_10d

    .line 6486
    invoke-virtual {v10}, Lcom/android/server/am/psc/BatchSession;->close()V

    :cond_10d
    :goto_10d
    return-void

    :goto_10e
    if-eqz v10, :cond_118

    .line 6382
    :try_start_110
    invoke-virtual {v10}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_113
    .catchall {:try_start_110 .. :try_end_113} :catchall_114

    goto :goto_118

    :catchall_114
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_118
    :goto_118
    throw v1
.end method

.method public serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;IIIZ)V
    .registers 11

    .line 6950
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 6951
    const-string v1, "ActivityManager"

    if-eqz p1, :cond_d1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v4, :cond_63

    .line 6957
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    const/16 p2, 0x3e8

    if-eq p4, p2, :cond_17

    .line 6963
    iput p4, p1, Lcom/android/server/am/ServiceRecord;->startCommandResult:I

    :cond_17
    if-eqz p4, :cond_59

    if-eq p4, v4, :cond_59

    if-eq p4, v2, :cond_4d

    const/4 v1, 0x3

    if-eq p4, v1, :cond_3d

    if-ne p4, p2, :cond_26

    .line 7000
    invoke-virtual {p1, p3, v4, v4}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    goto :goto_5e

    .line 7004
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown service start result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6988
    :cond_3d
    invoke-virtual {p1, p3, v3, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object p2

    if-eqz p2, :cond_5e

    .line 6990
    iput v3, p2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 6991
    iget p3, p2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    add-int/2addr p3, v4

    iput p3, p2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 6993
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_5e

    .line 6976
    :cond_4d
    invoke-virtual {p1, p3, v3, v4}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 6977
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result p2

    if-ne p2, p3, :cond_5e

    .line 6980
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_5e

    .line 6969
    :cond_59
    invoke-virtual {p1, p3, v3, v4}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 6971
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    :cond_5e
    :goto_5e
    if-nez p4, :cond_af

    .line 7008
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    goto :goto_af

    :cond_63
    if-ne p2, v2, :cond_af

    if-nez v0, :cond_8a

    .line 7019
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_b0

    .line 7020
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Service done with onDestroy, but not inDestroying: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", app="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 7023
    :cond_8a
    iget p2, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eq p2, v4, :cond_b0

    .line 7024
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Service done with onDestroy, but executeNesting="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7027
    iput v4, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    goto :goto_b0

    :cond_af
    :goto_af
    move v4, v3

    .line 7032
    :cond_b0
    :goto_b0
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v1

    .line 7034
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result p2

    if-nez p2, :cond_c0

    if-eqz v4, :cond_c2

    :cond_c0
    const/16 v3, 0x14

    :cond_c2
    move p3, v0

    move p4, p5

    move p2, v0

    move p5, v3

    .line 7033
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V

    .line 7036
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    return-void

    .line 7038
    :cond_d1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Done executing unknown service from pid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    .line 7039
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$Injector;->getCallingPid()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7038
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V
    .registers 11

    .line 7064
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-gtz v0, :cond_b9

    .line 7066
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    if-eqz v0, :cond_73

    .line 7067
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 7070
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ProcessStateController;->setExecServicesFg(Lcom/android/server/am/ProcessServiceRecord;Z)V

    .line 7071
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3, v0, p1}, Lcom/android/server/am/ProcessStateController;->stopExecutingService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)V

    .line 7072
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v3

    if-nez v3, :cond_2f

    .line 7075
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 7076
    :cond_2f
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v3, :cond_4d

    .line 7078
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_38
    if-ltz v3, :cond_4d

    .line 7079
    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessServiceRecord;->getExecutingServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v4, :cond_4a

    .line 7080
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/ProcessStateController;->setExecServicesFg(Lcom/android/server/am/ProcessServiceRecord;Z)V

    goto :goto_4d

    :cond_4a
    add-int/lit8 v3, v3, -0x1

    goto :goto_38

    :cond_4d
    :goto_4d
    if-eqz p2, :cond_59

    .line 7088
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7089
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    :cond_59
    if-eqz p5, :cond_70

    if-eqz p4, :cond_67

    .line 7093
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object p4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, p4}, Lcom/android/server/am/ProcessStateController;->enqueueUpdateTarget(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_70

    .line 7095
    :cond_67
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object p4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, p4, p5}, Lcom/android/server/am/ProcessStateController;->runUpdate(Lcom/android/server/am/ProcessRecord;I)Z

    .line 7100
    :cond_70
    :goto_70
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->updateOomAdjSeq()V

    .line 7102
    :cond_73
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 7103
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 p4, 0x0

    if-eqz p2, :cond_a7

    .line 7104
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object p2, p2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 7105
    :try_start_81
    iget-object p5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p5, p5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result p5

    .line 7106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 7107
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v2, p5, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 7108
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v2, p5, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    if-eqz p3, :cond_a3

    .line 7110
    iget-object p5, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {p5, p1, v2}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 7111
    iput-object p4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    goto :goto_a3

    :catchall_a1
    move-exception p0

    goto :goto_a5

    .line 7113
    :cond_a3
    :goto_a3
    monitor-exit p2

    goto :goto_a7

    :goto_a5
    monitor-exit p2
    :try_end_a6
    .catchall {:try_start_81 .. :try_end_a6} :catchall_a1

    throw p0

    :cond_a7
    :goto_a7
    if-eqz p3, :cond_b9

    .line 7116
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_b6

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result p2

    if-nez p2, :cond_b6

    .line 7117
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 7119
    :cond_b6
    invoke-virtual {p1, p4, p4, v2, p4}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    :cond_b9
    return-void
.end method

.method public serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 13

    .line 7990
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 7991
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Context.startForegroundService() did not then call Service.startForeground(): "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 7995
    invoke-static {p3}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;->createExtrasForService(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v8

    const/4 v6, 0x0

    .line 7990
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService;->crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V

    return-void
.end method

.method public serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V
    .registers 8

    const-wide/16 v0, 0x40

    .line 7920
    :try_start_2
    const-string/jumbo v2, "serviceForegroundTimeout()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Context.startForegroundService() did not then call Service.startForeground(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7926
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 7925
    invoke-static {v2, v3, v4}, Lcom/android/internal/os/TimeoutRecord;->forServiceStartWithEndTime(Ljava/lang/String;J)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v2

    .line 7928
    iget-object v3, v2, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockStarted()V

    .line 7929
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_89

    .line 7930
    :try_start_2c
    iget-object v4, v2, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockEnded()V

    .line 7931
    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v4, :cond_8f

    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    if-eqz v4, :cond_8f

    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    if-eqz v4, :cond_3e

    goto :goto_8f

    .line 7936
    :cond_3e
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_57

    .line 7937
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 7939
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)Z

    .line 7940
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_2c .. :try_end_4e} :catchall_55

    .line 7964
    :goto_4e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_55
    move-exception p0

    goto :goto_96

    .line 7943
    :cond_57
    :try_start_57
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

    invoke-virtual {v5, p1, v2}, Lcom/android/server/utils/AnrTimer;->accept(Ljava/lang/Object;Lcom/android/internal/os/TimeoutRecord;)V

    const/4 v5, 0x0

    .line 7948
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 7949
    invoke-virtual {p0, p1, v5}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 7950
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_55

    :try_start_63
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v4, :cond_8b

    .line 7954
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x43

    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 7956
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    .line 7957
    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 7958
    iput-object v2, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 7959
    iput-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7960
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    int-to-long v3, p0

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_88
    .catchall {:try_start_63 .. :try_end_88} :catchall_89

    goto :goto_8b

    :catchall_89
    move-exception p0

    goto :goto_9b

    .line 7964
    :cond_8b
    :goto_8b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 7932
    :cond_8f
    :goto_8f
    :try_start_8f
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)Z

    .line 7933
    monitor-exit v3

    goto :goto_4e

    .line 7950
    :goto_96
    monitor-exit v3
    :try_end_97
    .catchall {:try_start_8f .. :try_end_97} :catchall_55

    :try_start_97
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_89

    .line 7964
    :goto_9b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7965
    throw p0
.end method

.method public serviceForegroundTimeoutANR(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V
    .registers 3

    .line 7969
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    return-void
.end method

.method public final serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 11

    .line 7044
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_32

    .line 7045
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7046
    :try_start_b
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 7047
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 7048
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 7049
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 7050
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 7051
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 7052
    monitor-exit v1

    goto :goto_32

    :catchall_2e
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_2e

    throw p0

    :cond_32
    :goto_32
    const/4 v5, 0x1

    const/16 v7, 0xc

    const/4 v4, 0x1

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    .line 7054
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V

    return-void
.end method

.method public serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x40

    .line 7854
    :try_start_6
    const-string/jumbo v4, "serviceTimeout()"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7856
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_12c

    .line 7857
    :try_start_12
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 7859
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)Z

    .line 7860
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_25

    .line 7914
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_25
    move-exception v0

    move-wide v15, v2

    goto/16 :goto_127

    .line 7862
    :cond_29
    :try_start_29
    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 7863
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v6

    if-eqz v6, :cond_3d

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    if-eqz v6, :cond_3d

    .line 7864
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v6

    if-eqz v6, :cond_40

    :cond_3d
    move-wide v15, v2

    goto/16 :goto_11a

    .line 7868
    :cond_40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 7870
    invoke-virtual {v5}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isExecServicesFg()Z

    move-result v8

    if-eqz v8, :cond_51

    .line 7871
    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_TIMEOUT:J

    goto :goto_57

    .line 7872
    :cond_51
    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BACKGROUND_TIMEOUT:J

    :goto_57
    sub-long v8, v6, v8

    .line 7875
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    const-wide/16 v11, 0x0

    :goto_61
    const/4 v13, 0x0

    if-ltz v10, :cond_7c

    .line 7876
    invoke-virtual {v5, v10}, Lcom/android/server/am/ProcessServiceRecord;->getExecutingServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v14
    :try_end_68
    .catchall {:try_start_29 .. :try_end_68} :catchall_25

    move-wide v15, v2

    .line 7877
    :try_start_69
    iget-wide v2, v14, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v17, v2, v8

    if-gez v17, :cond_70

    goto :goto_7e

    :cond_70
    cmp-long v13, v2, v11

    if-lez v13, :cond_75

    move-wide v11, v2

    :cond_75
    add-int/lit8 v10, v10, -0x1

    move-wide v2, v15

    goto :goto_61

    :catchall_79
    move-exception v0

    goto/16 :goto_127

    :cond_7c
    move-wide v15, v2

    move-object v14, v13

    :goto_7e
    if-eqz v14, :cond_e2

    .line 7885
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ProcessList;->isInLruListLOSP(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 7886
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout executing service: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7887
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 7888
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    const/4 v5, 0x0

    const/16 v8, 0x400

    invoke-direct {v3, v2, v5, v8}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 7889
    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7890
    const-string v5, "    "

    invoke-virtual {v14, v3, v5}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7891
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 7892
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    .line 7893
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7894
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    const-wide/32 v8, 0x6ddd00

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7896
    iget-wide v2, v14, Lcom/android/server/am/ServiceRecord;->executingStart:J

    sub-long/2addr v6, v2

    .line 7897
    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-static {v2, v6, v7}, Lcom/android/internal/os/TimeoutRecord;->forServiceExec(Ljava/lang/String;J)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v13

    .line 7899
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v2, v1, v13}, Lcom/android/server/utils/AnrTimer;->accept(Ljava/lang/Object;Lcom/android/internal/os/TimeoutRecord;)V

    goto :goto_106

    .line 7901
    :cond_e2
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)Z

    .line 7902
    invoke-virtual {v5}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isExecServicesFg()Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 7903
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_TIMEOUT:J

    add-long/2addr v11, v2

    goto :goto_101

    .line 7905
    :cond_f5
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BACKGROUND_TIMEOUT:J

    add-long/2addr v11, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v11, v2

    .line 7906
    :goto_101
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v2, v1, v11, v12}, Lcom/android/server/utils/AnrTimer;->start(Ljava/lang/Object;J)V

    .line 7908
    :goto_106
    monitor-exit v4
    :try_end_107
    .catchall {:try_start_69 .. :try_end_107} :catchall_79

    :try_start_107
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v13, :cond_116

    .line 7911
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    invoke-virtual {v0, v1, v13}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V
    :try_end_113
    .catchall {:try_start_107 .. :try_end_113} :catchall_114

    goto :goto_116

    :catchall_114
    move-exception v0

    goto :goto_12e

    .line 7914
    :cond_116
    :goto_116
    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 7865
    :goto_11a
    :try_start_11a
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)Z

    .line 7866
    monitor-exit v4
    :try_end_120
    .catchall {:try_start_11a .. :try_end_120} :catchall_79

    .line 7914
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 7908
    :goto_127
    :try_start_127
    monitor-exit v4
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_79

    :try_start_128
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_12c
    .catchall {:try_start_128 .. :try_end_12c} :catchall_114

    :catchall_12c
    move-exception v0

    move-wide v15, v2

    .line 7914
    :goto_12e
    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    .line 7915
    throw v0
.end method

.method public final setAllowListWhileInUsePermissionInFgs()V
    .registers 3

    .line 820
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 821
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 823
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_17
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 826
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 828
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2e
    return-void
.end method

.method public final setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;Z)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 8609
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;ZZ)V

    return-void
.end method

.method public final setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;ZZ)V
    .registers 26

    move-object/from16 v6, p5

    if-eqz p7, :cond_a

    .line 8638
    iget v0, v6, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 8639
    iget v1, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    :goto_8
    move v9, v1

    goto :goto_f

    .line 8641
    :cond_a
    iget v0, v6, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 8642
    iget v1, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    goto :goto_8

    :goto_f
    const/4 v10, -0x1

    if-eq v0, v10, :cond_14

    if-ne v9, v10, :cond_3e

    .line 8646
    :cond_14
    iget-object v15, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v16, p6

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ProcessRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result v1

    if-ne v0, v10, :cond_28

    move v11, v1

    goto :goto_29

    :cond_28
    move v11, v0

    :goto_29
    if-ne v9, v10, :cond_3d

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 8652
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundWithBindingCheckLocked(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;Z)I

    move-result v9

    :cond_3d
    move v0, v11

    :cond_3e
    if-eqz p7, :cond_45

    .line 8659
    iput v0, v6, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 8660
    iput v9, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    return-void

    :cond_45
    if-nez p8, :cond_4c

    .line 8666
    iput v0, v6, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 8667
    iput v9, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    goto :goto_58

    .line 8677
    :cond_4c
    iget v1, v6, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    if-ne v1, v10, :cond_52

    .line 8678
    iput v0, v6, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 8680
    :cond_52
    iget v0, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    if-ne v0, v10, :cond_58

    .line 8681
    iput v9, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 8685
    :cond_58
    :goto_58
    iget v0, v6, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    if-ne v0, v10, :cond_66

    move-object/from16 v11, p0

    move/from16 v14, p3

    .line 8687
    invoke-virtual {v11, v14}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionByBindingsLocked(I)I

    move-result v0

    iput v0, v6, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 8689
    :cond_66
    iget v0, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    if-ne v0, v10, :cond_6e

    .line 8690
    iget v0, v6, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    iput v0, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    :cond_6e
    return-void
.end method

.method public final setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;IIIZ)V
    .registers 49

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v0, p2

    move/from16 v11, p5

    move/from16 v9, p7

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_737

    if-eqz p3, :cond_72e

    .line 2220
    const-string/jumbo v2, "startForeground(): "

    invoke-static {v2, v6}, Lcom/android/server/am/ActiveServices;->traceInstantFgs(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    .line 2223
    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 2224
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x44

    invoke-virtual {v2, v5, v4, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a8

    if-eq v2, v14, :cond_6c

    if-eq v2, v13, :cond_4c

    .line 2240
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2242
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v7, "startForeground"

    .line 2240
    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_a8

    .line 2237
    :cond_4c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have permission to create foreground services"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2232
    :cond_6c
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have permission to create foreground services, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2245
    :cond_8c
    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_a8

    .line 2246
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.FOREGROUND_SERVICE"

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2248
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v7, "startForeground"

    .line 2246
    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2251
    :cond_a8
    :goto_a8
    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getForegroundServiceType()I

    move-result v2

    const/4 v3, -0x1

    if-ne v11, v3, :cond_b3

    move v3, v2

    goto :goto_b4

    :cond_b3
    move v3, v11

    :goto_b4
    and-int v4, v3, v2

    if-eq v4, v3, :cond_12c

    .line 2261
    const-string v4, "debug.skip_fgs_manifest_type_check"

    .line 2265
    invoke-static {v4, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_12c

    .line 2266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "foregroundServiceType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0x%08X"

    .line 2267
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not a subset of foregroundServiceType attribute "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0x%08X"

    .line 2269
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in service element of manifest file"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2271
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v4

    if-eqz v4, :cond_126

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v7, 0xf8f6317

    .line 2272
    invoke-static {v7, v8, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v4

    if-nez v4, :cond_126

    .line 2276
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nThis will be an exception once the target SDK level is UDC"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    .line 2274
    :cond_126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12c
    :goto_12c
    and-int/lit16 v2, v3, 0x800

    const/16 v4, 0x800

    if-eqz v2, :cond_13e

    if-eq v3, v4, :cond_13e

    .line 2282
    const-string v2, "ActivityManager"

    const-string/jumbo v5, "startForeground(): FOREGROUND_SERVICE_TYPE_SHORT_SERVICE is combined with other types. SHORT_SERVICE will be ignored."

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v3, v3, -0x801

    :cond_13e
    move v2, v3

    .line 2291
    iget-boolean v3, v6, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v3, :cond_151

    .line 2296
    iput-boolean v15, v6, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 2297
    iput-boolean v15, v6, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 2299
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

    invoke-virtual {v5, v6}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)Z

    move/from16 v16, v14

    :goto_14e
    move/from16 v17, v16

    goto :goto_154

    :cond_151
    move/from16 v16, v15

    goto :goto_14e

    .line 2302
    :goto_154
    invoke-virtual {v1, v6, v2}, Lcom/android/server/am/ActiveServices;->shouldAllowBootCompletedStart(Lcom/android/server/am/ServiceRecord;I)Z

    move-result v5

    if-eqz v5, :cond_70d

    .line 2308
    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 2311
    :try_start_15e
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v7

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v13, 0x4c

    invoke-virtual {v7, v13, v8, v12}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v7

    const/4 v12, 0x3

    if-eqz v7, :cond_19d

    if-eq v7, v14, :cond_183

    if-ne v7, v12, :cond_178

    goto :goto_19d

    .line 2325
    :cond_178
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Foreground not allowed as per app op"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_180
    move-exception v0

    goto/16 :goto_6c4

    .line 2320
    :cond_183
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Service.startForeground() not allowed due to app op: service "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v14

    goto :goto_19e

    :cond_19d
    :goto_19d
    move v7, v15

    :goto_19e
    if-nez v7, :cond_1cf

    .line 2330
    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2331
    invoke-virtual {v1, v8}, Lcom/android/server/am/ActiveServices;->isForegroundServiceAllowedInBackgroundRestricted(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-nez v8, :cond_1cf

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 2332
    invoke-virtual {v1, v8}, Lcom/android/server/am/ActiveServices;->isTempAllowedByAlarmClock(I)Z

    move-result v8

    if-nez v8, :cond_1cf

    .line 2333
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Service.startForeground() not allowed due to bg restriction: service "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    invoke-virtual {v1, v5, v15}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    move v13, v14

    goto :goto_1d0

    :cond_1cf
    move v13, v7

    :goto_1d0
    if-nez v9, :cond_1dc

    move/from16 v7, p6

    .line 2345
    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/ActiveServices;->isBgFgsRestrictionEnabled(Lcom/android/server/am/ServiceRecord;I)Z

    move-result v7

    if-eqz v7, :cond_1dc

    move v9, v14

    goto :goto_1dd

    :cond_1dc
    move v9, v15

    .line 2354
    :goto_1dd
    invoke-virtual {v6}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result v7

    move/from16 v19, v13

    const-wide/32 v12, 0x12f13d8d

    move/from16 p6, v9

    const-wide/16 v9, 0x0

    if-nez v19, :cond_4de

    if-ne v2, v4, :cond_1fe

    .line 2359
    invoke-virtual {v6}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v8

    if-eqz v8, :cond_1f5

    goto :goto_1fe

    .line 2366
    :cond_1f5
    new-instance v0, Landroid/app/StartForegroundCalledOnStoppedServiceException;

    const-string/jumbo v2, "startForeground(SHORT_SERVICE) called on a service that\'s not started."

    invoke-direct {v0, v2}, Landroid/app/StartForegroundCalledOnStoppedServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2389
    :cond_1fe
    :goto_1fe
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v20

    if-ne v2, v4, :cond_207

    move/from16 v21, v14

    goto :goto_209

    :cond_207
    move/from16 v21, v15

    .line 2392
    :goto_209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 2394
    invoke-virtual {v6, v14, v15}, Lcom/android/server/am/ServiceRecord;->shouldTriggerShortFgsTimeout(J)Z

    .line 2399
    invoke-virtual {v6}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    .line 2410
    invoke-virtual {v6}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v4

    if-eqz v4, :cond_273

    if-eqz v20, :cond_273

    .line 2416
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->clearFgsAllowStart()V

    .line 2417
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    iget-object v14, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v6, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 2418
    invoke-virtual {v15}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v15

    move/from16 v23, v7

    sget-object v7, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    move/from16 v24, v3

    move v3, v8

    const/4 v8, 0x0

    move/from16 v25, v14

    move v14, v2

    move-object v2, v4

    move/from16 v4, v25

    move-object/from16 v25, v15

    move-object v15, v5

    move-object/from16 v5, v25

    move/from16 v25, v23

    .line 2417
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;Z)V

    .line 2422
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedStart()Z

    move-result v2

    if-nez v2, :cond_257

    .line 2423
    const-string v2, "ActivityManager"

    const-string v3, "FGS type change to/from SHORT_SERVICE:  BFSL DENIED."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_257
    if-eqz p6, :cond_265

    .line 2436
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedStart()Z

    move-result v2

    if-eqz v2, :cond_260

    goto :goto_265

    :cond_260
    if-eqz v21, :cond_26a

    const/4 v2, 0x1

    :goto_263
    const/4 v3, 0x0

    goto :goto_26c

    :cond_265
    :goto_265
    if-eqz v21, :cond_26a

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_26c

    :cond_26a
    const/4 v2, 0x0

    goto :goto_263

    :goto_26c
    move/from16 v21, v2

    move/from16 v23, v3

    const/4 v10, 0x1

    goto/16 :goto_3d4

    :cond_273
    move v14, v2

    move/from16 v24, v3

    move-object v15, v5

    move/from16 v25, v7

    .line 2464
    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12, v13, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-eqz v2, :cond_332

    .line 2466
    invoke-virtual {v1, v14}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result v2

    if-eqz v2, :cond_332

    .line 2475
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->clearFgsAllowStart()V

    .line 2476
    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 2477
    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    sget-object v7, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    const/4 v8, 0x0

    .line 2476
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;Z)V

    if-eqz p6, :cond_2ae

    .line 2482
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedStart()Z

    move-result v2

    if-eqz v2, :cond_32b

    .line 2484
    :cond_2ae
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mTimeLimitedFgsInfo:Landroid/util/SparseArray;

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2485
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_2ca

    .line 2487
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 2488
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mTimeLimitedFgsInfo:Landroid/util/SparseArray;

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2491
    :cond_2ca
    invoke-virtual {v1, v14}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result v3

    .line 2492
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    if-eqz v2, :cond_32b

    .line 2495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v7, 0x5265c00

    sub-long/2addr v3, v7

    .line 2494
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2496
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->getTimeLimitExceededAt()J

    move-result-wide v7

    .line 2497
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->getFirstFgsStartRealtime()J

    move-result-wide v26

    cmp-long v3, v26, v3

    if-ltz v3, :cond_328

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2498
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_328

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v7, v3

    if-eqz v3, :cond_308

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2500
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastTopTime()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_308

    goto :goto_328

    :cond_308
    cmp-long v2, v7, v9

    if-gtz v2, :cond_30d

    goto :goto_32b

    .line 2509
    :cond_30d
    new-instance v0, Landroid/app/ForegroundServiceStartNotAllowedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time limit already exhausted for foreground service type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2512
    invoke-static {v14}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ForegroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2505
    :cond_328
    :goto_328
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->reset()V

    :cond_32b
    :goto_32b
    const/4 v10, 0x1

    :goto_32c
    const/16 v21, 0x0

    const/16 v23, 0x0

    goto/16 :goto_3d4

    .line 2519
    :cond_332
    iget v2, v6, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I
    :try_end_334
    .catchall {:try_start_15e .. :try_end_334} :catchall_180

    if-nez v2, :cond_3b0

    .line 2533
    :try_start_336
    iget-boolean v2, v6, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-nez v2, :cond_3d1

    .line 2534
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v6, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    sub-long/2addr v2, v4

    .line 2535
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_3ac

    .line 2536
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2537
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 2538
    invoke-virtual {v8}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v8

    move-wide/from16 v26, v2

    move-object v2, v4

    move v4, v7

    sget-object v7, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    move v3, v5

    move-object v5, v8

    const/4 v8, 0x0

    move-wide/from16 v9, v26

    .line 2537
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;Z)V

    .line 2542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startForegroundDelayMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2543
    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    if-eqz v2, :cond_3a5

    .line 2544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    :goto_39e
    const/4 v1, 0x0

    goto :goto_3a8

    :catchall_3a0
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_6c4

    .line 2546
    :cond_3a5
    iput-object v1, v6, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    goto :goto_39e

    .line 2548
    :goto_3a8
    iput-boolean v1, v6, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    const/4 v1, 0x1

    goto :goto_3ad

    :cond_3ac
    const/4 v1, 0x0

    :goto_3ad
    move v10, v1

    goto/16 :goto_32c

    :cond_3b0
    const/4 v1, 0x1

    if-lt v2, v1, :cond_3d1

    .line 2558
    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 2559
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    sget-object v7, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 2558
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;Z)V

    goto/16 :goto_32b

    :cond_3d1
    const/4 v10, 0x0

    goto/16 :goto_32c

    :goto_3d4
    if-nez v10, :cond_3fc

    .line 2576
    invoke-virtual {v6}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v1

    if-nez v1, :cond_3fc

    .line 2577
    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 2578
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    sget-object v7, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;
    :try_end_3f2
    .catchall {:try_start_336 .. :try_end_3f2} :catchall_3a0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move/from16 v12, p6

    .line 2577
    :try_start_3f8
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;ZZ)V

    goto :goto_400

    :cond_3fc
    move-object/from16 v1, p0

    move/from16 v12, p6

    .line 2585
    :goto_400
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v2

    if-nez v2, :cond_41e

    .line 2586
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Foreground service started from background can not have location/camera/microphone access: service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    :cond_41e
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->maybeLogFgsLogicChange()V

    if-nez v21, :cond_47c

    .line 2593
    invoke-virtual {v1, v6, v12}, Lcom/android/server/am/ActiveServices;->logFgsBackgroundStart(Lcom/android/server/am/ServiceRecord;Z)V

    .line 2594
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedStart()Z

    move-result v2

    if-nez v2, :cond_47c

    if-eqz v12, :cond_47c

    .line 2596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service.startForeground() not allowed due to mAllowStartForeground false: service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v20, :cond_442

    .line 2599
    const-string v3, " (Called on SHORT_SERVICE)"

    goto :goto_444

    :cond_442
    const-string v3, ""

    :goto_444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2600
    const-string v2, "ActivityManager"

    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->showFgsBgRestrictedNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    const/4 v2, 0x1

    .line 2602
    invoke-virtual {v1, v15, v2}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V
    :try_end_457
    .catchall {:try_start_3f8 .. :try_end_457} :catchall_180

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    .line 2604
    :try_start_45f
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V
    :try_end_462
    .catchall {:try_start_45f .. :try_end_462} :catchall_478

    move-object v6, v2

    .line 2610
    :try_start_463
    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v3, 0xa5fa937

    invoke-static {v3, v4, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-nez v2, :cond_472

    const/4 v13, 0x1

    goto :goto_47e

    .line 2612
    :cond_472
    new-instance v0, Landroid/app/ForegroundServiceStartNotAllowedException;

    invoke-direct {v0, v9}, Landroid/app/ForegroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_478
    move-exception v0

    move-object v6, v2

    goto/16 :goto_6c4

    :cond_47c
    move/from16 v13, v19

    :goto_47e
    if-nez v13, :cond_4d9

    if-nez v14, :cond_489

    const/4 v2, 0x0

    .line 2620
    invoke-virtual {v1, v6, v14, v2, v11}, Lcom/android/server/am/ActiveServices;->validateForegroundServiceType(Lcom/android/server/am/ServiceRecord;III)Landroid/util/Pair;

    move-result-object v3

    move-object v12, v3

    goto :goto_4b1

    :cond_489
    const/high16 v2, 0x40000000    # 2.0f

    and-int v3, v14, v2

    if-eqz v3, :cond_490

    goto :goto_491

    :cond_490
    const/4 v2, 0x0

    .line 2634
    :goto_491
    invoke-static {v14}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    move v4, v3

    move v3, v14

    const/4 v12, 0x0

    :goto_498
    if-eqz v4, :cond_4b1

    .line 2637
    invoke-virtual {v1, v6, v4, v2, v11}, Lcom/android/server/am/ActiveServices;->validateForegroundServiceType(Lcom/android/server/am/ServiceRecord;III)Landroid/util/Pair;

    move-result-object v12

    not-int v4, v4

    and-int/2addr v3, v4

    .line 2640
    iget-object v4, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4ac

    goto :goto_4b1

    .line 2636
    :cond_4ac
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    goto :goto_498

    .line 2645
    :cond_4b1
    :goto_4b1
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2646
    iget-object v3, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_4c1

    move v8, v10

    move/from16 v9, v23

    goto :goto_4e9

    .line 2647
    :cond_4c1
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 2649
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_4c9
    .catchall {:try_start_463 .. :try_end_4c9} :catchall_180

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v6

    move v6, v0

    .line 2647
    :try_start_4d0
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V
    :try_end_4d3
    .catchall {:try_start_4d0 .. :try_end_4d3} :catchall_478

    move-object v6, v2

    .line 2653
    :try_start_4d4
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_4d9
    move v8, v10

    move/from16 v9, v23

    const/4 v2, 0x0

    goto :goto_4e9

    :cond_4de
    move v14, v2

    move/from16 v24, v3

    move-object v15, v5

    move/from16 v25, v7

    move/from16 v13, v19

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4e9
    if-nez v13, :cond_67b

    .line 2663
    iget v3, v6, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eq v3, v0, :cond_4f4

    .line 2664
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2665
    iput v0, v6, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    :cond_4f4
    move-object/from16 v10, p3

    .line 2667
    iget v0, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 2668
    iput-object v10, v6, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 2669
    invoke-virtual {v6}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_531

    move/from16 v0, v25

    if-eq v14, v0, :cond_533

    .line 2673
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FGS type change for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_533

    :cond_531
    move/from16 v0, v25

    .line 2676
    :cond_533
    :goto_533
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3, v6, v14}, Lcom/android/server/am/ProcessStateController;->setForegroundServiceType(Lcom/android/server/am/psc/ServiceRecordInternal;I)V

    .line 2677
    invoke-virtual {v6}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v3

    if-nez v3, :cond_647

    .line 2678
    iget v3, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v3

    if-eqz v3, :cond_59b

    .line 2680
    iget-object v4, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 2681
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    if-nez v4, :cond_593

    .line 2683
    new-instance v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    invoke-direct {v4}, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;-><init>()V

    .line 2684
    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    .line 2685
    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    .line 2686
    iget-boolean v5, v1, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    iput-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 2687
    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_57f

    .line 2688
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v5

    if-eqz v5, :cond_57f

    .line 2691
    invoke-virtual {v5}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result v5

    const/4 v7, 0x2

    if-gt v5, v7, :cond_57a

    const/4 v5, 0x1

    goto :goto_57b

    :cond_57a
    const/4 v5, 0x0

    :goto_57b
    iput-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    iput-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 2695
    :cond_57f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v10, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    .line 2696
    iget-object v5, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v10, 0x0

    .line 2697
    invoke-virtual {v1, v3, v10, v11}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 2699
    :cond_593
    iget v3, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    const/16 v22, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    .line 2701
    :cond_59b
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/4 v5, 0x1

    invoke-virtual {v3, v6, v5}, Lcom/android/server/am/ProcessStateController;->setIsForegroundService(Lcom/android/server/am/psc/ServiceRecordInternal;Z)V

    .line 2706
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    move-result v3

    iput v3, v6, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    .line 2708
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v3

    iput-boolean v3, v6, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgsAtEntering:Z

    .line 2709
    iget v3, v6, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    const/16 v22, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v6, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    .line 2710
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v6, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    if-nez v17, :cond_5e3

    .line 2712
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5c6
    .catchall {:try_start_4d4 .. :try_end_5c6} :catchall_180

    .line 2713
    :try_start_5c6
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v4

    if-eqz v4, :cond_5df

    .line 2715
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2716
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    .line 2717
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v7, 0x1

    .line 2715
    invoke-virtual {v4, v7, v5, v10, v11}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_5df

    :catchall_5dd
    move-exception v0

    goto :goto_5e1

    .line 2719
    :cond_5df
    :goto_5df
    monitor-exit v3

    goto :goto_5e5

    :goto_5e1
    monitor-exit v3
    :try_end_5e2
    .catchall {:try_start_5c6 .. :try_end_5e2} :catchall_5dd

    :try_start_5e2
    throw v0

    :cond_5e3
    const/16 v17, 0x0

    .line 2724
    :goto_5e5
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 2725
    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v29

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v36, ""

    const/16 v38, 0x0

    const/16 v39, -0x1

    const/16 v30, 0x4c

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v37, 0x0

    move-object/from16 v28, v3

    move/from16 v31, v4

    move-object/from16 v32, v5

    .line 2724
    invoke-virtual/range {v28 .. v39}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    .line 2729
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->registerAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2730
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v5, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 2733
    invoke-virtual {v6}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v3
    :try_end_61d
    .catchall {:try_start_5e2 .. :try_end_61d} :catchall_180

    if-eqz v3, :cond_625

    if-eqz v24, :cond_623

    const/4 v7, 0x3

    goto :goto_626

    :cond_623
    const/4 v7, 0x2

    goto :goto_626

    :cond_625
    const/4 v7, 0x1

    :goto_626
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object/from16 v40, v6

    move v6, v2

    move-object/from16 v2, v40

    .line 2743
    :try_start_62e
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V
    :try_end_631
    .catchall {:try_start_62e .. :try_end_631} :catchall_478

    move-object v6, v2

    .line 2749
    :try_start_632
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    monitor-enter v2
    :try_end_635
    .catchall {:try_start_632 .. :try_end_635} :catchall_180

    .line 2750
    :try_start_635
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logForegroundServiceStart(IILcom/android/server/am/ServiceRecord;)V

    .line 2751
    monitor-exit v2
    :try_end_640
    .catchall {:try_start_635 .. :try_end_640} :catchall_644

    .line 2752
    :try_start_640
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices;->updateNumForegroundServicesLocked()V
    :try_end_643
    .catchall {:try_start_640 .. :try_end_643} :catchall_180

    goto :goto_647

    :catchall_644
    move-exception v0

    .line 2751
    :try_start_645
    monitor-exit v2
    :try_end_646
    .catchall {:try_start_645 .. :try_end_646} :catchall_644

    :try_start_646
    throw v0

    .line 2755
    :cond_647
    :goto_647
    invoke-virtual {v1, v6, v9}, Lcom/android/server/am/ActiveServices;->maybeUpdateShortFgsTrackingLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 2759
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->signalForegroundServiceObserversLocked(Lcom/android/server/am/ServiceRecord;)V

    const/4 v5, 0x1

    .line 2760
    invoke-virtual {v6, v5}, Lcom/android/server/am/ServiceRecord;->postNotification(Z)V

    .line 2761
    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_658

    .line 2762
    invoke-virtual {v1, v15, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    .line 2764
    :cond_658
    iget v2, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2765
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 2768
    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v3, 0x12f13d8d

    invoke-static {v3, v4, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-eqz v2, :cond_67b

    .line 2769
    invoke-virtual {v1, v6, v0}, Lcom/android/server/am/ActiveServices;->maybeUpdateFgsTrackingLocked(Lcom/android/server/am/ServiceRecord;I)V
    :try_end_67b
    .catchall {:try_start_646 .. :try_end_67b} :catchall_180

    :cond_67b
    if-eqz v17, :cond_6a1

    .line 2780
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2781
    :try_start_684
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_69d

    .line 2783
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 2784
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    .line 2783
    invoke-virtual {v0, v7, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_69d

    :catchall_69b
    move-exception v0

    goto :goto_69f

    .line 2786
    :cond_69d
    :goto_69d
    monitor-exit v2

    goto :goto_6a1

    :goto_69f
    monitor-exit v2
    :try_end_6a0
    .catchall {:try_start_684 .. :try_end_6a0} :catchall_69b

    throw v0

    :cond_6a1
    :goto_6a1
    if-eqz v16, :cond_81c

    .line 2791
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 2792
    invoke-static {v0}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x4c

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move/from16 p2, v5

    .line 2791
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_6c4
    if-eqz v17, :cond_6ea

    .line 2780
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2781
    :try_start_6cd
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_6e6

    .line 2783
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    .line 2784
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v5, 0x0

    .line 2783
    invoke-virtual {v3, v5, v4, v7, v8}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_6e6

    :catchall_6e4
    move-exception v0

    goto :goto_6e8

    .line 2786
    :cond_6e6
    :goto_6e6
    monitor-exit v2

    goto :goto_6ea

    :goto_6e8
    monitor-exit v2
    :try_end_6e9
    .catchall {:try_start_6cd .. :try_end_6e9} :catchall_6e4

    throw v0

    :cond_6ea
    :goto_6ea
    if-eqz v16, :cond_70c

    .line 2791
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 2792
    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x4c

    move-object/from16 p0, v1

    move-object/from16 p1, v2

    move/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move/from16 p2, v6

    .line 2791
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 2796
    :cond_70c
    throw v0

    :cond_70d
    move v14, v2

    .line 2303
    new-instance v0, Landroid/app/ForegroundServiceStartNotAllowedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FGS type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2304
    invoke-static {v14}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed to start from BOOT_COMPLETED!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ForegroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2218
    :cond_72e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null notification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2798
    :cond_737
    invoke-virtual {v6}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_81c

    .line 2799
    const-string/jumbo v0, "stopForeground(): "

    invoke-static {v0, v6}, Lcom/android/server/am/ActiveServices;->traceInstantFgs(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    .line 2800
    iget v0, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    if-eqz v0, :cond_74e

    .line 2802
    invoke-virtual {v1, v0, v6}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    .line 2805
    :cond_74e
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->maybeStopShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2806
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->maybeStopFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_762

    .line 2814
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    const/4 v5, 0x0

    .line 2815
    iput v5, v6, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    const/4 v0, 0x0

    .line 2816
    iput-object v0, v6, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    goto :goto_780

    :cond_762
    const/4 v5, 0x0

    .line 2817
    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_780

    .line 2819
    iget-boolean v0, v6, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    if-nez v0, :cond_772

    .line 2820
    invoke-virtual {v6, v5}, Lcom/android/server/am/ServiceRecord;->postNotification(Z)V

    .line 2822
    :cond_772
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->dropFgsNotificationStateLocked(Lcom/android/server/am/ServiceRecord;)V

    const/16 v18, 0x2

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_780

    .line 2824
    iput v5, v6, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    const/4 v0, 0x0

    .line 2825
    iput-object v0, v6, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 2829
    :cond_780
    :goto_780
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v0, v6, v5}, Lcom/android/server/am/ProcessStateController;->setIsForegroundService(Lcom/android/server/am/psc/ServiceRecordInternal;Z)V

    .line 2830
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    .line 2831
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2832
    :try_start_794
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_7ad

    .line 2834
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 2835
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    .line 2834
    invoke-virtual {v0, v7, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_7ad

    :catchall_7ab
    move-exception v0

    goto :goto_81a

    .line 2837
    :cond_7ad
    :goto_7ad
    monitor-exit v2
    :try_end_7ae
    .catchall {:try_start_794 .. :try_end_7ae} :catchall_7ab

    .line 2838
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 2839
    invoke-static {v10}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v11

    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v12, 0x4c

    .line 2838
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 2841
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2844
    iget-wide v2, v6, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    iget-wide v4, v6, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_7d1

    sub-long/2addr v2, v4

    long-to-int v0, v2

    move v4, v0

    goto :goto_7d2

    :cond_7d1
    const/4 v4, 0x0

    :goto_7d2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v2, p1

    .line 2842
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V

    move-object v6, v2

    .line 2852
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    monitor-enter v3

    .line 2853
    :try_start_7e0
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logForegroundServiceStop(ILcom/android/server/am/ServiceRecord;)V

    .line 2854
    monitor-exit v3
    :try_end_7ea
    .catchall {:try_start_7e0 .. :try_end_7ea} :catchall_817

    const/4 v5, 0x0

    .line 2857
    invoke-virtual {v6, v5}, Lcom/android/server/am/psc/ServiceRecordInternal;->setForegroundServiceType(I)V

    .line 2858
    iput-boolean v5, v6, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    .line 2859
    iput-boolean v9, v6, Lcom/android/server/am/ServiceRecord;->systemRequestedFgToBg:Z

    .line 2860
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->signalForegroundServiceObserversLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2861
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2862
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v3, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 2863
    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_813

    .line 2864
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v5, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2865
    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    .line 2867
    :cond_813
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices;->updateNumForegroundServicesLocked()V

    return-void

    :catchall_817
    move-exception v0

    .line 2854
    :try_start_818
    monitor-exit v3
    :try_end_819
    .catchall {:try_start_818 .. :try_end_819} :catchall_817

    throw v0

    .line 2837
    :goto_81a
    :try_start_81a
    monitor-exit v2
    :try_end_81b
    .catchall {:try_start_81a .. :try_end_81b} :catchall_7ab

    throw v0

    :cond_81c
    return-void
.end method

.method public setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V
    .registers 18

    .line 1893
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1894
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Injector;->getCallingUid()I

    move-result v7

    .line 1895
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v9

    .line 1897
    :try_start_14
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    if-eqz v2, :cond_28

    const/4 v8, 0x0

    move-object v1, p0

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 1899
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;IIIZ)V
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_26

    goto :goto_28

    :catchall_26
    move-exception v0

    goto :goto_30

    .line 1903
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    return-void

    :goto_30
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    .line 1904
    throw v0
.end method

.method public setServiceRestartBackoffEnabledLocked(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 13

    if-nez p2, :cond_5b

    .line 5883
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_5a

    .line 5887
    :cond_b
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5889
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 5890
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    move v6, v0

    :goto_1c
    if-ge v6, p2, :cond_5a

    .line 5891
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 5892
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 5893
    iget-wide v2, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v2, v4

    .line 5894
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    cmp-long v0, v2, v7

    if-lez v0, :cond_49

    .line 5895
    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v7, v4

    .line 5896
    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 5897
    const-string v2, "Rescheduling"

    move-object v0, p0

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_4b

    :cond_49
    move-object v0, p0

    move-object v3, p3

    .line 5901
    :goto_4b
    iget-object p0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 v6, v6, 0x1

    move-object p0, v0

    move-object p3, v3

    goto :goto_1c

    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    move-object v0, p0

    .line 5905
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveServices;->removeServiceRestartBackoffEnabledLocked(Ljava/lang/String;)V

    return-void
.end method

.method public final shouldAllowBootCompletedStart(Lcom/android/server/am/ServiceRecord;I)Z
    .registers 6

    .line 1197
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    move-result v0

    .line 1198
    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v1, 0x11ad1fc7

    invoke-static {v1, v2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_22

    const/16 p1, 0xc8

    if-ne v0, p1, :cond_22

    .line 1201
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGS_BOOT_COMPLETED_ALLOWLIST:I

    and-int/2addr p0, p2

    if-eqz p0, :cond_20

    return v1

    :cond_20
    const/4 p0, 0x0

    return p0

    :cond_22
    return v1
.end method

.method public final shouldAllowFgsStartForegroundNoBindingCheckLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;)I
    .registers 13

    const/4 v0, -0x1

    if-ne p1, v0, :cond_10

    .line 9071
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p3}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_10

    .line 9074
    invoke-static {v1}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    move-result p1

    :cond_10
    const/4 v1, 0x1

    if-ne p1, v0, :cond_36

    .line 9079
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 9080
    invoke-virtual {v2, p3}, Lcom/android/server/am/ActivityManagerService;->getUidProcessCapabilityLocked(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    move v2, v1

    goto :goto_21

    :cond_20
    move v2, v3

    .line 9081
    :goto_21
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v5, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, p3, v2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ActiveServices;IZ)V

    invoke-virtual {v4, v3, v5}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_36

    .line 9106
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_36
    if-ne p1, v0, :cond_44

    .line 9111
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_44

    const/16 p1, 0x3b

    :cond_44
    if-ne p1, v0, :cond_4e

    .line 9118
    invoke-virtual {p6}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundFgsStarts()Z

    move-result p6

    if-eqz p6, :cond_4e

    const/16 p1, 0x35

    :cond_4e
    if-ne p1, v0, :cond_87

    .line 9124
    iget-object p6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p6, p6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p6, p3, p2, p4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_87

    const-wide/32 v2, 0x130ac16c

    .line 9128
    invoke-static {v2, v3, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p6

    const/16 v2, 0x3e

    if-eqz p6, :cond_86

    .line 9129
    iget-object p6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p6, p6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p6, p3}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object p6

    if-eqz p6, :cond_87

    .line 9131
    invoke-virtual {p6}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_74
    if-ltz v3, :cond_87

    .line 9132
    invoke-virtual {p6, v3}, Lcom/android/server/am/UidRecord;->getProcessRecordByIndex(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 9133
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasOverlayUi()Z

    move-result v1

    if-eqz v1, :cond_83

    goto :goto_86

    :cond_83
    add-int/lit8 v3, v3, -0x1

    goto :goto_74

    :cond_86
    :goto_86
    move p1, v2

    :cond_87
    if-ne p1, v0, :cond_a9

    .line 9152
    iget-object p6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p6, p6, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 9153
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 9152
    invoke-virtual {p6, v1, p3}, Landroid/app/ActivityManagerInternal;->isAssociatedCompanionApp(II)Z

    move-result p6

    if-eqz p6, :cond_a9

    .line 9155
    const-string p6, "android.permission.REQUEST_COMPANION_START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    invoke-virtual {p0, p6, p2, p3}, Lcom/android/server/am/ActiveServices;->isPermissionGranted(Ljava/lang/String;II)Z

    move-result p6

    if-nez p6, :cond_a7

    const-string p6, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    .line 9158
    invoke-virtual {p0, p6, p2, p3}, Lcom/android/server/am/ActiveServices;->isPermissionGranted(Ljava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_a9

    :cond_a7
    const/16 p1, 0x39

    :cond_a9
    if-ne p1, v0, :cond_bc

    .line 9166
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 9167
    invoke-virtual {p2, p3}, Lcom/android/server/am/ActivityManagerService;->isAllowlistedForFgsStartLOSP(I)Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-result-object p2

    if-eqz p2, :cond_bc

    .line 9169
    sget-object p1, Lcom/android/server/am/ActivityManagerService;->FAKE_TEMP_ALLOW_LIST_ITEM:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    if-ne p2, p1, :cond_ba

    const/16 p1, 0x12c

    goto :goto_bc

    .line 9172
    :cond_ba
    iget p1, p2, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    :cond_bc
    :goto_bc
    if-ne p1, v0, :cond_ca

    .line 9178
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_ca

    const/16 p1, 0x3f

    :cond_ca
    if-ne p1, v0, :cond_d8

    .line 9185
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p2, p3}, Landroid/app/ActivityManagerInternal;->isProfileOwner(I)Z

    move-result p2

    if-eqz p2, :cond_d8

    const/16 p1, 0x38

    :cond_d8
    if-ne p1, v0, :cond_f2

    .line 9192
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p2

    .line 9193
    iget-object p6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p6, p6, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p6, p6, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    if-eqz p6, :cond_f2

    const/16 p6, 0x80

    .line 9194
    invoke-virtual {p2, p6, p3, p4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_f2

    const/16 p1, 0x147

    :cond_f2
    if-ne p1, v0, :cond_10f

    .line 9202
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p2

    const/16 p6, 0x2f

    .line 9203
    invoke-virtual {p2, p6, p3, p4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p6

    if-nez p6, :cond_105

    const/16 p1, 0x44

    goto :goto_10f

    :cond_105
    const/16 p6, 0x5e

    .line 9206
    invoke-virtual {p2, p6, p3, p4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_10f

    const/16 p1, 0x45

    :cond_10f
    :goto_10f
    if-ne p1, v0, :cond_137

    .line 9213
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 9214
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p6, "default_input_method"

    .line 9216
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 9214
    invoke-static {p2, p6, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_137

    .line 9218
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_137

    .line 9219
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_137

    const/16 p1, 0x47

    :cond_137
    if-ne p1, v0, :cond_14e

    .line 9226
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    if-eqz p0, :cond_14e

    if-eqz p5, :cond_14e

    iget-object p0, p5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 9228
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->hasRequestForegroundServiceExemption()Z

    move-result p0

    if-eqz p0, :cond_14e

    const/16 p0, 0x3e8

    return p0

    :cond_14e
    return p1
.end method

.method public final shouldAllowFgsStartForegroundWithBindingCheckLocked(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;Z)I
    .registers 22

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 9007
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 9008
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->isAllowlistedForFgsStartLOSP(I)Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move/from16 v2, p3

    move-object/from16 v6, p7

    .line 9009
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundNoBindingCheckLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result v2

    const/4 v6, 0x0

    const/4 v8, -0x1

    if-ne v2, v8, :cond_24

    .line 9020
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->canBindingClientStartFgsLocked(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_25

    const/16 v2, 0x36

    goto :goto_25

    :cond_24
    move-object v9, v6

    .line 9026
    :cond_25
    :goto_25
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10, v3}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v10

    .line 9029
    :try_start_2b
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 9030
    invoke-virtual {v11, p2}, Landroid/content/pm/PackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v8
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_37} :catch_37

    .line 9033
    :catch_37
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityManagerService;->getUidProcessCapabilityLocked(I)I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    const/4 v0, 0x0

    if-eqz p0, :cond_44

    const/4 p0, 0x1

    goto :goto_45

    :cond_44
    move p0, v0

    .line 9035
    :goto_45
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[callingPackage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; callingUid: "

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; uidState: "

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9038
    invoke-static {v10}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; uidBFSL: "

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_70

    .line 9039
    const-string p0, "[BFSL]"

    goto :goto_73

    :cond_70
    const-string/jumbo p0, "n/a"

    :goto_73
    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; intent: "

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p0, p5

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; code:"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9041
    invoke-static {v2}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; tempAllowListReason:<"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_94

    goto :goto_c4

    .line 9044
    :cond_94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v7, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReason:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",reasonCode:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v7, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    .line 9046
    invoke-static {p2}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",duration:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v7, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mDuration:J

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",callingUid:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v7, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_c4
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">; allowWiu:"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; targetSdkVersion:"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; callerTargetSdkVersion:"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; startForegroundCount:"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v5, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; bindFromPackage:"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": isBindService:"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 p0, p8

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9057
    iget-object p1, v5, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_114

    .line 9058
    iput-boolean v0, v5, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    .line 9059
    iput-object p0, v5, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    :cond_114
    return v2
.end method

.method public final shouldAllowFgsWhileInUsePermissionByBindingsLocked(I)I
    .registers 5

    .line 8872
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 8873
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v2, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/ActiveServices;ILandroid/util/ArraySet;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_19

    const/4 p0, -0x1

    return p0

    .line 8916
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ProcessRecord;Landroid/app/BackgroundStartPrivileges;)I
    .registers 10

    .line 8741
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-gt v0, v1, :cond_f

    .line 8746
    invoke-static {v0}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    move-result v0

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    if-ne v0, v2, :cond_1e

    .line 8754
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v0, 0x32

    :cond_1e
    if-ne v0, v2, :cond_28

    .line 8763
    invoke-virtual {p5}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result p5

    if-eqz p5, :cond_28

    const/16 v0, 0x35

    :cond_28
    if-ne v0, v2, :cond_3f

    .line 8770
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p5

    if-eqz p5, :cond_3d

    const/16 v1, 0x3e8

    if-eq p5, v1, :cond_3d

    const/16 v1, 0x403

    if-eq p5, v1, :cond_3d

    const/16 v1, 0x7d0

    if-eq p5, v1, :cond_3d

    goto :goto_3f

    :cond_3d
    const/16 v0, 0x33

    :cond_3f
    :goto_3f
    if-ne v0, v2, :cond_57

    .line 8794
    iget-object p5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p5, p5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;

    invoke-direct {v1, p3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {p5, v3, v1}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    if-eqz p5, :cond_57

    .line 8803
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_57
    if-ne v0, v2, :cond_66

    .line 8814
    iget-object p5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p5, p5, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p5, p3}, Landroid/app/ActivityManagerInternal;->isTempAllowlistedForFgsWhileInUse(I)Z

    move-result p5

    if-eqz p5, :cond_66

    const/16 p0, 0x46

    return p0

    :cond_66
    if-ne v0, v2, :cond_76

    if-eqz p4, :cond_76

    .line 8823
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object p4

    if-eqz p4, :cond_76

    .line 8824
    iget-boolean p4, p4, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    if-eqz p4, :cond_76

    const/16 v0, 0x3c

    :cond_76
    if-ne v0, v2, :cond_84

    .line 8834
    iget-object p4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string p5, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-virtual {p4, p5, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    if-nez p2, :cond_84

    const/16 v0, 0x3a

    :cond_84
    if-ne v0, v2, :cond_c0

    .line 8843
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->verifyPackage(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_97

    .line 8844
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    .line 8845
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c0

    const/16 v0, 0x41

    goto :goto_c0

    .line 8850
    :cond_97
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "callingPackage:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to callingUid:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "215003903"

    filled-new-array {p4, p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x534e4554

    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_c0
    :goto_c0
    if-ne v0, v2, :cond_cf

    .line 8858
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p3}, Landroid/app/ActivityManagerInternal;->isDeviceOwner(I)Z

    move-result p0

    if-eqz p0, :cond_cf

    const/16 p0, 0x37

    return p0

    :cond_cf
    return v0
.end method

.method public shouldServiceTimeOutLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .registers 8

    .line 3715
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3716
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v1

    .line 3718
    :try_start_c
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_2b

    if-nez p1, :cond_1b

    .line 3725
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    .line 3722
    :cond_1b
    :try_start_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3723
    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ServiceRecord;->shouldTriggerShortFgsTimeout(J)Z

    move-result p1
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_2b

    .line 3725
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    return p1

    :catchall_2b
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    .line 3726
    throw p1
.end method

.method public final shouldShowFgsNotificationLocked(Lcom/android/server/am/ServiceRecord;)Z
    .registers 8

    .line 3130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3133
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    const/4 v3, 0x1

    if-nez v2, :cond_e

    return v3

    .line 3138
    :cond_e
    iget-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    if-eqz v2, :cond_19

    iget-wide v4, p1, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    cmp-long v2, v0, v4

    if-ltz v2, :cond_19

    return v3

    .line 3146
    :cond_19
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActiveServices;->withinFgsDeferRateLimit(Lcom/android/server/am/ServiceRecord;J)Z

    move-result v0

    if-eqz v0, :cond_20

    return v3

    .line 3150
    :cond_20
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    if-eqz p0, :cond_31

    .line 3153
    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_31

    return v3

    .line 3160
    :cond_31
    iget-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    if-eqz p0, :cond_36

    return v3

    .line 3165
    :cond_36
    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification;->isForegroundDisplayForceDeferred()Z

    move-result p0

    if-nez p0, :cond_50

    .line 3167
    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification;->shouldShowForegroundImmediately()Z

    move-result p0

    if-eqz p0, :cond_47

    return v3

    .line 3176
    :cond_47
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result p0

    and-int/lit8 p0, p0, 0x36

    if-eqz p0, :cond_50

    return v3

    :cond_50
    const/4 p0, 0x0

    return p0
.end method

.method public final showFgsBgRestrictedNotificationLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 8

    .line 9248
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    if-nez v0, :cond_9

    return-void

    .line 9251
    :cond_9
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 9253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App restricted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 9255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/am/ActiveServices;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9257
    new-instance v3, Landroid/app/Notification$Builder;

    const-string v4, "ALERTS"

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v4, "com.android.fgs-bg-restricted"

    .line 9260
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x1080a10

    .line 9261
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 9262
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x106001c

    .line 9263
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 9265
    const-string v4, "Foreground Service BG-Launch Restricted"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 9266
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 9267
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 9268
    invoke-virtual {v3, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 9269
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 9270
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v2, 0x3d

    .line 9269
    invoke-virtual {p0, v0, v2, p1, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final signalForegroundServiceObserversLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 8

    .line 7356
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 7359
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IForegroundServiceObserver;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 7360
    invoke-virtual {p1}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v5

    .line 7359
    invoke-interface {v2, p1, v3, v4, v5}, Landroid/app/IForegroundServiceObserver;->onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_1e

    :catch_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7366
    :cond_21
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final startFgsDeferralTimerLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 9

    .line 3199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3200
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3204
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralIntervalForShort:J

    goto :goto_1b

    .line 3205
    :cond_15
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    :goto_1b
    add-long/2addr v0, v3

    const/4 v3, 0x0

    move v4, v3

    .line 3208
    :goto_1e
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_40

    .line 3209
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    if-ne v5, p1, :cond_31

    return-void

    .line 3218
    :cond_31
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v6, :cond_3d

    .line 3219
    iget-wide v5, v5, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 3223
    :cond_40
    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralRateLimited:Z

    if-eqz v4, :cond_5d

    .line 3225
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTimeForShort:J

    goto :goto_57

    .line 3226
    :cond_51
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    :goto_57
    add-long/2addr v4, v0

    .line 3227
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralEligible:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v2, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 3229
    :cond_5d
    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    const/4 v2, 0x1

    .line 3230
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    .line 3231
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    .line 3232
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    .line 3233
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3238
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_a7

    .line 3240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deferring FGS notification in legacy app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3241
    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3240
    const-string v2, "ActivityManager"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    :cond_a7
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mPostDeferredFGSNotifications:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startForegroundServiceDelegateLocked(Landroid/app/ForegroundServiceDelegationOptions;Landroid/content/ServiceConnection;)Z
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 9494
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startForegroundServiceDelegateLocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/ForegroundServiceDelegationOptions;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9495
    invoke-virtual {v1}, Landroid/app/ForegroundServiceDelegationOptions;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 9496
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_2b
    const/4 v5, 0x0

    if-ltz v3, :cond_62

    .line 9497
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ForegroundServiceDelegation;

    .line 9498
    iget-object v6, v6, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    invoke-virtual {v6, v1}, Landroid/app/ForegroundServiceDelegationOptions;->isSameDelegate(Landroid/app/ForegroundServiceDelegationOptions;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 9499
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startForegroundServiceDelegate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/ForegroundServiceDelegationOptions;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already exists, multiple connections are not allowed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5f
    add-int/lit8 v3, v3, -0x1

    goto :goto_2b

    .line 9504
    :cond_62
    iget v10, v1, Landroid/app/ForegroundServiceDelegationOptions;->mClientPid:I

    .line 9505
    iget v3, v1, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    .line 9506
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 9507
    iget-object v9, v1, Landroid/app/ForegroundServiceDelegationOptions;->mClientPackageName:Ljava/lang/String;

    .line 9509
    invoke-virtual {v0, v10, v3, v9}, Lcom/android/server/am/ActiveServices;->canStartForegroundServiceLocked(IILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7b

    .line 9510
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "startForegroundServiceDelegateLocked aborted, app is in the background"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 9515
    :cond_7b
    iget-object v6, v1, Landroid/app/ForegroundServiceDelegationOptions;->mClientAppThread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_86

    .line 9518
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    goto :goto_9f

    .line 9520
    :cond_86
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v7

    .line 9521
    :try_start_8b
    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v8, v10}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    if-eqz v8, :cond_9d

    .line 9523
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    goto :goto_9d

    :catchall_9a
    move-exception v0

    goto/16 :goto_1f5

    .line 9525
    :cond_9d
    :goto_9d
    monitor-exit v7
    :try_end_9e
    .catchall {:try_start_8b .. :try_end_9e} :catchall_9a

    move-object v7, v8

    :goto_9f
    if-eqz v7, :cond_1ca

    move v11, v3

    .line 9534
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 9535
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move v8, v4

    const/4 v4, 0x0

    move v13, v5

    const/4 v5, 0x0

    move-object v14, v6

    const/4 v6, -0x1

    move-object v15, v7

    const/4 v7, 0x0

    move/from16 v16, v8

    const/4 v8, 0x0

    move/from16 v17, v13

    const/4 v13, 0x1

    move-object/from16 v20, v14

    const/4 v14, 0x0

    move-object/from16 v21, v15

    const/4 v15, 0x0

    move/from16 v22, v16

    const/16 v16, 0x0

    move-object/from16 v17, v2

    move-object v2, v0

    move-object/from16 v0, v20

    move-object/from16 v20, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v21

    .line 9536
    invoke-virtual/range {v2 .. v19}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLandroid/app/ForegroundServiceDelegationOptions;ZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v4

    move-object v5, v3

    move-object/from16 v3, v17

    if-eqz v4, :cond_de

    .line 9543
    iget-object v4, v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v4, :cond_e1

    :cond_de
    const/4 v13, 0x0

    goto/16 :goto_1c1

    :cond_e1
    const/4 v6, 0x0

    .line 9550
    invoke-virtual {v4, v1, v0, v10, v6}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    const/4 v8, 0x1

    .line 9551
    iput-boolean v8, v4, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    .line 9552
    new-instance v12, Lcom/android/server/am/ForegroundServiceDelegation;

    move-object/from16 v0, p2

    invoke-direct {v12, v3, v0}, Lcom/android/server/am/ForegroundServiceDelegation;-><init>(Landroid/app/ForegroundServiceDelegationOptions;Landroid/content/ServiceConnection;)V

    .line 9554
    iput-object v12, v4, Lcom/android/server/am/ServiceRecord;->mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

    .line 9555
    iget-object v6, v2, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v12, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9556
    iget-object v6, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v6, v4, v8}, Lcom/android/server/am/ProcessStateController;->setIsForegroundService(Lcom/android/server/am/psc/ServiceRecordInternal;Z)V

    .line 9557
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    .line 9558
    iget-object v6, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget v3, v3, Landroid/app/ForegroundServiceDelegationOptions;->mForegroundServiceTypes:I

    invoke-virtual {v6, v4, v3}, Lcom/android/server/am/ProcessStateController;->setForegroundServiceType(Lcom/android/server/am/psc/ServiceRecordInternal;I)V

    .line 9559
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->updateOomAdjSeq()V

    .line 9560
    sget-object v6, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    const/4 v7, 0x0

    move-object v3, v5

    move-object v5, v4

    move-object v4, v3

    move-object v15, v1

    move-object v1, v9

    move v3, v11

    move-object v9, v0

    move-object v0, v2

    move v2, v10

    move-object/from16 v10, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;Z)V

    .line 9562
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 9563
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3, v2, v5}, Lcom/android/server/am/ProcessStateController;->startService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)Z

    .line 9565
    invoke-virtual {v0, v2, v8}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    .line 9567
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 9568
    :try_start_133
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_14b

    .line 9570
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 9571
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    .line 9572
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 9570
    invoke-virtual {v3, v8, v4, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_14b

    :catchall_149
    move-exception v0

    goto :goto_1bf

    .line 9574
    :cond_14b
    :goto_14b
    monitor-exit v2
    :try_end_14c
    .catchall {:try_start_133 .. :try_end_14c} :catchall_149

    .line 9576
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 9577
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 9576
    invoke-virtual {v2, v11, v1, v3}, Lcom/android/server/am/BatteryStatsService;->noteServiceStartRunning(ILjava/lang/String;Ljava/lang/String;)V

    .line 9578
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v24

    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v5, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v33, 0x0

    const/16 v34, -0x1

    const/16 v25, 0x4c

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v23, v1

    move/from16 v26, v2

    move-object/from16 v27, v3

    invoke-virtual/range {v23 .. v34}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    .line 9582
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActiveServices;->registerAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 9583
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    monitor-enter v1

    .line 9584
    :try_start_184
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    iget-object v3, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13, v5}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logForegroundServiceStart(IILcom/android/server/am/ServiceRecord;)V

    .line 9585
    monitor-exit v1
    :try_end_18f
    .catchall {:try_start_184 .. :try_end_18f} :catchall_1bc

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v5

    const/4 v5, 0x0

    .line 9586
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V

    if-eqz v9, :cond_1a7

    .line 9594
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;

    invoke-direct {v3, v9, v10, v12}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;-><init>(Landroid/content/ServiceConnection;Landroid/content/ComponentName;Lcom/android/server/am/ForegroundServiceDelegation;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9598
    :cond_1a7
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->signalForegroundServiceObserversLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 9599
    iget v0, v1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v0, :cond_1bb

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v0, :cond_1bb

    .line 9600
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 9601
    invoke-virtual {v1, v8}, Lcom/android/server/am/ServiceRecord;->postNotification(Z)V

    :cond_1bb
    return v8

    :catchall_1bc
    move-exception v0

    .line 9585
    :try_start_1bd
    monitor-exit v1
    :try_end_1be
    .catchall {:try_start_1bd .. :try_end_1be} :catchall_1bc

    throw v0

    .line 9574
    :goto_1bf
    :try_start_1bf
    monitor-exit v2
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_149

    throw v0

    .line 9544
    :goto_1c1
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "startForegroundServiceDelegateLocked retrieveServiceLocked returns null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_1ca
    move v0, v10

    move-object v10, v2

    move v2, v0

    move-object v0, v6

    .line 9528
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find app for caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when startForegroundServiceDelegateLocked "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9525
    :goto_1f5
    :try_start_1f5
    monitor-exit v7
    :try_end_1f6
    .catchall {:try_start_1f5 .. :try_end_1f6} :catchall_9a

    throw v0
.end method

.method public startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZILjava/lang/String;IZLjava/lang/String;)Landroid/content/ComponentName;
    .registers 40

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p3

    .line 1543
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1544
    :try_start_d
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v3

    const/4 v10, 0x1

    if-eqz v3, :cond_27

    .line 1546
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    .line 1547
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1546
    invoke-virtual {v3, v10, v4, v5, v6}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    goto :goto_27

    :catchall_24
    move-exception v0

    goto/16 :goto_128

    .line 1549
    :cond_27
    :goto_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_24

    const/4 v11, 0x0

    .line 1550
    iput-boolean v11, v1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 1552
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1553
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1554
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x63

    .line 1555
    invoke-static {v3, v13, v12, v2, v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1557
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v3, v13, v12, v2}, Lcom/android/server/am/BatteryStatsService;->noteServiceStartRunning(ILjava/lang/String;Ljava/lang/String;)V

    .line 1558
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_53

    .line 1559
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v3

    move v14, v3

    goto :goto_54

    :cond_53
    move v14, v11

    :goto_54
    if-nez v2, :cond_5f

    .line 1560
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v2

    move/from16 v26, v2

    goto :goto_61

    :cond_5f
    move/from16 v26, v11

    .line 1563
    :goto_61
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/4 v15, 0x6

    invoke-virtual {v2, v15}, Lcom/android/server/am/ProcessStateController;->startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object v16

    .line 1565
    :try_start_6a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZZI)Ljava/lang/String;

    move-result-object v2

    .line 1576
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v15}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    if-eqz v2, :cond_91

    .line 1579
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "!!"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_6a .. :try_end_87} :catchall_8d

    if-eqz v16, :cond_8c

    .line 1581
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/psc/BatchSession;->close()V

    :cond_8c
    return-object v0

    :catchall_8d
    move-exception v0

    move-object v1, v0

    goto/16 :goto_11d

    :cond_91
    if-eqz v16, :cond_96

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/psc/BatchSession;->close()V

    :cond_96
    const/4 v2, 0x2

    if-eqz v14, :cond_9c

    move/from16 v21, v2

    goto :goto_9e

    :cond_9c
    move/from16 v21, v10

    .line 1592
    :goto_9e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 1594
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_c8

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-nez v3, :cond_ad

    goto :goto_c8

    :cond_ad
    if-nez p9, :cond_c1

    .line 1596
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ba

    goto :goto_c1

    :cond_ba
    move/from16 v14, p6

    move-object/from16 v2, p7

    move/from16 v18, v10

    goto :goto_ca

    :cond_c1
    :goto_c1
    move/from16 v14, p6

    move/from16 v18, v2

    move-object/from16 v2, p7

    goto :goto_ca

    :cond_c8
    :goto_c8
    const/4 v2, 0x3

    goto :goto_c1

    .line 1599
    :goto_ca
    invoke-virtual {v0, v14, v2}, Lcom/android/server/am/ActiveServices;->getShortProcessNameForStats(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1600
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->getShortServiceNameForStats(Lcom/android/server/am/ServiceRecord;)Ljava/lang/String;

    move-result-object v20

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->mProcessStateOnRequest:I

    const-wide/16 v27, 0x0

    move-object/from16 v22, v12

    const/16 v12, 0x1dc

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v24, p8

    move-object/from16 v23, p10

    move/from16 v25, v2

    .line 1591
    invoke-static/range {v12 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IZILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIZJ)V

    .line 1609
    invoke-virtual {v1}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v2

    if-eqz v2, :cond_111

    if-eqz p5, :cond_111

    .line 1610
    iget-object v2, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_f8

    goto :goto_f9

    :cond_f8
    move v10, v11

    .line 1611
    :goto_f9
    iget-object v2, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1612
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    if-eqz v10, :cond_11a

    .line 1620
    invoke-virtual {v9}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    goto :goto_11a

    :cond_111
    if-nez p4, :cond_117

    .line 1622
    iget-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_11a

    .line 1623
    :cond_117
    invoke-virtual {v9, v1}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1626
    :cond_11a
    :goto_11a
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    :goto_11d
    if-eqz v16, :cond_127

    .line 1563
    :try_start_11f
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_122
    .catchall {:try_start_11f .. :try_end_122} :catchall_123

    goto :goto_127

    :catchall_123
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_127
    :goto_127
    throw v1

    .line 1549
    :goto_128
    :try_start_128
    monitor-exit v2
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_24

    throw v0
.end method

.method public final startServiceInnerLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IILjava/lang/String;IZZLandroid/app/BackgroundStartPrivileges;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v6, p3

    move/from16 v11, p7

    .line 1212
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object/from16 v5, p2

    invoke-interface {v1, v5, v6, v3, v4}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v1

    const/4 v12, 0x0

    .line 1214
    invoke-virtual {v0, v2, v6, v12}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    .line 1217
    invoke-virtual {v2}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v13

    .line 1218
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v2, v7, v8}, Lcom/android/server/am/ProcessStateController;->setServiceLastActivityTime(Lcom/android/server/am/psc/ServiceRecordInternal;J)V

    .line 1219
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/4 v14, 0x1

    invoke-virtual {v3, v2, v14}, Lcom/android/server/am/ProcessStateController;->setStartRequested(Lcom/android/server/am/psc/ServiceRecordInternal;Z)V

    .line 1220
    iput-boolean v12, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 1221
    iput-boolean v11, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 1222
    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    move-object v6, v1

    new-instance v1, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v4

    move/from16 v7, p3

    move-object/from16 v8, p5

    move/from16 v10, p6

    move-object/from16 v9, p10

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILjava/lang/String;Ljava/lang/String;I)V

    move v6, v7

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    invoke-virtual {v2}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v1

    if-nez v1, :cond_5f

    iget-boolean v1, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v1, :cond_59

    goto :goto_5f

    .line 1241
    :cond_59
    invoke-virtual {v2, v12}, Lcom/android/server/am/ServiceRecord;->updateAllowUiJobScheduling(Z)V

    move-object/from16 v9, p10

    goto :goto_7e

    .line 1237
    :cond_5f
    :goto_5f
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    move-result v1

    .line 1236
    invoke-static {v1, v6}, Lcom/android/server/am/ActivityManagerService;->doesReasonCodeAllowSchedulingUserInitiatedJobs(II)Z

    move-result v1

    if-nez v1, :cond_78

    .line 1238
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move/from16 v3, p4

    move-object/from16 v9, p10

    .line 1239
    invoke-virtual {v1, v6, v3, v9}, Lcom/android/server/am/ActivityManagerService;->canScheduleUserInitiatedJobs(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    goto :goto_7a

    :cond_76
    move v1, v12

    goto :goto_7b

    :cond_78
    move-object/from16 v9, p10

    :goto_7a
    move v1, v14

    .line 1238
    :goto_7b
    invoke-virtual {v2, v1}, Lcom/android/server/am/ServiceRecord;->updateAllowUiJobScheduling(Z)V

    :goto_7e
    if-eqz v11, :cond_c8

    .line 1246
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1247
    :try_start_87
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_9f

    .line 1249
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    .line 1250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1249
    invoke-virtual {v3, v14, v4, v7, v8}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_9f

    :catchall_9d
    move-exception v0

    goto :goto_c6

    .line 1252
    :cond_9f
    :goto_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_87 .. :try_end_a0} :catchall_9d

    .line 1253
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v15}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v16

    iget-object v1, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v25, 0x0

    const/16 v26, -0x1

    const/16 v17, 0x4c

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v18, v1

    move-object/from16 v19, v3

    invoke-virtual/range {v15 .. v26}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    goto :goto_c8

    .line 1252
    :goto_c6
    :try_start_c6
    monitor-exit v1
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_9d

    throw v0

    .line 1259
    :cond_c8
    :goto_c8
    iget v1, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v1

    if-nez p8, :cond_134

    if-nez v11, :cond_134

    .line 1261
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_134

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 1262
    invoke-virtual {v3, v4}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v3

    if-eqz v3, :cond_134

    .line 1263
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_103

    .line 1264
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v4

    const/16 v5, 0xb

    if-le v4, v5, :cond_f9

    goto :goto_103

    .line 1292
    :cond_f9
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_134

    :cond_101
    move v5, v14

    goto :goto_135

    .line 1277
    :cond_103
    :goto_103
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v3, :cond_10a

    .line 1281
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    .line 1283
    :cond_10a
    iget-object v3, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, v0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v3, v4, :cond_101

    .line 1285
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delaying start of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    iput-boolean v14, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 1288
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    :cond_134
    move v5, v12

    .line 1323
    :goto_135
    invoke-virtual/range {p9 .. p9}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v3

    if-eqz v3, :cond_140

    move-object/from16 v3, p9

    .line 1324
    invoke-virtual {v2, v3}, Lcom/android/server/am/ServiceRecord;->allowBgActivityStartsOnServiceStart(Landroid/app/BackgroundStartPrivileges;)V

    :cond_140
    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v4, p8

    move-object v3, v2

    move-object v10, v9

    move v9, v13

    move-object/from16 v2, p2

    .line 1326
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZILjava/lang/String;IZLjava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;ILandroid/app/BackgroundStartPrivileges;)Landroid/content/ComponentName;
    .registers 26

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    .line 958
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/am/ActiveServices;->startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;ILandroid/app/BackgroundStartPrivileges;ZILjava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;ILandroid/app/BackgroundStartPrivileges;ZILjava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    const/16 v20, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_48

    .line 975
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 982
    invoke-virtual {v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetSchedGroup()I

    move-result v1

    if-eqz v1, :cond_1d

    move v1, v3

    goto :goto_1f

    :cond_1d
    move/from16 v1, v20

    :goto_1f
    move v6, v1

    goto :goto_49

    .line 977
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when starting service "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    move v6, v3

    :goto_49
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v2

    move-object v2, v0

    move v0, v3

    move-object v3, v5

    move-object/from16 v8, p3

    move/from16 v11, p5

    move-object/from16 v9, p7

    move/from16 v12, p9

    move/from16 v5, p11

    move-object/from16 v7, p13

    move v10, v4

    move v14, v6

    move/from16 v6, p12

    move-object/from16 v4, p14

    .line 987
    invoke-virtual/range {v2 .. v19}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLandroid/app/ForegroundServiceDelegationOptions;ZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v15

    move v8, v14

    const/16 v16, 0x0

    if-nez v15, :cond_73

    return-object v16

    .line 993
    :cond_73
    iget-object v1, v15, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v1, :cond_87

    .line 994
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "!"

    iget-object v2, v15, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    if-eqz v2, :cond_80

    goto :goto_83

    .line 995
    :cond_80
    const-string/jumbo v2, "private to package"

    :goto_83
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1000
    :cond_87
    const-string/jumbo v2, "startService(): "

    invoke-static {v2, v1}, Lcom/android/server/am/ActiveServices;->traceInstant(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    const/4 v7, 0x0

    move-object/from16 v4, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v6, p10

    move v9, v0

    move-object v5, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    .line 1012
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;Z)V

    move-object v10, v1

    move v12, v3

    move-object v11, v4

    move-object v1, v5

    move v4, v2

    .line 1015
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v3, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController;->exists(I)Z

    move-result v2

    if-nez v2, :cond_c9

    .line 1016
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to start service with non-existent user! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_c9
    if-eqz p11, :cond_ce

    move/from16 v2, p12

    goto :goto_d2

    .line 1021
    :cond_ce
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_d2
    if-eqz p11, :cond_d7

    move-object/from16 v3, p13

    goto :goto_d9

    .line 1023
    :cond_d7
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1024
    :goto_d9
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-eqz p11, :cond_ee

    .line 1027
    :try_start_df
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_e3} :catch_ee

    const-wide/16 v13, 0x400

    move/from16 v7, p9

    :try_start_e7
    invoke-interface {v6, v3, v13, v14, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_ed
    .catch Landroid/os/RemoteException; {:try_start_e7 .. :try_end_ed} :catch_f0

    goto :goto_f0

    :catch_ee
    :cond_ee
    move/from16 v7, p9

    .line 1037
    :catch_f0
    :goto_f0
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v2}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLOSP(I)Z

    move-result v6

    if-nez v6, :cond_10c

    .line 1044
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10c

    .line 1045
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices;->isTempAllowedByAlarmClock(I)Z

    move-result v6

    if-nez v6, :cond_10c

    .line 1046
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10c

    move v7, v9

    goto :goto_10e

    :cond_10c
    move/from16 v7, v20

    :goto_10e
    if-eqz p6, :cond_164

    .line 1055
    invoke-virtual {v0, v1, v12}, Lcom/android/server/am/ActiveServices;->isBgFgsRestrictionEnabled(Lcom/android/server/am/ServiceRecord;I)Z

    move-result v6

    .line 1056
    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/ActiveServices;->logFgsBackgroundStart(Lcom/android/server/am/ServiceRecord;Z)V

    .line 1057
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedStart()Z

    move-result v13

    if-nez v13, :cond_164

    if-eqz v6, :cond_164

    .line 1058
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startForegroundService() not allowed due to mAllowStartForeground false: service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1061
    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->showFgsBgRestrictedNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 p6, v0

    move-object/from16 p7, v1

    move/from16 p12, v3

    move/from16 p13, v4

    move/from16 p8, v5

    move/from16 p9, v6

    move/from16 p10, v7

    move/from16 p11, v8

    .line 1063
    invoke-virtual/range {p6 .. p13}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V

    const-wide/32 v0, 0xa5fa937

    .line 1069
    invoke-static {v0, v1, v12}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_15e

    return-object v16

    .line 1070
    :cond_15e
    new-instance v0, Landroid/app/ForegroundServiceStartNotAllowedException;

    invoke-direct {v0, v2}, Landroid/app/ForegroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_164
    move-object v13, v0

    move-object v14, v1

    if-eqz p6, :cond_1c3

    .line 1079
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c3

    if-eq v0, v9, :cond_185

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c3

    .line 1097
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "!!"

    const-string v2, "foreground not allowed as per app op"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1089
    :cond_185
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startForegroundService not allowed due to app op: service "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from pid="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pkg="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v9

    move/from16 v0, v20

    goto :goto_1c7

    :cond_1c3
    move/from16 v0, p6

    move/from16 v17, v20

    :goto_1c7
    if-nez v7, :cond_1d1

    .line 1103
    invoke-virtual {v14}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v1

    if-nez v1, :cond_1d3

    if-nez v0, :cond_1d3

    :cond_1d1
    move v1, v0

    goto :goto_1d7

    :cond_1d3
    move v9, v0

    move v3, v5

    goto/16 :goto_256

    .line 1106
    :goto_1d7
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move v6, v1

    move v1, v2

    move-object v2, v3

    move v3, v5

    const/4 v5, 0x0

    move/from16 v18, v6

    const/4 v6, 0x0

    move/from16 v9, v18

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLOSP(ILjava/lang/String;IIZZZ)I

    move-result v0

    if-eqz v0, :cond_256

    .line 1109
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background start not allowed: service "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v14, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startFg?="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_255

    if-eqz v17, :cond_22f

    goto :goto_255

    :cond_22f
    if-eqz v7, :cond_234

    if-eqz v9, :cond_234

    return-object v16

    .line 1131
    :cond_234
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 1132
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "?"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app is in background uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_255
    :goto_255
    return-object v16

    :cond_256
    :goto_256
    const/16 v0, 0x1a

    if-ge v3, v0, :cond_25f

    if-eqz v9, :cond_25f

    move/from16 v7, v20

    goto :goto_260

    :cond_25f
    move v7, v9

    .line 1149
    :goto_260
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 1150
    :try_start_265
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1151
    monitor-exit v1
    :try_end_26e
    .catchall {:try_start_265 .. :try_end_26e} :catchall_2f7

    if-eqz v0, :cond_274

    .line 1153
    iget-object v1, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    move-object v5, v1

    goto :goto_275

    :cond_274
    move-object v5, v10

    :goto_275
    if-eqz v0, :cond_289

    .line 1155
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_289

    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v1

    if-nez v1, :cond_289

    .line 1156
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v0

    :goto_287
    move v6, v0

    goto :goto_28b

    :cond_289
    const/4 v0, -0x1

    goto :goto_287

    .line 1157
    :goto_28b
    invoke-virtual {v14}, Lcom/android/server/am/ServiceRecord;->updateProcessStateOnRequest()V

    const/4 v13, 0x0

    move-object v1, v14

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v9, v7

    move-object v3, v10

    move-object v2, v11

    move/from16 v11, p9

    move-object v7, v5

    move v10, v8

    move v5, v12

    move-object/from16 v12, p10

    move v8, v6

    move v6, v4

    move-object/from16 v4, p8

    .line 1161
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/am/ActiveServices;->deferServiceBringupIfFrozenLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IZZILandroid/app/BackgroundStartPrivileges;ZLandroid/app/IServiceConnection;)Z

    move-result v13

    move v11, v8

    move/from16 v20, v9

    move v8, v10

    move-object v10, v7

    if-eqz v13, :cond_2ad

    return-object v16

    :cond_2ad
    move v6, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    move/from16 v4, p5

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v7, p9

    .line 1174
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    move-result v3

    move v8, v6

    if-nez v3, :cond_2c4

    return-object v16

    :cond_2c4
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v3, p5

    move-object/from16 v9, p10

    move-object v5, v10

    move v6, v11

    move/from16 v7, v20

    move-object/from16 v10, p7

    .line 1183
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IILjava/lang/String;IZZLandroid/app/BackgroundStartPrivileges;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1187
    iget-object v1, v15, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_2f6

    .line 1188
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f6

    .line 1189
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f6

    .line 1190
    iget-object v0, v15, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    :cond_2f6
    return-object v0

    :catchall_2f7
    move-exception v0

    .line 1151
    :try_start_2f8
    monitor-exit v1
    :try_end_2f9
    .catchall {:try_start_2f8 .. :try_end_2f9} :catchall_2f7

    throw v0
.end method

.method public startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 29

    .line 947
    sget-object v10, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/am/ActiveServices;->startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;ILandroid/app/BackgroundStartPrivileges;ZILjava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public stopAllForegroundServicesLocked(ILjava/lang/String;)V
    .registers 15

    .line 604
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 605
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 606
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v1, :cond_49

    .line 608
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 609
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p1, v7, :cond_2f

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 610
    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 614
    :cond_2f
    invoke-virtual {v5}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v6

    if-eqz v6, :cond_46

    iget v6, v5, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    const/16 v7, 0x12d

    if-eq v6, v7, :cond_46

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 616
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 617
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 623
    :cond_49
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_4d
    if-ge v3, p1, :cond_63

    .line 629
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    .line 633
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;IIIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_63
    return-void
.end method

.method public stopForegroundServiceDelegateLocked(Landroid/app/ForegroundServiceDelegationOptions;)V
    .registers 6

    .line 9614
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    const-string v1, "ActivityManager"

    if-ltz v0, :cond_41

    .line 9615
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ForegroundServiceDelegation;

    iget-object v2, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    invoke-virtual {v2, p1}, Landroid/app/ForegroundServiceDelegationOptions;->isSameDelegate(Landroid/app/ForegroundServiceDelegationOptions;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 9616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopForegroundServiceDelegateLocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/ForegroundServiceDelegationOptions;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9617
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    goto :goto_42

    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_41
    const/4 v0, 0x0

    :goto_42
    if-eqz v0, :cond_4c

    .line 9622
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->updateOomAdjSeq()V

    const/4 p1, 0x0

    .line 9623
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    return-void

    .line 9625
    :cond_4c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "stopForegroundServiceDelegateLocked delegate does not exist "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9626
    invoke-virtual {p1}, Landroid/app/ForegroundServiceDelegationOptions;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9625
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopForegroundServiceDelegateLocked(Landroid/content/ServiceConnection;)V
    .registers 6

    .line 9638
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    const-string v1, "ActivityManager"

    if-ltz v0, :cond_3f

    .line 9639
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ForegroundServiceDelegation;

    .line 9640
    iget-object v3, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mConnection:Landroid/content/ServiceConnection;

    if-ne v3, p1, :cond_3c

    .line 9641
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopForegroundServiceDelegateLocked "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    .line 9642
    invoke-virtual {v2}, Landroid/app/ForegroundServiceDelegationOptions;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9641
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9643
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    goto :goto_40

    :cond_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_3f
    const/4 p1, 0x0

    :goto_40
    if-eqz p1, :cond_4a

    .line 9648
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->updateOomAdjSeq()V

    const/4 v0, 0x0

    .line 9649
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    return-void

    .line 9651
    :cond_4a
    const-string/jumbo p0, "stopForegroundServiceDelegateLocked delegate does not exist"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopInBackgroundLocked(I)V
    .registers 16

    .line 1729
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v0, :cond_d9

    .line 1732
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_17
    if-ltz v1, :cond_97

    .line 1733
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 1734
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, p1, :cond_94

    invoke-virtual {v4}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v5

    if-eqz v5, :cond_94

    .line 1735
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v9, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLOSP(ILjava/lang/String;IIZZZ)I

    move-result v5

    if-eqz v5, :cond_94

    if-nez v3, :cond_48

    .line 1739
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1741
    :cond_48
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 1742
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6, v5}, Lcom/android/server/am/EventLogTags;->writeAmStopIdleService(ILjava/lang/String;)V

    .line 1743
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1744
    const-string v7, "Stopping service due to app idle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    iget-object v7, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6, v7}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1746
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    iget-wide v8, v4, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 1748
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 1747
    invoke-static {v8, v9, v6}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1749
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    const-string v5, "ActivityManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1756
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 1758
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_94
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_97
    if-eqz v3, :cond_d9

    .line 1764
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessStateController;->startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object p1

    .line 1766
    :try_start_a3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    :goto_a9
    if-ltz v5, :cond_c0

    .line 1768
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    const/4 v7, 0x0

    .line 1769
    iput-boolean v7, v6, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 1770
    invoke-virtual {v0, v6}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1771
    invoke-virtual {p0, v6, v2}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_a9

    :catchall_bd
    move-exception v0

    move-object p0, v0

    goto :goto_cd

    :cond_c0
    if-lez v4, :cond_c7

    .line 1778
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V
    :try_end_c7
    .catchall {:try_start_a3 .. :try_end_c7} :catchall_bd

    :cond_c7
    if-eqz p1, :cond_d9

    .line 1781
    invoke-virtual {p1}, Lcom/android/server/am/psc/BatchSession;->close()V

    return-void

    :goto_cd
    if-eqz p1, :cond_d8

    .line 1764
    :try_start_cf
    invoke-virtual {p1}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d3

    goto :goto_d8

    :catchall_d3
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d8
    :goto_d8
    throw p0

    :cond_d9
    return-void
.end method

.method public final stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 4

    .line 4044
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->maybeStopShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4045
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4046
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/ProcessStateController;->stopService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)Z

    .line 4047
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 4048
    iget-boolean p1, p1, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz p1, :cond_18

    .line 4049
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    :cond_18
    return-void
.end method

.method public stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)I
    .registers 29

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    .line 1697
    iget-object v1, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v0, :cond_e

    if-eqz v1, :cond_11

    :cond_e
    move-object/from16 v0, p2

    goto :goto_42

    .line 1699
    :cond_11
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find app for caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    .line 1701
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$Injector;->getCallingPid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when stopping service "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1706
    :goto_42
    iget-object v1, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    .line 1708
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Injector;->getCallingPid()I

    move-result v10

    iget-object v1, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Injector;->getCallingUid()I

    move-result v11

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v8, p3

    move/from16 v12, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v4, p8

    move-object v3, v0

    .line 1706
    invoke-virtual/range {v2 .. v19}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLandroid/app/ForegroundServiceDelegationOptions;ZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_97

    .line 1711
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v3, :cond_95

    .line 1712
    iget-object v3, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v3

    .line 1714
    :try_start_7e
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_8c

    .line 1716
    iget-object v0, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    return v0

    :catchall_8c
    move-exception v0

    iget-object v1, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    .line 1717
    throw v0

    :cond_95
    const/4 v0, -0x1

    return v0

    :cond_97
    return v1
.end method

.method public final stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 12

    .line 1651
    const-string/jumbo v0, "stopService(): "

    invoke-static {v0, p1}, Lcom/android/server/am/ActiveServices;->traceInstant(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    const-wide/16 v1, 0x40

    .line 1653
    :try_start_8
    const-string/jumbo v0, "stopServiceLocked()"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1654
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_1c

    const/4 p0, 0x1

    .line 1661
    iput-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_19

    .line 1686
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_19
    move-exception v0

    move-object p0, v0

    goto :goto_7a

    .line 1665
    :cond_1c
    :try_start_1c
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->maybeStopShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1666
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->maybeStopFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1668
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1669
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1670
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x63

    const/4 v6, 0x2

    .line 1671
    invoke-static {v5, v0, v3, v4, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1673
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v5, v0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopRunning(ILjava/lang/String;Ljava/lang/String;)V

    .line 1674
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/android/server/am/ProcessStateController;->setStartRequested(Lcom/android/server/am/psc/ServiceRecordInternal;Z)V

    .line 1675
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_69

    .line 1676
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_52
    .catchall {:try_start_1c .. :try_end_52} :catchall_19

    .line 1677
    :try_start_52
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    .line 1678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1677
    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 1679
    monitor-exit v4

    goto :goto_69

    :catchall_65
    move-exception v0

    move-object p0, v0

    monitor-exit v4
    :try_end_68
    .catchall {:try_start_52 .. :try_end_68} :catchall_65

    :try_start_68
    throw p0

    .line 1681
    :cond_69
    :goto_69
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 1683
    const-string/jumbo v8, "stopService"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZLjava/lang/String;)V
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_19

    .line 1686
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_7a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1687
    throw p0
.end method

.method public stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .registers 11

    .line 1834
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    const/4 p1, 0x0

    if-eqz v2, :cond_ca

    if-ltz p3, :cond_61

    .line 1840
    invoke-virtual {v2, p3, p1, p1}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 1842
    :cond_13
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 1843
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1844
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    if-ne v0, p2, :cond_13

    .line 1851
    :cond_28
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result p2

    if-eq p2, p3, :cond_2f

    return p1

    .line 1855
    :cond_2f
    iget-object p2, v2, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_61

    .line 1856
    const-string p2, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopServiceToken startId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is last, but have "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v2, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 1857
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " remaining args"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1856
    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_61
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActiveServices;->maybeStopShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1863
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActiveServices;->maybeStopFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1865
    iget-object p2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1866
    iget-object p3, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 1867
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x63

    const/4 v3, 0x2

    .line 1868
    invoke-static {v1, p2, p3, v0, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1870
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v1, p2, p3, v0}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopRunning(ILjava/lang/String;Ljava/lang/String;)V

    .line 1871
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p2, v2, p1}, Lcom/android/server/am/ProcessStateController;->setStartRequested(Lcom/android/server/am/psc/ServiceRecordInternal;Z)V

    .line 1872
    iget-object p2, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz p2, :cond_ad

    .line 1873
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object p2, p2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1874
    :try_start_96
    iget-object p3, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 1875
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1874
    invoke-virtual {p3, p1, v0, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 1876
    monitor-exit p2

    goto :goto_ad

    :catchall_a9
    move-exception v0

    move-object p0, v0

    monitor-exit p2
    :try_end_ac
    .catchall {:try_start_96 .. :try_end_ac} :catchall_a9

    throw p0

    .line 1878
    :cond_ad
    :goto_ad
    iput-boolean p1, v2, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 1879
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService$Injector;->clearCallingIdentity()J

    move-result-wide p1

    const/4 v5, 0x0

    .line 1880
    const-string/jumbo v6, "stopServiceToken"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZLjava/lang/String;)V

    .line 1881
    iget-object p0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_ca
    return p1
.end method

.method public systemServicesReady()V
    .registers 3

    .line 805
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices;->getAppStateTracker()Lcom/android/server/AppStateTracker;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;-><init>(Lcom/android/server/am/ActiveServices;)V

    invoke-interface {v0, v1}, Lcom/android/server/AppStateTracker;->addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V

    .line 806
    const-class v0, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mAppWidgetManagerInternal:Landroid/appwidget/AppWidgetManagerInternal;

    .line 807
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices;->setAllowListWhileInUsePermissionInFgs()V

    .line 808
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices;->initSystemExemptedFgsTypePermission()V

    .line 809
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices;->initMediaProjectFgsTypeCustomPermission()V

    return-void
.end method

.method public unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;)V
    .registers 15

    .line 4789
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz p1, :cond_77

    .line 4796
    :try_start_a
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v0, 0x0

    if-eqz p2, :cond_5e

    .line 4798
    iget-object v3, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_56

    if-nez v5, :cond_56

    .line 4802
    iget-object v3, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_53

    sub-int/2addr v3, v4

    :goto_25
    if-ltz v3, :cond_42

    .line 4803
    :try_start_27
    iget-object v6, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_3f

    .line 4804
    invoke-virtual {v6}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetSchedGroup()I

    move-result v6
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_3b

    if-eqz v6, :cond_3f

    move v9, v4

    goto :goto_43

    :catchall_3b
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_6f

    :cond_3f
    add-int/lit8 v3, v3, -0x1

    goto :goto_25

    :cond_42
    move v9, v0

    :goto_43
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    .line 4811
    :try_start_48
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZI)Z
    :try_end_4b
    .catch Landroid/os/TransactionTooLargeException; {:try_start_48 .. :try_end_4b} :catch_51
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4d

    move-object v3, v6

    goto :goto_60

    :catchall_4d
    move-exception v0

    move-object v3, v6

    :goto_4f
    move-object p1, v0

    goto :goto_6f

    :catch_51
    move-object v3, v6

    goto :goto_60

    :catchall_53
    move-exception v0

    move-object v3, p0

    goto :goto_4f

    :cond_56
    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    .line 4819
    :try_start_59
    iput-boolean v4, v8, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    goto :goto_60

    :catchall_5c
    move-exception v0

    goto :goto_4f

    :cond_5e
    move-object v3, p0

    move-object v7, p1

    .line 4824
    :goto_60
    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result p0

    if-eqz p0, :cond_67

    const/4 v0, 0x5

    :cond_67
    move v8, v0

    const/4 v6, 0x0

    move-object v4, v7

    const/4 v7, 0x0

    .line 4823
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_5c

    goto :goto_78

    .line 4827
    :goto_6f
    iget-object p0, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    .line 4828
    throw p1

    :cond_77
    move-object v3, p0

    .line 4827
    :goto_78
    iget-object p0, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    return-void
.end method

.method public unbindServiceConnectionsLocked(Landroid/os/IBinder;Ljava/util/ArrayList;)Z
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    .line 4609
    :cond_2
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6f

    .line 4610
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4611
    invoke-virtual {p0, v2, v3, v3, v4}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)I

    move-result v5

    .line 4612
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_41

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_41

    .line 4614
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " not removed for binder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4615
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4618
    :cond_41
    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_2

    .line 4620
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4621
    iget-boolean v8, v7, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    if-eqz v8, :cond_52

    .line 4622
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    :cond_52
    const/high16 v8, 0x8000000

    .line 4625
    invoke-virtual {v2, v8}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 4628
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v2, v7, v4}, Lcom/android/server/am/ProcessStateController;->setTreatLikeActivity(Lcom/android/server/am/ProcessServiceRecord;Z)V

    .line 4629
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v6, v4, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    :cond_66
    if-nez v5, :cond_2

    .line 4633
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v6}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    move v1, v4

    goto :goto_2

    :cond_6f
    return v1
.end method

.method public unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    .registers 11

    .line 4643
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4645
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 4647
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unbind failed: could not find connection for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4648
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4647
    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4652
    :cond_2a
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService$Injector;->getCallingPid()I

    move-result p1

    .line 4653
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v3

    const-wide/16 v5, 0x40

    .line 4654
    :try_start_3c
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/android/server/am/ProcessStateController;->startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object v7
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_a1

    .line 4656
    :try_start_45
    invoke-static {v5, v6}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 4658
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_76

    .line 4659
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ConnectionRecord;

    .line 4660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ConnectionRecord;->clientProcessName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7a

    :catchall_74
    move-exception p1

    goto :goto_af

    .line 4662
    :cond_76
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 4664
    :goto_7a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unbindServiceLocked: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v6, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4667
    :cond_8f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActiveServices;->unbindServiceConnectionsLocked(Landroid/os/IBinder;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 4674
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V
    :try_end_9b
    .catchall {:try_start_45 .. :try_end_9b} :catchall_74

    :cond_9b
    if-eqz v7, :cond_a3

    .line 4677
    :try_start_9d
    invoke-virtual {v7}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a1

    goto :goto_a3

    :catchall_a1
    move-exception p1

    goto :goto_ba

    .line 4678
    :cond_a3
    :goto_a3
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 4679
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :goto_af
    if-eqz v7, :cond_b9

    .line 4654
    :try_start_b1
    invoke-virtual {v7}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b5

    goto :goto_b9

    :catchall_b5
    move-exception v0

    :try_start_b6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b9
    :goto_b9
    throw p1
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_a1

    .line 4678
    :goto_ba
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 4679
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityManagerService$Injector;->restoreCallingIdentity(J)V

    .line 4680
    throw p1
.end method

.method public final unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 3

    .line 3385
    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3386
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$AppOpCallback;

    if-eqz v0, :cond_1c

    .line 3388
    invoke-virtual {v0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->unregisterLocked()V

    .line 3389
    invoke-virtual {v0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->isObsoleteLocked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3390
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1c
    return-void
.end method

.method public final unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z
    .registers 8

    if-nez p3, :cond_c

    .line 5838
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_c

    const/4 p0, 0x0

    return p0

    .line 5844
    :cond_c
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1a

    .line 5845
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p2, v0, :cond_1d

    .line 5846
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    :cond_1d
    if-eqz p3, :cond_22

    .line 5849
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 5851
    :cond_22
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public unscheduleShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 4

    .line 3607
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mShortFGSAnrTimer:Lcom/android/server/am/ActiveServices$ServiceAnrTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)Z

    .line 3608
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3610
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v0, 0x4c

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V
    .registers 4

    const/4 p0, 0x0

    .line 4033
    iput-boolean p0, p1, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    .line 4034
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_9
    if-ltz p0, :cond_19

    .line 4035
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v1

    .line 4036
    iget-boolean v1, v1, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v1, :cond_16

    .line 4037
    iput-boolean v0, p1, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    return-void

    :cond_16
    add-int/lit8 p0, p0, -0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public updateForegroundApps(Lcom/android/server/am/ActiveServices$ServiceMap;)V
    .registers 16

    .line 1980
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1981
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    if-eqz p1, :cond_99

    .line 1986
    iget-object v3, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mPendingRemoveForegroundApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1987
    iget-object v3, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const-wide v5, 0x7fffffffffffffffL

    move-wide v7, v5

    :goto_1f
    if-ltz v3, :cond_69

    .line 1988
    iget-object v9, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1989
    iget-wide v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_50

    .line 1990
    invoke-virtual {p0, v9, v1, v2}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v10

    if-eqz v10, :cond_49

    .line 1993
    iget-object v9, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mPendingRemoveForegroundApps:Ljava/util/ArrayList;

    iget-object v10, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    iput-boolean v4, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    goto :goto_66

    :catchall_47
    move-exception p0

    goto :goto_a1

    .line 1997
    :cond_49
    iget-wide v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v12, v10, v7

    if-gez v12, :cond_50

    move-wide v7, v10

    .line 2001
    :cond_50
    iget-boolean v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v10, :cond_66

    .line 2004
    iget v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget-object v11, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/ActiveServices;->isForegroundServiceAllowedInBackgroundRestricted(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5f

    goto :goto_66

    .line 2014
    :cond_5f
    iget v10, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget-object v9, v9, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v10, v9}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    :cond_66
    :goto_66
    add-int/lit8 v3, v3, -0x1

    goto :goto_1f

    .line 2018
    :cond_69
    iget-object p0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mPendingRemoveForegroundApps:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v4

    :goto_70
    if-ltz p0, :cond_80

    .line 2019
    iget-object v1, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mPendingRemoveForegroundApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, -0x1

    goto :goto_70

    :cond_80
    const/4 p0, 0x2

    .line 2021
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeMessages(I)V

    cmp-long v1, v7, v5

    if-gez v1, :cond_99

    .line 2025
    invoke-virtual {p1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2027
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v7, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v7, v1

    .line 2026
    invoke-virtual {p1, p0, v7, v8}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_99
    const/4 p0, 0x0

    .line 2030
    iput-boolean p0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 2031
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_6 .. :try_end_9d} :catchall_47

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_a1
    :try_start_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_47

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateNumForegroundServicesLocked()V
    .registers 2

    .line 9436
    sget-object v0, Lcom/android/server/am/ActiveServices;->sNumForegroundServices:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getNumForegroundServices()Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public updateScreenStateLocked(Z)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2065
    iget-boolean v2, v0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    if-eq v2, v1, :cond_8f

    .line 2066
    iput-boolean v1, v0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    if-eqz v1, :cond_8f

    .line 2071
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2073
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_18
    if-ltz v3, :cond_8f

    .line 2074
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 2077
    iget-object v6, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v4

    const/4 v9, 0x0

    const-wide v10, 0x7fffffffffffffffL

    :goto_2f
    const-wide/16 v12, 0x0

    if-ltz v6, :cond_7a

    .line 2078
    iget-object v14, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    const-wide v15, 0x7fffffffffffffffL

    .line 2079
    iget-wide v7, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    cmp-long v7, v7, v12

    if-nez v7, :cond_4f

    .line 2080
    iget-boolean v7, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v7, :cond_77

    .line 2081
    iput-boolean v4, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 2082
    iput-wide v1, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    goto :goto_77

    .line 2085
    :cond_4f
    iget-boolean v7, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v7, :cond_5f

    iget-wide v7, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iget-wide v12, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    cmp-long v7, v7, v12

    if-nez v7, :cond_5f

    .line 2090
    iput-wide v1, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v1, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 2092
    :cond_5f
    invoke-virtual {v0, v14, v1, v2}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 2095
    iget-object v7, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v8, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    iput-boolean v4, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    move v9, v4

    goto :goto_77

    .line 2099
    :cond_70
    iget-wide v7, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v12, v7, v10

    if-gez v12, :cond_77

    move-wide v10, v7

    :cond_77
    :goto_77
    add-int/lit8 v6, v6, -0x1

    goto :goto_2f

    :cond_7a
    const-wide v15, 0x7fffffffffffffffL

    if-eqz v9, :cond_85

    .line 2107
    invoke-virtual {v0, v5, v12, v13}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_8c

    :cond_85
    cmp-long v6, v10, v15

    if-gez v6, :cond_8c

    .line 2109
    invoke-virtual {v0, v5, v10, v11}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    :cond_8c
    :goto_8c
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    :cond_8f
    return-void
.end method

.method public updateServiceApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 6

    .line 7973
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7974
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz p0, :cond_35

    .line 7976
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 7978
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_18
    if-ltz v0, :cond_35

    .line 7979
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 7980
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 7981
    iput-object p1, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 7982
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iput-object p1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_35
    return-void
.end method

.method public final updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    .registers 13

    const/4 v0, 0x0

    if-eqz p2, :cond_10

    .line 4072
    iget-object p2, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p2, p2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_10

    .line 4073
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result p2

    if-nez p2, :cond_10

    return v0

    .line 4081
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    move v2, v0

    :goto_17
    if-ltz p2, :cond_5b

    if-nez v2, :cond_5b

    .line 4082
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    .line 4083
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v3

    .line 4084
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_28
    if-ltz v4, :cond_58

    if-nez v2, :cond_58

    .line 4085
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 4086
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_37
    if-ltz v6, :cond_55

    .line 4087
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 4088
    iget-object v7, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_52

    iget-object v8, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-ne v7, v8, :cond_4a

    goto :goto_52

    .line 4092
    :cond_4a
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v7

    if-eqz v7, :cond_52

    move v2, v1

    goto :goto_55

    :cond_52
    :goto_52
    add-int/lit8 v6, v6, -0x1

    goto :goto_37

    :cond_55
    :goto_55
    add-int/lit8 v4, v4, -0x1

    goto :goto_28

    :cond_58
    add-int/lit8 p2, p2, -0x1

    goto :goto_17

    .line 4099
    :cond_5b
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result p2

    if-eq v2, p2, :cond_73

    .line 4100
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p2, p1, v2}, Lcom/android/server/am/ProcessStateController;->setHasClientActivities(Lcom/android/server/am/ProcessServiceRecord;Z)V

    if-eqz p3, :cond_72

    .line 4102
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    :cond_72
    return v1

    :cond_73
    return v0
.end method

.method public updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    .line 4055
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v4

    if-ge v2, v4, :cond_35

    .line 4056
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v4

    .line 4057
    iget-object v4, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_32

    .line 4058
    iget-object v5, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-ne v4, v5, :cond_1b

    goto :goto_32

    :cond_1b
    if-nez v3, :cond_23

    .line 4061
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    goto :goto_2a

    .line 4062
    :cond_23
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    goto :goto_32

    .line 4065
    :cond_2a
    :goto_2a
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4066
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_35
    return-void
.end method

.method public final updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .registers 11

    .line 3591
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    move v6, v5

    :goto_a
    if-ltz v0, :cond_2b

    .line 3592
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    .line 3593
    invoke-virtual {v2}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v3

    if-nez v3, :cond_1a

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v3, :cond_28

    .line 3595
    :cond_1a
    invoke-virtual {v2}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result v3

    or-int/2addr v3, v5

    .line 3596
    invoke-virtual {v2}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result v2

    move v4, v1

    if-nez v2, :cond_27

    move v6, v4

    :cond_27
    move v5, v3

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 3601
    :cond_2b
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;ZIZZ)V

    .line 3603
    invoke-virtual {p1, v4}, Lcom/android/server/am/ProcessServiceRecord;->setHasReportedForegroundServices(Z)V

    return-void
.end method

.method public updateServiceGroupLocked(Landroid/app/IServiceConnection;II)V
    .registers 7

    .line 4573
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4575
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_50

    .line 4580
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_14
    if-ltz p1, :cond_4f

    .line 4581
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 4582
    iget-object v0, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_4c

    .line 4583
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4c

    .line 4584
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    .line 4585
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    if-lez p2, :cond_3a

    .line 4587
    invoke-virtual {v0, p2}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->setConnectionGroup(I)V

    .line 4588
    invoke-virtual {v0, p3}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->setConnectionImportance(I)V

    goto :goto_4c

    .line 4590
    :cond_3a
    invoke-virtual {v0, v2}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->setConnectionGroup(I)V

    .line 4591
    invoke-virtual {v0, v2}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->setConnectionImportance(I)V

    goto :goto_4c

    :cond_41
    if-lez p2, :cond_48

    .line 4595
    iput p2, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 4596
    iput p3, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    goto :goto_4c

    .line 4598
    :cond_48
    iput v2, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 4599
    iput v2, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    :cond_4c
    :goto_4c
    add-int/lit8 p1, p1, -0x1

    goto :goto_14

    :cond_4f
    return-void

    .line 4577
    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not find connection for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4578
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final validateForegroundServiceType(Lcom/android/server/am/ServiceRecord;III)Landroid/util/Pair;
    .registers 12

    .line 2905
    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->getDefaultPolicy()Landroid/app/ForegroundServiceTypePolicy;

    move-result-object v0

    .line 2907
    invoke-virtual {v0, p2, p3}, Landroid/app/ForegroundServiceTypePolicy;->getForegroundServiceTypePolicyInfo(II)Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    move-result-object v6

    .line 2908
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 2909
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    .line 2910
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forStart()Z

    move-result v5

    .line 2908
    invoke-virtual/range {v0 .. v6}, Landroid/app/ForegroundServiceTypePolicy;->checkForegroundServiceTypePolicy(Landroid/content/Context;Ljava/lang/String;IIZLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;)I

    move-result p0

    const/4 p3, 0x2

    .line 2912
    const-string v0, " code="

    const-string v1, "ActivityManager"

    const-string v2, " callerApp="

    const-string v3, "Starting FGS with type "

    const-string v4, " targetSDK="

    if-eq p0, p3, :cond_125

    const/4 p3, 0x3

    if-eq p0, p3, :cond_c9

    const/4 p3, 0x4

    const-string p4, ""

    const-string v5, " and the app must be in the eligible state/exemptions to access the foreground only permission"

    if-eq p0, p3, :cond_7e

    const/4 p3, 0x5

    if-eq p0, p3, :cond_3a

    goto/16 :goto_158

    .line 2952
    :cond_3a
    new-instance p3, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2953
    invoke-static {p2}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requires permissions: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2957
    invoke-virtual {v6}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->toPermissionString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    invoke-virtual {v6}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->hasForegroundOnlyPermission()Z

    move-result p1

    if-eqz p1, :cond_72

    move-object p4, v5

    .line 2960
    :cond_72
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_159

    .line 2939
    :cond_7e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2940
    invoke-static {p2}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requiredPermissions="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2944
    invoke-virtual {v6}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->toPermissionString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2945
    invoke-virtual {v6}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->hasForegroundOnlyPermission()Z

    move-result p1

    if-eqz p1, :cond_ba

    move-object p4, v5

    .line 2947
    :cond_ba
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2948
    invoke-static {v1, p1}, Landroid/util/Slog;->wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_158

    :cond_c9
    const/4 p3, -0x1

    if-ne p4, p3, :cond_f3

    if-nez p2, :cond_f3

    .line 2925
    new-instance p3, Landroid/app/MissingForegroundServiceTypeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Starting FGS without a type  callerApp="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/app/MissingForegroundServiceTypeException;-><init>(Ljava/lang/String;)V

    goto :goto_159

    .line 2930
    :cond_f3
    new-instance p3, Landroid/app/InvalidForegroundServiceTypeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2932
    invoke-static {p2}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has been prohibited"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/app/InvalidForegroundServiceTypeException;-><init>(Ljava/lang/String;)V

    goto :goto_159

    .line 2914
    :cond_125
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2915
    invoke-static {p2}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2919
    invoke-static {v1, p1}, Landroid/util/Slog;->wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_158
    const/4 p3, 0x0

    .line 2966
    :goto_159
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final verifyPackage(Ljava/lang/String;I)Z
    .registers 4

    if-eqz p2, :cond_16

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_7

    goto :goto_16

    .line 9465
    :cond_7
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    .line 9466
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 9465
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method public final withinFgsDeferRateLimit(Lcom/android/server/am/ServiceRecord;J)Z
    .registers 8

    .line 2875
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    return v1

    .line 2883
    :cond_8
    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2884
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralEligible:Landroid/util/SparseLongArray;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p0

    cmp-long p0, p2, p0

    if-gez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v1
.end method
