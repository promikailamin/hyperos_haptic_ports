.class public Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/StateChangedListener;
.implements Lcom/android/server/job/JobCompletedListener;


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field public static final QUOTA_TRACKER_CATEGORY_ANR:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_TIMEOUT_EJ:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_TIMEOUT_REG:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_TIMEOUT_TOTAL:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_TIMEOUT_UIJ:Lcom/android/server/utils/quota/Category;

.field public static sElapsedRealtimeClock:Ljava/time/Clock;

.field public static final sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sInitialJobEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sInitialJobEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sInitialJwiEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sInitialJwiEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sJobMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sJwiMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static sSystemClock:Ljava/time/Clock;

.field public static sUptimeMillisClock:Ljava/time/Clock;

.field public static sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field public final mBackingUpUids:Landroid/util/SparseBooleanArray;

.field final mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

.field public final mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mCancelJobDueToUserRemovalConsumer:Ljava/util/function/Consumer;

.field public final mChangedJobList:Landroid/util/ArraySet;

.field public final mCloudMediaProviderPackages:Landroid/util/SparseArray;

.field public final mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

.field public final mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

.field public final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field public final mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

.field public final mControllers:Ljava/util/List;

.field public final mDebuggableApps:Landroid/util/ArrayMap;

.field public final mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field public final mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

.field public final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field public final mIsUidActivePredicate:Ljava/util/function/Predicate;

.field public final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field final mJobRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/restrictions/JobRestriction;",
            ">;"
        }
    .end annotation
.end field

.field public final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field public final mJobStoreLoadedLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mJobTimeUpdater:Ljava/lang/Runnable;

.field public final mJobs:Lcom/android/server/job/JobStore;

.field public mLastCancelledJobIndex:I

.field public final mLastCancelledJobTimeElapsed:[J

.field public final mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

.field public mLastCompletedJobIndex:I

.field public final mLastCompletedJobTimeElapsed:[J

.field public final mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

.field public mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field public mLocalPM:Landroid/content/pm/PackageManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

.field public final mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

.field public final mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

.field public final mPermissionCache:Landroid/util/SparseArray;

.field public final mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

.field public final mQuotaController:Lcom/android/server/job/controllers/QuotaController;

.field public final mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

.field public final mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

.field public mReadyToRock:Z

.field public mReportedActive:Z

.field public final mRestrictiveControllers:Ljava/util/List;

.field public final mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

.field public final mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

.field public mStartedUsers:[I

.field public final mStorageController:Lcom/android/server/job/controllers/StorageController;

.field public final mTimeSetReceiver:Landroid/content/BroadcastReceiver;

.field public final mUidBiasOverride:Landroid/util/SparseIntArray;

.field public final mUidCapabilities:Landroid/util/SparseIntArray;

.field public final mUidObserver:Landroid/app/IUidObserver;

.field public final mUidProcStates:Landroid/util/SparseIntArray;

.field public final mUidToPackageCache:Landroid/util/SparseSetArray;

.field public final mUserVisibleJobObservers:Landroid/os/RemoteCallbackList;


# direct methods
.method public static synthetic $r8$lambda$2PWLLojenEoUVtVczAkQEiEcXT4(ILcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;Landroid/os/Handler;J)V
    .registers 8

    if-lez p0, :cond_16

    .line 5521
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    :cond_9
    add-int/lit8 p0, p0, -0x1

    move-object v1, p3

    move p3, p0

    move-object p0, v1

    .line 5526
    invoke-static/range {p0 .. p5}, Lcom/android/server/job/JobSchedulerService;->checkConstraintRunnableForTesting(Landroid/os/Handler;Lcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;IJ)Ljava/lang/Runnable;

    move-result-object p1

    .line 5525
    invoke-virtual {p0, p1, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 5522
    :cond_16
    :goto_16
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static synthetic $r8$lambda$3U3vQgA2VmCzhfx3x77hvFjIh-g(ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1a

    .line 6331
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1a

    .line 6332
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-ne p1, p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$EoOP1iqUWtKpr-nlVcT2lpIByWE(ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    .line 2232
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v0

    if-eq v0, p0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p1

    if-ne p1, p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$JaDLrweKec7z55BBNRKa011oxl4(ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1a

    .line 5964
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1a

    .line 5965
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-ne p1, p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$JjXiqpzW7ZRIZrywIAdtF0btMiE(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$updateMediaBackupExemptionLocked$7(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q16HuucOPC3Nu2dDmrkdR058M08(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->lambda$new$2(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TkIFiBnkkUUxdHLTB9ncTCF06WQ(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$new$0(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ulq0lH6hWnerIiBupp3Llq6NoQA(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$onBootPhase$4(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_qsiROTbT1bHvhwbOpkod1sMBXE(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->lambda$startControllerTrackingAsync$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$kFq7qP-VcLL1Ltl-JO7FUKK_Zis(Lcom/android/server/job/JobSchedulerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isUidActive(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sgF_JvJm-bvZP1qO91Stw_yEhBo(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$wLeviKUONkz7j6ey7Yx2IYF6OPU(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5

    .line 4019
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    if-ne v0, p0, :cond_1c

    .line 4020
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    .line 4021
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackingUpUids(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryStatsInternal(Lcom/android/server/job/JobSchedulerService;)Landroid/os/BatteryStatsInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChangedJobList(Lcom/android/server/job/JobSchedulerService;)Landroid/util/ArraySet;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCloudMediaProviderPackages(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectivityController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ConnectivityController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmJobTimeUpdater(Lcom/android/server/job/JobSchedulerService;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingJobQueue(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/PendingJobQueue;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingJobReasonsCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrefetchController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/PrefetchController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuotaTracker(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/utils/quota/CountQuotaTracker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidCapabilities(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidProcStates(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserVisibleJobObservers(Lcom/android/server/job/JobSchedulerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUserVisibleJobObservers:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcancelJob(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;III)Z
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/job/JobSchedulerService;->cancelJob(ILjava/lang/String;III)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcancelJobImplLocked(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZZIILjava/lang/String;)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUidLocked(Ljava/lang/String;IZZIILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelJobsForUid(Lcom/android/server/job/JobSchedulerService;IZZLjava/lang/String;IILjava/lang/String;)Z
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZZLjava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcancelJobsForUserLocked(Lcom/android/server/job/JobSchedulerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUserLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckChangedJobListLocked(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->checkChangedJobListLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckRunUserInitiatedJobsPermission(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->checkRunUserInitiatedJobsPermission(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetPendingJob(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;I)Landroid/app/job/JobInfo;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->getPendingJob(ILjava/lang/String;I)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPendingJobReasons(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;I)[I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReasons(ILjava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPendingJobReasonsHistory(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;I)Ljava/util/List;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReasonsHistory(ILjava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPendingJobs(Lcom/android/server/job/JobSchedulerService;I)Landroid/util/ArrayMap;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobs(I)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPendingJobsInNamespace(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;)Ljava/util/List;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->getPendingJobsInNamespace(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRunUserInitiatedJobsPermissionState(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->getRunUserInitiatedJobsPermissionState(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasPermission(Lcom/android/server/job/JobSchedulerService;IILjava/lang/String;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->hasPermission(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeQueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeQueueReadyJobsForExecutionLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnoteJobNonPending(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->noteJobNonPending(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mqueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMediaBackupExemptionLocked(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->updateMediaBackupExemptionLocked(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 9

    .line 183
    const-string v0, "JobScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 184
    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    .line 219
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 253
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Ljava/time/ZoneId;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 260
    new-instance v0, Lcom/android/server/job/JobSchedulerService$2;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService$2;-><init>(Ljava/time/ZoneId;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 349
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v1, ".schedulePersisted()"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 351
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v1, ".schedulePersisted out-of-quota logged"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    .line 353
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string/jumbo v1, "timeout-uij"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_UIJ:Lcom/android/server/utils/quota/Category;

    .line 355
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string/jumbo v1, "timeout-ej"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_EJ:Lcom/android/server/utils/quota/Category;

    .line 357
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string/jumbo v1, "timeout-reg"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_REG:Lcom/android/server/utils/quota/Category;

    .line 359
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string/jumbo v1, "timeout-total"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_TOTAL:Lcom/android/server/utils/quota/Category;

    .line 361
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v1, "anr"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_ANR:Lcom/android/server/utils/quota/Category;

    .line 362
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v1, "disabled"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    .line 411
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const v2, 0x3fb33333    # 1.4f

    const/16 v3, 0x19

    const/4 v4, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v2, "job_scheduler.value_hist_w_uid_enqueued_work_items_high_water_mark"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 414
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const/16 v2, 0x32

    const/high16 v6, 0x42000000    # 32.0f

    const v7, 0x3fa7ae14    # 1.31f

    invoke-direct {v1, v2, v4, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v8, "job_scheduler.value_hist_initial_job_estimated_network_download_kilobytes"

    invoke-direct {v0, v8, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 417
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v2, v4, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v8, "job_scheduler.value_hist_initial_jwi_estimated_network_download_kilobytes"

    invoke-direct {v0, v8, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 420
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v2, v4, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v8, "job_scheduler.value_hist_initial_job_estimated_network_upload_kilobytes"

    invoke-direct {v0, v8, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 423
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v2, v4, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v2, "job_scheduler.value_hist_initial_jwi_estimated_network_upload_kilobytes"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 426
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const v2, 0x3fe147ae    # 1.76f

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v6, "job_scheduler.value_hist_w_uid_job_minimum_chunk_kilobytes"

    invoke-direct {v0, v6, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sJobMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 429
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v2, "job_scheduler.value_hist_w_uid_jwi_minimum_chunk_kilobytes"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sJwiMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 2607
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 271
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 279
    new-instance v0, Lcom/android/server/job/JobPackageTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 326
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    .line 329
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUserVisibleJobObservers:Landroid/os/RemoteCallbackList;

    .line 336
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 368
    new-instance v0, Lcom/android/server/job/PendingJobQueue;

    invoke-direct {v0}, Lcom/android/server/job/PendingJobQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 370
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    const/4 v0, 0x0

    .line 397
    iput v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    const/16 v1, 0x14

    .line 398
    new-array v2, v1, [Lcom/android/server/job/controllers/JobStatus;

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    .line 399
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    .line 405
    iput v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    .line 407
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_46

    move v3, v1

    goto :goto_47

    :cond_46
    move v3, v0

    :goto_47
    new-array v3, v3, [Lcom/android/server/job/controllers/JobStatus;

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    if-eqz v2, :cond_4e

    move v0, v1

    .line 409
    :cond_4e
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobTimeElapsed:[J

    .line 436
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 440
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    .line 445
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 451
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 456
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    .line 459
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 462
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    .line 468
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    .line 1397
    new-instance v0, Lcom/android/server/job/JobSchedulerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1592
    new-instance v0, Lcom/android/server/job/JobSchedulerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1711
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    .line 2222
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mCancelJobDueToUserRemovalConsumer:Ljava/util/function/Consumer;

    .line 2734
    new-instance v0, Lcom/android/server/job/JobSchedulerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$5;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTimeSetReceiver:Landroid/content/BroadcastReceiver;

    .line 2754
    new-instance v1, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    .line 3655
    new-instance v1, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    .line 3983
    new-instance v1, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    .line 2609
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    .line 2610
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 2611
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 2610
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2613
    new-instance v1, Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 2614
    new-instance v1, Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-direct {v1}, Lcom/android/server/job/JobSchedulerService$Constants;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 2615
    new-instance v1, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService-IA;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    .line 2616
    new-instance v1, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 2618
    new-instance v1, Lcom/android/server/job/JobConcurrencyManager;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobConcurrencyManager;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 2621
    new-instance v1, Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$StandbyTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    .line 2622
    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    sput-object v2, Lcom/android/server/job/JobSchedulerService;->sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 2624
    new-instance v2, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 2663
    new-instance v3, Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-direct {v3, p1, v2}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 2664
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->updateQuotaTracker()V

    .line 2667
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    const/4 v4, 0x1

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 2668
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    const v7, 0x7fffffff

    invoke-virtual {v3, v2, v7, v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 2670
    const-class v2, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 2671
    invoke-interface {v2, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 2673
    const-class v1, Landroid/os/BatteryStatsInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStatsInternal;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 2676
    const-class v1, Lcom/android/server/job/JobSchedulerInternal;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$LocalService;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2679
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobStoreLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2680
    invoke-static {p0}, Lcom/android/server/job/JobStore;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 2681
    invoke-virtual {v2, v1}, Lcom/android/server/job/JobStore;->initAsync(Ljava/util/concurrent/CountDownLatch;)V

    .line 2683
    new-instance v1, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 2684
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->startTracking()V

    .line 2687
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2688
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 2689
    new-instance v3, Lcom/android/server/job/controllers/PrefetchController;

    invoke-direct {v3, p0}, Lcom/android/server/job/controllers/PrefetchController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 2690
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2691
    new-instance v4, Lcom/android/server/job/controllers/FlexibilityController;

    invoke-direct {v4, p0, v3}, Lcom/android/server/job/controllers/FlexibilityController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/PrefetchController;)V

    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 2692
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2693
    new-instance v3, Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {v3, p0, v4}, Lcom/android/server/job/controllers/ConnectivityController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 2695
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2696
    new-instance v5, Lcom/android/server/job/controllers/TimeController;

    invoke-direct {v5, p0}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2697
    new-instance v5, Lcom/android/server/job/controllers/IdleController;

    invoke-direct {v5, p0, v4}, Lcom/android/server/job/controllers/IdleController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V

    .line 2698
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2699
    new-instance v6, Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {v6, p0, v4}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V

    .line 2701
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2702
    new-instance v4, Lcom/android/server/job/controllers/StorageController;

    invoke-direct {v4, p0}, Lcom/android/server/job/controllers/StorageController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    .line 2703
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2704
    new-instance v4, Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {v4, p0}, Lcom/android/server/job/controllers/BackgroundJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 2706
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2707
    new-instance v7, Lcom/android/server/job/controllers/ContentObserverController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/ContentObserverController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2708
    new-instance v7, Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 2709
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2710
    new-instance v7, Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {v7, p0, v4, v3}, Lcom/android/server/job/controllers/QuotaController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    .line 2712
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2713
    new-instance v4, Lcom/android/server/job/controllers/ComponentController;

    invoke-direct {v4, p0}, Lcom/android/server/job/controllers/ComponentController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2715
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->startControllerTrackingAsync()V

    .line 2717
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    .line 2718
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2719
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2720
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2723
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 2724
    new-instance v3, Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-direct {v3, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2728
    invoke-virtual {v2}, Lcom/android/server/job/JobStore;->jobTimesInflatedValid()Z

    move-result p0

    if-nez p0, :cond_227

    .line 2729
    const-string p0, "JobScheduler"

    const-string v1, "!!! RTC not yet good; tracking time updates for job scheduling"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_227
    return-void
.end method

.method public static checkConstraintRunnableForTesting(Landroid/os/Handler;Lcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;IJ)Ljava/lang/Runnable;
    .registers 13

    .line 5520
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;

    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    move v1, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;-><init>(ILcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;Landroid/os/Handler;J)V

    return-object v0
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2

    .line 5932
    const-string v0, "Job Scheduler (jobscheduler) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5933
    const-string v0, "  [-h] [package] [--proto] ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5934
    const-string v0, "    -h: print this help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5935
    const-string v0, "  [package] is an optional package name to limit the output to."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5936
    const-string v0, "    --proto: output dump in protocol buffer format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 1

    .line 1587
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1588
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static safelyScaleBytesToKBForHistogram(J)I
    .registers 4

    const-wide/16 v0, 0x3e8

    .line 4747
    div-long/2addr p0, v0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_e

    const p0, 0x7fffffff

    return p0

    :cond_e
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_18

    const/high16 p0, -0x80000000

    return p0

    :cond_18
    long-to-int p0, p0

    return p0
.end method

.method public static sortJobs(Ljava/util/List;)V
    .registers 2

    .line 5941
    new-instance v0, Lcom/android/server/job/JobSchedulerService$6;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$6;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static standbyBucketAndReasonForPackage(Ljava/lang/String;IJ)J
    .registers 5

    .line 4731
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_9

    .line 4732
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucketAndReason(Ljava/lang/String;IJ)J

    move-result-wide p2

    goto :goto_b

    :cond_9
    const-wide/16 p2, 0x0

    .line 4736
    :goto_b
    invoke-static {p2, p3}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result v0

    .line 4737
    invoke-static {p2, p3}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result p2

    .line 4735
    invoke-static {v0, p2}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p2

    .line 4738
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v0, :cond_50

    .line 4739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " standby bucket index: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4740
    invoke-static {p2, p3}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and reason: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4741
    invoke-static {p2, p3}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4739
    const-string p1, "JobScheduler"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-wide p2
.end method

.method public static standbyBucketForPackage(Ljava/lang/String;IJ)I
    .registers 5

    .line 4717
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_9

    .line 4718
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result p2

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    .line 4721
    :goto_a
    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result p2

    .line 4723
    sget-boolean p3, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz p3, :cond_33

    .line 4724
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " standby bucket index: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return p2
.end method

.method public static standbyBucketToBucketIndex(I)I
    .registers 3

    .line 0
    const/16 v0, 0x32

    if-ne p0, v0, :cond_6

    const/4 p0, 0x4

    return p0

    :cond_6
    const/16 v0, 0x28

    const/4 v1, 0x5

    if-le p0, v0, :cond_c

    return v1

    :cond_c
    const/16 v0, 0x1e

    if-le p0, v0, :cond_12

    const/4 p0, 0x3

    return p0

    :cond_12
    const/16 v0, 0x14

    if-le p0, v0, :cond_18

    const/4 p0, 0x2

    return p0

    :cond_18
    const/16 v0, 0xa

    if-le p0, v0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    if-le p0, v1, :cond_22

    const/4 p0, 0x0

    return p0

    :cond_22
    const/4 p0, 0x6

    return p0
.end method


# virtual methods
.method public final adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I
    .registers 4

    const/16 v0, 0x28

    if-ge p1, v0, :cond_1d

    .line 4280
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobPackageTracker;->getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F

    move-result p2

    .line 4281
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_15

    add-int/lit8 p1, p1, -0x50

    return p1

    .line 4283
    :cond_15
    iget p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_1d

    add-int/lit8 p1, p1, -0x28

    :cond_1d
    return p1
.end method

.method public areComponentsInPlaceLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 10

    .line 4154
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 4155
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    .line 4156
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 4158
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v4, "areComponentsInPlaceLocked: "

    const-string v5, "JobScheduler"

    if-eqz v3, :cond_4a

    .line 4159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " exists="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " userStarted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " backingUp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    const/4 v6, 0x0

    if-eqz v0, :cond_82

    if-eqz v1, :cond_82

    if-eqz v2, :cond_52

    goto :goto_82

    .line 4170
    :cond_52
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v0

    if-eqz v0, :cond_7d

    if-eqz v3, :cond_7c

    .line 4173
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " restricted due to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4174
    invoke-virtual {v0}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4173
    invoke-static {v5, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    return v6

    .line 4183
    :cond_7d
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0

    :cond_82
    :goto_82
    return v6
.end method

.method public areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5

    .line 4034
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v0

    .line 4035
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    if-ne v1, v2, :cond_15

    return v0

    :cond_15
    if-eqz v0, :cond_25

    .line 4038
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public final cancelJob(ILjava/lang/String;III)Z
    .registers 9

    .line 2334
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2335
    :try_start_3
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p2

    if-eqz p2, :cond_38

    .line 2337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel() called by app, callingUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " uid="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " jobId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move p3, p5

    move-object p5, p1

    move-object p1, p2

    const/4 p2, 0x0

    const/4 p4, 0x0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    goto :goto_39

    :catchall_35
    move-exception v0

    move-object p0, v0

    goto :goto_40

    :cond_38
    move-object p1, p2

    :goto_39
    if-eqz p1, :cond_3d

    const/4 p0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 p0, 0x0

    .line 2342
    :goto_3e
    monitor-exit v1

    return p0

    .line 2343
    :goto_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_35

    throw p0
.end method

.method public final cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V
    .registers 81

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v8, p4

    .line 2355
    sget-boolean v73, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v3, "JobScheduler"

    if-eqz v73, :cond_26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CANCEL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    :cond_26
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    const/4 v4, 0x1

    .line 2357
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 2359
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v5, v1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2360
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v5, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2362
    :cond_3a
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2364
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual {v5, v1, v6, v8, v7}, Lcom/android/server/job/JobConcurrencyManager;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1ba

    .line 2368
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    .line 2370
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v7

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v7, :cond_62

    .line 2371
    new-array v7, v9, [I

    aput v5, v7, v10

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v5

    aput v5, v7, v4

    goto :goto_66

    :cond_62
    new-array v7, v4, [I

    aput v5, v7, v10

    .line 2374
    :goto_66
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 2375
    new-array v5, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v11, v5, v10

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v4

    goto :goto_80

    .line 2376
    :cond_78
    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    .line 2377
    :goto_80
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v6

    .line 2379
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v10

    move v12, v10

    .line 2380
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getLoggingJobId()J

    move-result-wide v10

    move v13, v12

    .line 2381
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v12

    move v14, v13

    .line 2382
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v13

    move v15, v14

    .line 2383
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v14

    move/from16 v16, v15

    .line 2384
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v15

    move/from16 v17, v16

    .line 2385
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v16

    move/from16 v18, v17

    .line 2386
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v17

    move/from16 v19, v18

    .line 2387
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v18

    move/from16 v20, v19

    .line 2388
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v19

    move/from16 v21, v20

    .line 2389
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v20

    .line 2392
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v23

    .line 2393
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v24

    .line 2394
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v25

    .line 2395
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v26

    .line 2396
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v27

    const/high16 v9, 0x40000000    # 2.0f

    .line 2397
    invoke-virtual {v1, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v29

    .line 2398
    invoke-virtual {v1, v4}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v30

    const/4 v9, 0x2

    .line 2399
    invoke-virtual {v1, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v31

    const/16 v9, 0x8

    .line 2400
    invoke-virtual {v1, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v32

    const/high16 v9, -0x80000000

    .line 2401
    invoke-virtual {v1, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v33

    const/4 v9, 0x4

    .line 2402
    invoke-virtual {v1, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v34

    const/high16 v9, 0x10000000

    .line 2403
    invoke-virtual {v1, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v35

    const/high16 v9, 0x4000000

    .line 2404
    invoke-virtual {v1, v9}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v36

    .line 2406
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v39

    .line 2408
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v41

    .line 2409
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v42

    .line 2410
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v44

    .line 2411
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v46

    .line 2412
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v48

    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    move/from16 v22, v4

    .line 2413
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-static {v4}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v49

    .line 2414
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNamespaceHash()Ljava/lang/String;

    move-result-object v50

    .line 2419
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v59

    .line 2420
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v61

    .line 2421
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v63

    const/high16 v4, 0x200000

    .line 2422
    invoke-virtual {v1, v4}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v64

    .line 2423
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->canApplyTransportAffinities()Z

    move-result v65

    .line 2424
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNumAppliedFlexibleConstraints()I

    move-result v66

    .line 2425
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNumDroppedFlexibleConstraints()I

    move-result v67

    .line 2426
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    move-result-object v68

    .line 2427
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    move-result-object v69

    .line 2428
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v70

    .line 2430
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v4

    add-int/lit8 v71, v4, 0x1

    .line 2432
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v9

    .line 2431
    invoke-virtual {v0, v4, v9}, Lcom/android/server/job/JobSchedulerService;->shouldUseAggressiveBackoff(II)Z

    move-result v72

    move-object v4, v3

    const/16 v3, 0x8

    move-object v9, v4

    move-object v4, v7

    const/4 v7, 0x3

    move-object/from16 v37, v9

    move/from16 v9, v21

    const/16 v21, 0x0

    move-object/from16 v40, v37

    const-wide/16 v37, 0x0

    move-object/from16 v51, v40

    const/16 v40, 0x0

    move-object/from16 v53, v51

    const-wide/16 v51, 0x0

    move-object/from16 v55, v53

    const-wide/16 v53, 0x0

    move-object/from16 v57, v55

    const-wide/16 v55, 0x0

    move-object/from16 v74, v57

    const-wide/16 v57, 0x0

    move-object/from16 v0, v74

    move/from16 v74, v22

    move/from16 v22, p3

    .line 2369
    invoke-static/range {v3 .. v72}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;IIZ)V

    goto :goto_1bd

    :cond_1ba
    move-object v0, v3

    move/from16 v74, v4

    :goto_1bd
    if-eqz v2, :cond_1df

    if-eqz v73, :cond_1d9

    .line 2436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tracking replacement job "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d9
    move-object/from16 v0, p0

    .line 2437
    invoke-virtual {v0, v2, v1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_1e1

    :cond_1df
    move-object/from16 v0, p0

    .line 2439
    :goto_1e1
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 2440
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    array-length v3, v2

    if-lez v3, :cond_203

    if-nez p4, :cond_203

    .line 2442
    iget v3, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    aput-object v1, v2, v3

    .line 2443
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobTimeElapsed:[J

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 2444
    iget v1, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    :cond_203
    return-void
.end method

.method public final cancelJobsForNonExistentUsers()V
    .registers 4

    .line 2237
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 2238
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2239
    :try_start_b
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobStore;->removeJobsOfUnlistedUsers([I)V

    .line 2240
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_22

    .line 2241
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v0

    .line 2242
    :try_start_18
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->clear()V

    .line 2243
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw p0

    :catchall_22
    move-exception p0

    .line 2240
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final cancelJobsForPackageAndUidLocked(Ljava/lang/String;IZZIILjava/lang/String;)V
    .registers 16

    const/4 v0, 0x1

    .line 2249
    const-string v1, "JobScheduler"

    if-nez p3, :cond_d

    if-nez p4, :cond_d

    .line 2250
    const-string p4, "Didn\'t indicate whether to cancel jobs for scheduling and/or source app"

    invoke-static {v1, p4}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    move p4, v0

    .line 2254
    :cond_d
    const-string v2, "android"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2255
    const-string p0, "Can\'t cancel all jobs for system package"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2258
    :cond_1b
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    if-eqz p3, :cond_27

    .line 2260
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/job/JobStore;->getJobsByUid(ILjava/util/Set;)V

    :cond_27
    if-eqz p4, :cond_2e

    .line 2263
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/job/JobStore;->getJobsBySourceUid(ILjava/util/Set;)V

    .line 2265
    :cond_2e
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p2

    sub-int/2addr p2, v0

    :goto_33
    if-ltz p2, :cond_6c

    .line 2266
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    if-eqz p3, :cond_4c

    .line 2269
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    :cond_4c
    if-eqz p4, :cond_61

    .line 2270
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_58
    const/4 v4, 0x0

    move-object v2, p0

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 2272
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    goto :goto_65

    :cond_61
    move-object v2, p0

    move v5, p5

    move v6, p6

    move-object v7, p7

    :goto_65
    add-int/lit8 p2, p2, -0x1

    move-object p0, v2

    move p5, v5

    move p6, v6

    move-object p7, v7

    goto :goto_33

    :cond_6c
    return-void
.end method

.method public cancelJobsForUid(IZIILjava/lang/String;)Z
    .registers 14

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 2288
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZZLjava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final cancelJobsForUid(IZZLjava/lang/String;IILjava/lang/String;)Z
    .registers 17

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    if-ne p1, v0, :cond_11

    if-eqz p3, :cond_9

    if-nez p4, :cond_11

    .line 2299
    :cond_9
    const-string p0, "JobScheduler"

    const-string p1, "Can\'t cancel all jobs for system uid"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2304
    :cond_11
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2305
    :try_start_14
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2307
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/job/JobStore;->getJobsByUid(ILjava/util/Set;)V

    if-eqz p2, :cond_29

    .line 2310
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/job/JobStore;->getJobsBySourceUid(ILjava/util/Set;)V

    goto :goto_29

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_52

    :cond_29
    :goto_29
    move p1, v1

    .line 2312
    :goto_2a
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge v1, p2, :cond_50

    .line 2313
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    if-eqz p3, :cond_43

    .line 2314
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4d

    :cond_43
    const/4 v5, 0x0

    move-object v3, p0

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 2315
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    const/4 p1, 0x1

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 2319
    :cond_50
    monitor-exit v2

    return p1

    :goto_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_14 .. :try_end_53} :catchall_26

    throw p0
.end method

.method public final cancelJobsForUserLocked(I)V
    .registers 4

    .line 2231
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v1, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda9;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mCancelJobDueToUserRemovalConsumer:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final checkChangedJobListLocked()V
    .registers 3

    .line 4002
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4003
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_12

    .line 4004
    const-string v0, "JobScheduler"

    const-string v1, "Check changed jobs..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4006
    :cond_12
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1b

    return-void

    .line 4010
    :cond_1b
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 4011
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcessLocked()V

    .line 4012
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;
    .registers 5

    .line 3583
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    .line 3584
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/restrictions/JobRestriction;

    .line 3585
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    return-object v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public final checkRunUserInitiatedJobsPermission(ILjava/lang/String;)Z
    .registers 3

    .line 5754
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->getRunUserInitiatedJobsPermissionState(ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final clearPendingJobQueue()V
    .registers 2

    .line 2983
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 2984
    :goto_5
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2985
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->noteJobNonPending(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_5

    .line 2987
    :cond_11
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {p0}, Lcom/android/server/job/PendingJobQueue;->clear()V

    return-void
.end method

.method public deriveWorkSource(I)Landroid/os/WorkSource;
    .registers 4

    .line 1638
    new-instance p0, Landroid/os/WorkSource;

    invoke-direct {p0}, Landroid/os/WorkSource;-><init>()V

    .line 1639
    invoke-virtual {p0}, Landroid/os/WorkSource;->createWorkChain()Landroid/os/WorkSource$WorkChain;

    move-result-object v0

    const/4 v1, 0x0

    .line 1640
    invoke-virtual {v0, p1, v1}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    move-result-object p1

    const/16 v0, 0x3e8

    const-string v1, "JobScheduler"

    .line 1641
    invoke-virtual {p1, v0, v1}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    return-object p0
.end method

.method public dumpInternal(Landroid/util/IndentingPrintWriter;I)V
    .registers 23
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v8, p2

    .line 5958
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 5959
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    .line 5960
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 5961
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 5963
    new-instance v3, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 5967
    iget-object v11, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 5968
    :try_start_24
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v12, v2}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 5969
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_48

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/controllers/StateController;

    .line 5970
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 5971
    invoke-virtual {v13, v2}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/IndentingPrintWriter;)V

    .line 5972
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_2f

    :catchall_45
    move-exception v0

    goto/16 :goto_590

    .line 5974
    :cond_48
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5976
    const-string v12, "Aconfig flags:"

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5977
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 5978
    const-string v12, "com.android.server.job.batch_active_bucket_jobs"

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v12, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 5979
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5980
    const-string v12, "com.android.server.job.batch_connectivity_jobs_per_network"

    invoke-virtual {v2, v12, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 5982
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5983
    const-string v12, "com.android.server.job.do_not_force_rush_execution_at_boot"

    invoke-virtual {v2, v12, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 5985
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5986
    const-string v12, "com.android.server.job.update_media_backup_exemption_policy"

    .line 5987
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5986
    invoke-virtual {v2, v12, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 5988
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5989
    const-string v12, "android.app.job.get_pending_job_reasons_api"

    invoke-virtual {v2, v12, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 5991
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5992
    const-string v12, "android.app.job.get_pending_job_reasons_history_api"

    invoke-virtual {v2, v12, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 5994
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5995
    const-string v12, "android.app.job.add_type_info_to_wakelock_tag"

    invoke-virtual {v2, v12, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 5997
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5998
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 5999
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6001
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    :goto_9d
    if-ltz v12, :cond_ad

    .line 6002
    iget-object v14, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v14, v2}, Lcom/android/server/job/restrictions/JobRestriction;->dumpConstants(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v12, v12, -0x1

    goto :goto_9d

    .line 6004
    :cond_ad
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6006
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v12, v2}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 6007
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6009
    const-string v12, "Power connected: "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6010
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v12}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isPowerConnected()Z

    move-result v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 6011
    const-string v12, "Battery charging: "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6012
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-static {v12}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->-$$Nest$fgetmCharging(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)Z

    move-result v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 6013
    const-string v12, "Considered charging: "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6014
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-static {v12}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->-$$Nest$misConsideredCharging(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)Z

    move-result v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 6015
    const-string v12, "Battery level: "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6016
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-static {v12}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->-$$Nest$fgetmBatteryLevel(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 6017
    const-string v12, "Battery not low: "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6018
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v12}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isBatteryNotLow()Z

    move-result v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 6019
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v12}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isMonitoring()Z

    move-result v12

    if-eqz v12, :cond_114

    .line 6020
    const-string v12, "MONITORING: seq="

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6021
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v12}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->getSeq()I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 6023
    :cond_114
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6025
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Started users: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6026
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6028
    const-string v12, "Media Cloud Providers: "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6029
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 6030
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6032
    const-string v12, "Registered "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6033
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v12}, Lcom/android/server/job/JobStore;->size()I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 6034
    const-string v12, " jobs:"

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6035
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6037
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v12}, Lcom/android/server/job/JobStore;->size()I

    move-result v12

    if-lez v12, :cond_276

    .line 6038
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v12, v12, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v12}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v12

    .line 6039
    invoke-static {v12}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 6040
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v15, 0x0

    :goto_16f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_271

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Lcom/android/server/job/controllers/JobStatus;

    .line 6042
    invoke-interface {v3, v14}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_184

    goto :goto_16f

    .line 6047
    :cond_184
    const-string v15, "JOB "

    invoke-virtual {v2, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6048
    invoke-virtual {v14, v2}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 6049
    const-string v15, ": "

    invoke-virtual {v2, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6050
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->toShortStringExceptUniqueId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6052
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6053
    invoke-virtual {v14, v2, v13, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 6055
    const-string v15, "Restricted due to:"

    invoke-virtual {v2, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6056
    invoke-virtual {v0, v14}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v15

    if-eqz v15, :cond_1ab

    move v15, v13

    goto :goto_1ac

    :cond_1ab
    const/4 v15, 0x0

    :goto_1ac
    if-eqz v15, :cond_1e6

    move/from16 v16, v13

    .line 6058
    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    :goto_1b8
    if-ltz v13, :cond_1e3

    move-wide/from16 v18, v6

    .line 6059
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/restrictions/JobRestriction;

    .line 6060
    invoke-virtual {v0, v14}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v7

    invoke-virtual {v6, v14, v7}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v7

    if-eqz v7, :cond_1de

    .line 6061
    invoke-virtual {v6}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v6

    .line 6062
    const-string v7, " "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6063
    invoke-static {v6}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1de
    add-int/lit8 v13, v13, -0x1

    move-wide/from16 v6, v18

    goto :goto_1b8

    :cond_1e3
    move-wide/from16 v18, v6

    goto :goto_1ef

    :cond_1e6
    move-wide/from16 v18, v6

    move/from16 v16, v13

    .line 6067
    const-string v6, " none"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6069
    :goto_1ef
    const-string v6, "."

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6071
    const-string v6, "Ready: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6072
    invoke-virtual {v0, v14}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6073
    const-string v6, " (job="

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6074
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6075
    const-string v6, " user="

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6076
    invoke-virtual {v0, v14}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6077
    const-string v6, " !restricted="

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    xor-int/lit8 v6, v15, 0x1

    .line 6078
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6079
    const-string v6, " !pending="

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6080
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v6, v14}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6081
    const-string v6, " !active="

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6082
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v6, v14}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6083
    const-string v6, " !backingup="

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6084
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6085
    const-string v6, " comp="

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6086
    invoke-virtual {v0, v14}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 6087
    const-string v6, ")"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6089
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v13, v16

    move v15, v13

    move-wide/from16 v6, v18

    goto/16 :goto_16f

    :cond_271
    :goto_271
    move-wide/from16 v18, v6

    move/from16 v16, v13

    goto :goto_278

    :cond_276
    const/4 v15, 0x0

    goto :goto_271

    :goto_278
    if-nez v15, :cond_27f

    .line 6093
    const-string v6, "None."

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6095
    :cond_27f
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v6, 0x0

    .line 6097
    :goto_283
    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2c6

    .line 6098
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6099
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6100
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6101
    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v7, v2, v3}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 6102
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v6, v6, 0x1

    goto :goto_283

    :cond_2c6
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 6106
    :goto_2c8
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    const/4 v13, -0x1

    if-ge v7, v12, :cond_30a

    .line 6107
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    if-eq v1, v13, :cond_2df

    .line 6108
    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-ne v1, v13, :cond_307

    :cond_2df
    if-nez v6, :cond_2ee

    .line 6111
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6112
    const-string v6, "Uid proc states:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6113
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v6, v16

    .line 6115
    :cond_2ee
    invoke-static {v12}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6116
    const-string v12, ": "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6117
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-static {v12}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_307
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c8

    :cond_30a
    if-eqz v6, :cond_30f

    .line 6121
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_30f
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 6125
    :goto_311
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-ge v7, v12, :cond_34e

    .line 6126
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    if-eq v1, v13, :cond_327

    .line 6127
    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    if-ne v1, v14, :cond_34b

    :cond_327
    if-nez v6, :cond_336

    .line 6130
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6131
    const-string v6, "Uid bias overrides:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6132
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v6, v16

    .line 6134
    :cond_336
    invoke-static {v12}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6135
    const-string v12, ": "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(I)V

    :cond_34b
    add-int/lit8 v7, v7, 0x1

    goto :goto_311

    :cond_34e
    if-eqz v6, :cond_353

    .line 6139
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_353
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 6143
    :goto_355
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-ge v7, v12, :cond_396

    .line 6144
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    if-eq v1, v13, :cond_36b

    .line 6145
    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    if-ne v1, v14, :cond_393

    :cond_36b
    if-nez v6, :cond_37a

    .line 6148
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6149
    const-string v6, "Uid capabilities:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6150
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v6, v16

    .line 6152
    :cond_37a
    invoke-static {v12}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6153
    const-string v12, ": "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6154
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-static {v12}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_393
    add-int/lit8 v7, v7, 0x1

    goto :goto_355

    :cond_396
    if-eqz v6, :cond_39b

    .line 6158
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_39b
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 6162
    :goto_39d
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v12}, Landroid/util/SparseSetArray;->size()I

    move-result v12

    if-ge v7, v12, :cond_3d3

    .line 6163
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v12

    if-eq v8, v13, :cond_3b0

    if-eq v8, v12, :cond_3b0

    goto :goto_3d0

    :cond_3b0
    if-nez v6, :cond_3bf

    .line 6169
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6170
    const-string v6, "Cached UID->package map:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6171
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v6, v16

    .line 6173
    :cond_3bf
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 6174
    const-string v14, ": "

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6175
    iget-object v14, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :goto_3d0
    add-int/lit8 v7, v7, 0x1

    goto :goto_39d

    :cond_3d3
    if-eqz v6, :cond_3d8

    .line 6178
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_3d8
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 6182
    :goto_3da
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    if-ge v7, v12, :cond_40f

    .line 6183
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    if-eq v1, v13, :cond_3f0

    .line 6184
    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    if-ne v1, v14, :cond_40c

    :cond_3f0
    if-nez v6, :cond_400

    .line 6186
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6187
    const-string v6, "Backing up uids:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6188
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v6, v16

    goto :goto_405

    .line 6191
    :cond_400
    const-string v14, ", "

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6193
    :goto_405
    invoke-static {v12}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_40c
    add-int/lit8 v7, v7, 0x1

    goto :goto_3da

    :cond_40f
    if-eqz v6, :cond_417

    .line 6197
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6198
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6201
    :cond_417
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6202
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v6, v2, v1}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/IndentingPrintWriter;I)V

    .line 6203
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6204
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v6, v2, v1}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/IndentingPrintWriter;I)Z

    move-result v1

    if-eqz v1, :cond_42d

    .line 6205
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6209
    :cond_42d
    const-string v1, "Pending queue:"

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6210
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6213
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 6214
    :goto_43c
    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v7}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v7

    if-eqz v7, :cond_48f

    add-int/lit8 v6, v6, 0x1

    .line 6216
    invoke-interface {v3, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_44d

    goto :goto_43c

    :cond_44d
    if-nez v1, :cond_451

    move/from16 v1, v16

    .line 6223
    :cond_451
    const-string v12, "Pending #"

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v12, ": "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6224
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6226
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v12, 0x0

    .line 6227
    invoke-virtual {v7, v2, v12, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 6228
    invoke-virtual {v0, v7}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v14

    .line 6229
    const-string v15, "Evaluated bias: "

    invoke-virtual {v2, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6230
    invoke-static {v14}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6232
    const-string v14, "Enq: "

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6233
    iget-wide v14, v7, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long v14, v14, v18

    invoke-static {v14, v15, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6234
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6235
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_43c

    :cond_48f
    const/4 v12, 0x0

    if-nez v1, :cond_497

    .line 6238
    const-string v1, "None"

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6240
    :cond_497
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6242
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6243
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move-wide/from16 v6, v18

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/JobConcurrencyManager;->dumpContextInfoLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;JJ)V

    .line 6245
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6247
    const-string v1, "Recently completed jobs:"

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6248
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v6, v12

    move/from16 v1, v16

    :goto_4b2
    const/16 v7, 0x14

    if-gt v1, v7, :cond_4f0

    .line 6251
    iget v14, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    add-int/2addr v14, v7

    sub-int/2addr v14, v1

    rem-int/2addr v14, v7

    .line 6253
    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    aget-object v7, v7, v14

    if-eqz v7, :cond_4eb

    .line 6255
    invoke-interface {v3, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4c8

    goto :goto_4eb

    .line 6259
    :cond_4c8
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    aget-wide v14, v6, v14

    invoke-static {v14, v15, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 6260
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6262
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6263
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6264
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move/from16 v6, v16

    .line 6265
    invoke-virtual {v7, v2, v6, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 6266
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6267
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v6, 0x1

    :cond_4eb
    :goto_4eb
    add-int/lit8 v1, v1, 0x1

    const/16 v16, 0x1

    goto :goto_4b2

    :cond_4f0
    if-nez v6, :cond_4f7

    .line 6271
    const-string v1, "None"

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6273
    :cond_4f7
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6274
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    move v14, v12

    const/4 v6, 0x1

    .line 6277
    :goto_4ff
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    array-length v7, v1

    if-gt v6, v7, :cond_54e

    .line 6279
    iget v7, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    array-length v12, v1

    add-int/2addr v7, v12

    sub-int/2addr v7, v6

    array-length v12, v1

    rem-int/2addr v7, v12

    .line 6281
    aget-object v1, v1, v7

    if-eqz v1, :cond_515

    .line 6283
    invoke-interface {v3, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_517

    :cond_515
    const/4 v7, 0x1

    goto :goto_54a

    :cond_517
    if-nez v14, :cond_525

    .line 6287
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6288
    const-string v12, "Recently cancelled jobs:"

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6289
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v14, 0x1

    .line 6292
    :cond_525
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobTimeElapsed:[J

    move/from16 v17, v14

    aget-wide v13, v12, v7

    invoke-static {v13, v14, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 6293
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6295
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6296
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6297
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 6298
    invoke-virtual {v1, v2, v7, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 6299
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6300
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v14, v17

    :goto_54a
    add-int/lit8 v6, v6, 0x1

    const/4 v13, -0x1

    goto :goto_4ff

    :cond_54e
    if-nez v14, :cond_556

    .line 6304
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6305
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_556
    const/4 v15, -0x1

    if-ne v8, v15, :cond_570

    .line 6309
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6310
    const-string v1, "mReadyToRock="

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 6311
    const-string v1, "mReportedActive="

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 6313
    :cond_570
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6315
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move-wide v5, v4

    move-wide v3, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobConcurrencyManager;->dumpLocked(Landroid/util/IndentingPrintWriter;JJ)V

    .line 6317
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 6318
    const-string v1, "PersistStats: "

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6319
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 6320
    monitor-exit v11
    :try_end_58c
    .catchall {:try_start_24 .. :try_end_58c} :catchall_45

    .line 6321
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    return-void

    .line 6320
    :goto_590
    :try_start_590
    monitor-exit v11
    :try_end_591
    .catchall {:try_start_590 .. :try_end_591} :catchall_45

    throw v0
.end method

.method public dumpInternalProto(Ljava/io/FileDescriptor;I)V
    .registers 27

    move-object/from16 v0, p0

    .line 6325
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v1, p1

    invoke-direct {v2, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 6326
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 6327
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    .line 6328
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 6329
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    .line 6330
    new-instance v13, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;

    invoke-direct {v13, v8}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 6335
    iget-object v14, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    const-wide v3, 0x10b00000001L

    move-wide v15, v6

    .line 6336
    :try_start_2d
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 6337
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 6338
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/StateController;

    .line 6339
    invoke-virtual {v7, v2}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_3c

    :catchall_4c
    move-exception v0

    goto/16 :goto_2b4

    .line 6341
    :cond_4f
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6343
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v17, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_5c
    if-ltz v1, :cond_6c

    .line 6344
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v5, v2}, Lcom/android/server/job/restrictions/JobRestriction;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_5c

    .line 6347
    :cond_6c
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    array-length v5, v1

    const/16 v18, 0x0

    move/from16 v6, v18

    :goto_73
    if-ge v6, v5, :cond_87

    aget v7, v1, v6

    const-wide v3, 0x20500000002L

    .line 6348
    invoke-virtual {v2, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v6, v6, 0x1

    const-wide v3, 0x10b00000001L

    goto :goto_73

    .line 6351
    :cond_87
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-wide v3, 0x10b00000016L

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6353
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1}, Lcom/android/server/job/JobStore;->size()I

    move-result v1

    if-lez v1, :cond_19e

    .line 6354
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v1, v1, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v1}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v1

    .line 6355
    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 6356
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_a8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19e

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    const-wide v5, 0x20b00000003L

    .line 6357
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v3, 0x10b00000001L

    .line 6358
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6361
    invoke-interface {v13, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_cc

    goto :goto_a8

    :cond_cc
    move-wide/from16 v19, v3

    const-wide v3, 0x10b00000002L

    move-wide v6, v5

    const/4 v5, 0x1

    move-wide/from16 v22, v9

    move-wide v9, v6

    move-wide v6, v15

    move-wide v15, v11

    const-wide v11, 0x1080000000bL

    .line 6365
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 6370
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    const-wide v4, 0x1080000000aL

    .line 6368
    invoke-virtual {v2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6372
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    const-wide v4, 0x10800000003L

    .line 6371
    invoke-virtual {v2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6374
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    const-wide v4, 0x10800000004L

    .line 6373
    invoke-virtual {v2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6377
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v3

    if-eqz v3, :cond_10f

    move/from16 v3, v17

    goto :goto_111

    :cond_10f
    move/from16 v3, v18

    .line 6375
    :goto_111
    invoke-virtual {v2, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6378
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 6379
    invoke-virtual {v3, v1}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    const-wide v4, 0x10800000005L

    .line 6378
    invoke-virtual {v2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6380
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 6381
    invoke-virtual {v3, v1}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    const-wide v4, 0x10800000006L

    .line 6380
    invoke-virtual {v2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6382
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 6383
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    const-wide v4, 0x10800000007L

    .line 6382
    invoke-virtual {v2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6385
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    const-wide v4, 0x10800000008L

    .line 6384
    invoke-virtual {v2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6387
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_154
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_192

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/restrictions/JobRestriction;

    const-wide v11, 0x20b0000000cL

    .line 6388
    invoke-virtual {v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 6391
    invoke-virtual {v4}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v5

    move-wide/from16 v19, v6

    const-wide v6, 0x10e00000001L

    .line 6390
    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6393
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v4

    const-wide v5, 0x10800000002L

    .line 6392
    invoke-virtual {v2, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6394
    invoke-virtual {v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v6, v19

    const-wide v11, 0x1080000000bL

    goto :goto_154

    :cond_192
    move-wide/from16 v19, v6

    .line 6397
    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide v11, v15

    move-wide/from16 v15, v19

    move-wide/from16 v9, v22

    goto/16 :goto_a8

    :cond_19e
    move-wide/from16 v22, v9

    move-wide/from16 v19, v15

    move-wide v15, v11

    .line 6400
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1be

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    const-wide v4, 0x20b00000004L

    .line 6401
    invoke-virtual {v3, v2, v4, v5, v13}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    goto :goto_1a9

    :cond_1be
    move/from16 v1, v18

    .line 6404
    :goto_1c0
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/4 v9, -0x1

    if-ge v1, v3, :cond_1fc

    .line 6405
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-eq v8, v9, :cond_1d7

    .line 6406
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v8, v4, :cond_1f9

    :cond_1d7
    const-wide v4, 0x20b00000005L

    .line 6407
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10500000001L

    .line 6408
    invoke-virtual {v2, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6409
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 6410
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const-wide v6, 0x11100000002L

    .line 6409
    invoke-virtual {v2, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6411
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_1f9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c0

    :cond_1fc
    move/from16 v1, v18

    .line 6414
    :goto_1fe
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_21f

    .line 6415
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-eq v8, v9, :cond_214

    .line 6416
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v8, v4, :cond_21c

    :cond_214
    const-wide v4, 0x20500000006L

    .line 6417
    invoke-virtual {v2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_21c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1fe

    .line 6421
    :cond_21f
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v3, 0x10b00000008L

    invoke-virtual {v1, v2, v3, v4, v8}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 6423
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v3, 0x10b00000007L

    invoke-virtual {v1, v2, v3, v4, v8}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 6427
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 6428
    :goto_238
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    if-eqz v1, :cond_27a

    const-wide v3, 0x20b00000009L

    .line 6429
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v12, 0x10b00000001L

    .line 6431
    invoke-virtual {v1, v2, v12, v13}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v3, 0x10b00000002L

    const/4 v5, 0x0

    move-wide/from16 v6, v19

    .line 6432
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 6433
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    const-wide v4, 0x11100000003L

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6434
    iget-wide v3, v1, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long v3, v15, v3

    const-wide v12, 0x10300000004L

    invoke-virtual {v2, v12, v13, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 6436
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v19, v6

    goto :goto_238

    :cond_27a
    move/from16 v1, p2

    move-wide/from16 v6, v19

    if-ne v1, v9, :cond_294

    .line 6439
    iget-boolean v1, v0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    const-wide v11, 0x1080000000bL

    invoke-virtual {v2, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6440
    iget-boolean v1, v0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    const-wide v3, 0x1080000000cL

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6442
    :cond_294
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    const-wide v3, 0x10b00000014L

    move-wide v7, v6

    move-wide/from16 v5, v22

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/job/JobConcurrencyManager;->dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 6445
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    const-wide v3, 0x10b00000015L

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6446
    monitor-exit v14
    :try_end_2b0
    .catchall {:try_start_2d .. :try_end_2b0} :catchall_4c

    .line 6448
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    .line 6446
    :goto_2b4
    :try_start_2b4
    monitor-exit v14
    :try_end_2b5
    .catchall {:try_start_2b4 .. :try_end_2b5} :catchall_4c

    throw v0
.end method

.method public evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4

    .line 4139
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 4140
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 4141
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/StateController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4143
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result p0

    return p0
.end method

.method public evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 6

    .line 4292
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBias()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_d

    .line 4294
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I

    move-result p0

    return p0

    .line 4296
    :cond_d
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eqz v1, :cond_1f

    .line 4298
    invoke-virtual {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I

    move-result p0

    return p0

    .line 4300
    :cond_1f
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I

    move-result p0

    return p0
.end method

.method public executeCancelCommand(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZI)I
    .registers 14

    .line 5555
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 5556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeCancelCommand(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5561
    :cond_2a
    :try_start_2a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 5562
    invoke-interface {v0, p2, v1, v2, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_34} :catch_36

    :goto_34
    move v2, v0

    goto :goto_38

    :catch_36
    const/4 v0, -0x1

    goto :goto_34

    :goto_38
    if-gez v2, :cond_56

    .line 5566
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e8

    return p0

    .line 5570
    :cond_56
    const-string v0, " in user "

    if-nez p5, :cond_87

    .line 5571
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Canceling all jobs for "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 5572
    const-string v6, "cancel shell command for package"

    const/4 v3, 0x0

    const/16 v4, 0xd

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZIILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_bb

    .line 5577
    const-string p0, "No matching jobs found."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bb

    :cond_87
    move-object v1, p0

    .line 5580
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Canceling job "

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/#"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v5, 0x7d0

    const/16 v6, 0xd

    move-object v3, p4

    move v4, p6

    .line 5581
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->cancelJob(ILjava/lang/String;III)Z

    move-result p0

    if-nez p0, :cond_bb

    .line 5583
    const-string p0, "No matching job found."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_bb
    :goto_bb
    const/4 p0, 0x0

    return p0
.end method

.method public executeRunCommand(Ljava/lang/String;ILjava/lang/String;IZZ)I
    .registers 13

    .line 5443
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeRunCommand(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p3

    .line 5446
    new-instance p3, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {p3, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v2, 0x0

    .line 5449
    :try_start_46
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, -0x1

    if-eq p2, v4, :cond_4e

    goto :goto_4f

    :cond_4e
    move p2, v2

    :goto_4f
    const-wide/16 v4, 0x0

    invoke-interface {v3, p1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p1

    if-gez p1, :cond_5a

    const/16 p0, -0x3e8

    return p0

    .line 5455
    :cond_5a
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_5d} :catch_ef

    .line 5456
    :try_start_5d
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p2, p1, v0, p4}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p2

    if-nez p2, :cond_6d

    const/16 p0, -0x3e9

    .line 5458
    monitor-exit v3

    return p0

    :catchall_69
    move-exception v0

    move-object p0, v0

    goto/16 :goto_ed

    :cond_6d
    if-eqz p6, :cond_71

    const/4 p1, 0x3

    goto :goto_76

    :cond_71
    if-eqz p5, :cond_75

    move p1, v1

    goto :goto_76

    :cond_75
    const/4 p1, 0x2

    .line 5462
    :goto_76
    iput p1, p2, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 5466
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_7f
    if-ltz p1, :cond_8f

    .line 5467
    iget-object p4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p4, p2}, Lcom/android/server/job/controllers/StateController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_7f

    .line 5470
    :cond_8f
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result p1

    const/16 v1, -0x3ea

    if-nez p1, :cond_be

    .line 5471
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result p1

    if-eqz p1, :cond_ba

    const/high16 p1, 0x10000000

    .line 5472
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result p4

    if-nez p4, :cond_ba

    .line 5473
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->wouldBeReadyWithConstraint(I)Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 5478
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 p4, 0x5

    const-wide/16 p5, 0x3e8

    .line 5479
    invoke-static/range {p1 .. p6}, Lcom/android/server/job/JobSchedulerService;->checkConstraintRunnableForTesting(Landroid/os/Handler;Lcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;IJ)Ljava/lang/Runnable;

    move-result-object p4

    const-wide/16 p5, 0x3e8

    .line 5478
    invoke-virtual {p1, p4, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c1

    .line 5485
    :cond_ba
    iput v2, p2, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 5486
    monitor-exit v3

    return v1

    .line 5489
    :cond_be
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5491
    :goto_c1
    monitor-exit v3
    :try_end_c2
    .catchall {:try_start_5d .. :try_end_c2} :catchall_69

    .line 5500
    :try_start_c2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p4, 0x7

    invoke-virtual {p3, p4, p5, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_c9
    .catch Ljava/lang/InterruptedException; {:try_start_c2 .. :try_end_c9} :catch_ca

    goto :goto_d3

    :catch_ca
    move-exception v0

    move-object p1, v0

    .line 5502
    const-string p3, "JobScheduler"

    const-string p4, "Couldn\'t wait for asynchronous constraint change"

    invoke-static {p3, p4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5505
    :goto_d3
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5506
    :try_start_d6
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result p3

    if-nez p3, :cond_e3

    .line 5507
    iput v2, p2, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 5508
    monitor-exit p1

    return v1

    :catchall_e0
    move-exception v0

    move-object p0, v0

    goto :goto_eb

    .line 5511
    :cond_e3
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    .line 5512
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 5513
    monitor-exit p1

    return v2

    :goto_eb
    monitor-exit p1
    :try_end_ec
    .catchall {:try_start_d6 .. :try_end_ec} :catchall_e0

    throw p0

    .line 5491
    :goto_ed
    :try_start_ed
    monitor-exit v3
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_69

    :try_start_ee
    throw p0
    :try_end_ef
    .catch Landroid/os/RemoteException; {:try_start_ee .. :try_end_ef} :catch_ef

    :catch_ef
    return v2
.end method

.method public executeStopCommand(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZIII)I
    .registers 12

    .line 5536
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_43

    .line 5537
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeStopJobCommand(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5539
    invoke-static {p8}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5537
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5542
    :cond_43
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5543
    :try_start_46
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/job/JobConcurrencyManager;->executeStopCommandLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZIII)Z

    move-result p0

    if-nez p0, :cond_57

    .line 5546
    const-string p0, "No matching executing jobs found."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_57

    :catchall_54
    move-exception v0

    move-object p0, v0

    goto :goto_5a

    .line 5548
    :cond_57
    :goto_57
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :goto_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_46 .. :try_end_5b} :catchall_54

    throw p0
.end method

.method public getBatterySeq()I
    .registers 2

    .line 5606
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5607
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->getSeq()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 5608
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getConfigValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 5639
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5640
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->getValueLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 5641
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getConnectivityController()Lcom/android/server/job/controllers/ConnectivityController;
    .registers 1

    .line 5766
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    return-object p0
.end method

.method public getConstants()Lcom/android/server/job/JobSchedulerService$Constants;
    .registers 1

    .line 1628
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    return-object p0
.end method

.method public getEstimatedNetworkBytes(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;II)I
    .registers 13

    const/4 v0, 0x0

    .line 5659
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, -0x1

    if-eq p3, v2, :cond_9

    goto :goto_a

    :cond_9
    move p3, v0

    :goto_a
    const-wide/16 v2, 0x0

    invoke-interface {v1, p2, v2, v3, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    if-gez p3, :cond_23

    .line 5662
    const-string/jumbo p0, "unknown("

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5663
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5664
    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e8

    return p0

    .line 5668
    :cond_23
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_26} :catch_ae

    .line 5669
    :try_start_26
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, p3, p4, p5}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 5670
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_61

    .line 5671
    const-string v3, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get-estimated-network-bytes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :catchall_5f
    move-exception p0

    goto :goto_ac

    :cond_61
    :goto_61
    if-nez v2, :cond_7d

    .line 5675
    const-string/jumbo p0, "unknown("

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, p3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5676
    const-string p0, "/jid"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e9

    .line 5677
    monitor-exit v1

    return p0

    .line 5682
    :cond_7d
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/job/JobConcurrencyManager;->getEstimatedNetworkBytesLocked(Ljava/lang/String;ILjava/lang/String;I)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_8e

    .line 5685
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide p2

    .line 5686
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide p4

    goto :goto_9e

    .line 5688
    :cond_8e
    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 5689
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    :goto_9e
    if-nez p6, :cond_a4

    .line 5692
    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_a7

    .line 5694
    :cond_a4
    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->println(J)V

    .line 5696
    :goto_a7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5697
    monitor-exit v1

    goto :goto_ae

    :goto_ac
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_26 .. :try_end_ad} :catchall_5f

    :try_start_ad
    throw p0
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_ae} :catch_ae

    :catch_ae
    :goto_ae
    return v0
.end method

.method public getJobState(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;I)I
    .registers 11

    const/4 v0, 0x0

    .line 5819
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, -0x1

    if-eq p3, v2, :cond_9

    goto :goto_a

    :cond_9
    move p3, v0

    :goto_a
    const-wide/16 v2, 0x0

    invoke-interface {v1, p2, v2, v3, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    if-gez p3, :cond_23

    .line 5822
    const-string/jumbo p0, "unknown("

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5823
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5824
    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e8

    return p0

    .line 5828
    :cond_23
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_26} :catch_13a

    .line 5829
    :try_start_26
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p3, p4, p5}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 5830
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_62

    .line 5831
    const-string v2, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get-job-state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :catchall_5f
    move-exception p0

    goto/16 :goto_138

    :cond_62
    :goto_62
    if-nez v1, :cond_7e

    .line 5835
    const-string/jumbo p0, "unknown("

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5836
    invoke-static {p1, p3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5837
    const-string p0, "/jid"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5838
    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(I)V

    .line 5839
    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e9

    .line 5840
    monitor-exit p2

    return p0

    .line 5844
    :cond_7e
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {p3, v1}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_8f

    .line 5845
    const-string/jumbo p3, "pending"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move p3, p4

    goto :goto_90

    :cond_8f
    move p3, v0

    .line 5848
    :goto_90
    iget-object p5, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p5, v1}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p5

    if-eqz p5, :cond_a5

    if-eqz p3, :cond_9f

    .line 5850
    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5853
    :cond_9f
    const-string p3, "active"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p4

    .line 5855
    :cond_a5
    iget-object p5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v2

    invoke-static {p5, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p5

    if-nez p5, :cond_bf

    if-eqz p3, :cond_b8

    .line 5857
    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5860
    :cond_b8
    const-string/jumbo p3, "user-stopped"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p4

    .line 5862
    :cond_bf
    iget-object p5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-static {p5, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p5

    if-nez p5, :cond_d9

    if-eqz p3, :cond_d2

    .line 5864
    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5867
    :cond_d2
    const-string/jumbo p3, "source-user-stopped"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p4

    .line 5869
    :cond_d9
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_f2

    if-eqz p3, :cond_ec

    .line 5871
    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5874
    :cond_ec
    const-string p0, "backing-up"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f1
    .catchall {:try_start_26 .. :try_end_f1} :catchall_5f

    move p3, p4

    .line 5878
    :cond_f2
    :try_start_f2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    .line 5879
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p5

    .line 5881
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v2

    const-wide/32 v3, 0x10000000

    .line 5878
    invoke-interface {p0, p5, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_105
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_105} :catch_108
    .catchall {:try_start_f2 .. :try_end_105} :catchall_5f

    if-eqz p0, :cond_108

    goto :goto_116

    :catch_108
    :cond_108
    if-eqz p3, :cond_10f

    .line 5886
    :try_start_10a
    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5889
    :cond_10f
    const-string/jumbo p0, "no-component"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p4

    .line 5891
    :goto_116
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result p0

    if-eqz p0, :cond_12a

    if-eqz p3, :cond_123

    .line 5893
    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5896
    :cond_123
    const-string/jumbo p0, "ready"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12b

    :cond_12a
    move p4, p3

    :goto_12b
    if-nez p4, :cond_133

    .line 5899
    const-string/jumbo p0, "waiting"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5901
    :cond_133
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5902
    monitor-exit p2

    goto :goto_13a

    :goto_138
    monitor-exit p2
    :try_end_139
    .catchall {:try_start_10a .. :try_end_139} :catchall_5f

    :try_start_139
    throw p0
    :try_end_13a
    .catch Landroid/os/RemoteException; {:try_start_139 .. :try_end_13a} :catch_13a

    :catch_13a
    :goto_13a
    return v0
.end method

.method public getJobStore()Lcom/android/server/job/JobStore;
    .registers 1

    .line 1624
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    return-object p0
.end method

.method public getJobWakelockTag(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;I)I
    .registers 10

    const/4 v0, 0x0

    .line 5784
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, -0x1

    if-eq p3, v2, :cond_9

    goto :goto_a

    :cond_9
    move p3, v0

    :goto_a
    const-wide/16 v2, 0x0

    invoke-interface {v1, p2, v2, v3, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    if-gez p3, :cond_23

    .line 5787
    const-string/jumbo p0, "unknown("

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5788
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5789
    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e8

    return p0

    .line 5793
    :cond_23
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_26} :catch_88

    .line 5794
    :try_start_26
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p0

    .line 5795
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_61

    .line 5796
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get-job-wakelock-tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :catchall_5f
    move-exception p0

    goto :goto_86

    :cond_61
    :goto_61
    if-nez p0, :cond_7d

    .line 5800
    const-string/jumbo p0, "unknown("

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5801
    invoke-static {p1, p3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5802
    const-string p0, "/jid"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5803
    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(I)V

    .line 5804
    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e9

    .line 5805
    monitor-exit p2

    return p0

    .line 5808
    :cond_7d
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5809
    monitor-exit p2

    goto :goto_88

    :goto_86
    monitor-exit p2
    :try_end_87
    .catchall {:try_start_26 .. :try_end_87} :catchall_5f

    :try_start_87
    throw p0
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_88} :catch_88

    :catch_88
    :goto_88
    return v0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 1

    .line 1620
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 9

    .line 4235
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4236
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 4238
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 4237
    invoke-virtual {p0, v1, v2}, Lcom/android/server/job/JobSchedulerService;->checkRunUserInitiatedJobsPermission(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 4239
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    move-result v2

    .line 4240
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "timeout-uij"

    .line 4239
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 4242
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    monitor-exit v0

    return-wide p0

    :catchall_30
    move-exception p0

    goto :goto_7b

    .line 4244
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 4245
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    monitor-exit v0

    return-wide p0

    .line 4248
    :cond_3e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 4249
    const-string/jumbo v1, "timeout-ej"

    goto :goto_4b

    :cond_48
    const-string/jumbo v1, "timeout-reg"

    .line 4253
    :goto_4b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 4254
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    goto :goto_5a

    .line 4255
    :cond_56
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 4257
    :goto_5a
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    move-result v5

    .line 4258
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v6

    .line 4257
    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    goto :goto_6f

    .line 4260
    :cond_6b
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v2, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    .line 4261
    :goto_6f
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    .line 4262
    :goto_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_3 .. :try_end_7c} :catchall_30

    throw p0
.end method

.method public getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 9

    .line 4188
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4189
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 4191
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 4190
    invoke-virtual {p0, v1, v2}, Lcom/android/server/job/JobSchedulerService;->checkRunUserInitiatedJobsPermission(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 4194
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 4195
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "timeout-uij"

    .line 4194
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 4198
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    goto :goto_36

    :catchall_2f
    move-exception p0

    goto/16 :goto_ac

    .line 4199
    :cond_32
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 4200
    :goto_36
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    if-eqz v3, :cond_7d

    .line 4202
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v4, v3, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_USE_DATA_ESTIMATES_FOR_LIMITS:Z

    if-eqz v4, :cond_6f

    .line 4203
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 4204
    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/ConnectivityController;->getEstimatedTransferTimeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-nez p1, :cond_5c

    .line 4206
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :cond_5c
    long-to-float p1, v3

    .line 4211
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_BUFFER_FACTOR:F

    mul-float/2addr p1, v3

    float-to-long v3, p1

    .line 4213
    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 4214
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 4213
    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    .line 4217
    :cond_6f
    iget-wide p0, v3, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 4218
    invoke-static {p0, p1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 4217
    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    .line 4221
    :cond_7d
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    .line 4222
    :cond_87
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 4224
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_99

    .line 4225
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    goto :goto_a4

    .line 4226
    :cond_99
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    const-wide/32 v1, 0x493e0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :goto_a4
    monitor-exit v0

    return-wide p0

    .line 4228
    :cond_a6
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    monitor-exit v0

    return-wide p0

    .line 4230
    :goto_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_3 .. :try_end_ad} :catchall_2f

    throw p0
.end method

.method public getPackagesForUidLocked(I)Landroid/util/ArraySet;
    .registers 8

    .line 1648
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_27

    .line 1651
    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1652
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 1654
    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 1655
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1657
    :cond_20
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object p0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    :cond_27
    return-object v0
.end method

.method public final getPendingJob(ILjava/lang/String;I)Landroid/app/job/JobInfo;
    .registers 7

    .line 2168
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2169
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object p0

    .line 2170
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_f
    if-ltz p1, :cond_32

    .line 2171
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 2172
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    if-ne v2, p3, :cond_2f

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2173
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_2d
    move-exception p0

    goto :goto_35

    :cond_2f
    add-int/lit8 p1, p1, -0x1

    goto :goto_f

    :cond_32
    const/4 p0, 0x0

    .line 2176
    monitor-exit v0

    return-object p0

    .line 2177
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_2d

    throw p0
.end method

.method public getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;
    .registers 1

    .line 1633
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    return-object p0
.end method

.method public getPendingJobReason(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 4

    .line 2078
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReasons(ILjava/lang/String;I)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0
.end method

.method public final getPendingJobReasons(ILjava/lang/String;I)[I
    .registers 9

    .line 2047
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v0

    .line 2048
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_19

    .line 2050
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_19

    .line 2052
    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception p0

    goto :goto_7e

    .line 2055
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_17

    .line 2056
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2057
    :try_start_1d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReasonsLocked(ILjava/lang/String;I)[I

    move-result-object v0

    .line 2058
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_5a

    .line 2059
    const-string v2, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPendingJobReasons("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2059
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    :catchall_58
    move-exception p0

    goto :goto_7c

    .line 2062
    :cond_5a
    :goto_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_1d .. :try_end_5b} :catchall_58

    .line 2063
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v2

    .line 2064
    :try_start_5e
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_75

    .line 2066
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2067
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    :catchall_73
    move-exception p0

    goto :goto_7a

    .line 2069
    :cond_75
    :goto_75
    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2070
    monitor-exit v2

    return-object v0

    :goto_7a
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_5e .. :try_end_7b} :catchall_73

    throw p0

    .line 2062
    :goto_7c
    :try_start_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_58

    throw p0

    .line 2055
    :goto_7e
    :try_start_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_17

    throw p0
.end method

.method public getPendingJobReasons(Lcom/android/server/job/controllers/JobStatus;)[I
    .registers 4

    .line 2084
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReasons(ILjava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method public final getPendingJobReasonsHistory(ILjava/lang/String;I)Ljava/util/List;
    .registers 5

    .line 2156
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2157
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 2163
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getPendingJobReasonsHistory()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    goto :goto_1b

    .line 2160
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid job id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2164
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_11

    throw p0
.end method

.method public final getPendingJobReasonsLocked(ILjava/lang/String;I)[I
    .registers 9

    .line 2091
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p0, -0x2

    .line 2094
    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    .line 2096
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_1a

    const/4 p0, -0x1

    .line 2097
    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    .line 2100
    :cond_1a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPendingJobReasonsLocked: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2101
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result p3

    .line 2102
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_50

    .line 2103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ready="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :cond_50
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v2

    if-eqz v0, :cond_6d

    .line 2107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " restriction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    if-eqz p3, :cond_116

    if-eqz v2, :cond_73

    goto/16 :goto_116

    .line 2113
    :cond_73
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p3

    if-eqz v0, :cond_90

    .line 2115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    if-nez p3, :cond_99

    const/16 p0, 0xf

    .line 2118
    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    .line 2121
    :cond_99
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p3

    if-eqz v0, :cond_bc

    .line 2123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " backingUp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc
    const/4 v2, 0x1

    if-eqz p3, :cond_c4

    .line 2127
    filled-new-array {v2}, [I

    move-result-object p0

    return-object p0

    .line 2132
    :cond_c4
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {p3, p1}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p3

    if-eqz v0, :cond_e3

    .line 2134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pending="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e3
    if-eqz p3, :cond_ec

    const/16 p0, 0xc

    .line 2138
    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    .line 2142
    :cond_ec
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz v0, :cond_109

    .line 2144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " componentUsable="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_109
    if-nez p0, :cond_110

    .line 2147
    filled-new-array {v2}, [I

    move-result-object p0

    return-object p0

    :cond_110
    const/4 p0, 0x0

    .line 2150
    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    .line 2110
    :cond_116
    :goto_116
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->getPendingJobReasons(Lcom/android/server/job/restrictions/JobRestriction;)[I

    move-result-object p0

    return-object p0
.end method

.method public final getPendingJobs(I)Landroid/util/ArrayMap;
    .registers 7

    .line 2009
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2010
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2011
    :try_start_8
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object p0

    .line 2013
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_14
    if-ltz p1, :cond_41

    .line 2014
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 2015
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_37

    .line 2017
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2018
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :catchall_35
    move-exception p0

    goto :goto_43

    .line 2021
    :cond_37
    :goto_37
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_14

    .line 2023
    :cond_41
    monitor-exit v1

    return-object v0

    .line 2024
    :goto_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_35

    throw p0
.end method

.method public final getPendingJobsInNamespace(ILjava/lang/String;)Ljava/util/List;
    .registers 7

    .line 2028
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2029
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object p0

    .line 2030
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2032
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_33

    .line 2033
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 2034
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2035
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_35

    :cond_30
    :goto_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 2038
    :cond_33
    monitor-exit v0

    return-object p1

    .line 2039
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_2e

    throw p0
.end method

.method public getQuotaController()Lcom/android/server/job/controllers/QuotaController;
    .registers 1

    .line 5771
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    return-object p0
.end method

.method public getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;II)Lcom/android/server/job/controllers/JobStatus;
    .registers 33

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/16 v3, 0xb

    .line 3006
    const-string v4, "JobScheduler"

    if-ne v2, v3, :cond_31

    .line 3007
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 3012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3013
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because of user stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3012
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 3017
    :cond_31
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 3018
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    .line 3020
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v7

    .line 3021
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v9

    .line 3022
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v10

    .line 3023
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumSystemStops()I

    move-result v11

    .line 3024
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v12

    const/16 v13, 0xa

    const/16 v14, 0xd

    if-eq v2, v13, :cond_6e

    const/4 v13, 0x3

    if-eq v2, v13, :cond_6e

    const/16 v13, 0xc

    if-eq v2, v13, :cond_6e

    if-ne v1, v14, :cond_5f

    goto :goto_6e

    :cond_5f
    const-wide/32 v14, 0x163457ac

    .line 3034
    invoke-static {v14, v15, v12}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v14

    if-nez v14, :cond_75

    const/16 v13, 0xd

    if-ne v2, v13, :cond_75

    add-int/lit8 v10, v10, 0x1

    :cond_6e
    :goto_6e
    add-int/lit8 v9, v9, 0x1

    :goto_70
    move/from16 v20, v9

    move/from16 v22, v11

    goto :goto_78

    :cond_75
    add-int/lit8 v11, v11, 0x1

    goto :goto_70

    .line 3042
    :goto_78
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v2

    .line 3043
    invoke-virtual {v0, v10, v12}, Lcom/android/server/job/JobSchedulerService;->shouldUseAggressiveBackoff(II)Z

    move-result v9

    const/4 v11, 0x1

    if-eqz v9, :cond_84

    move v2, v11

    .line 3047
    :cond_84
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v12, v9, Lcom/android/server/job/JobSchedulerService$Constants;->SYSTEM_STOP_TO_FAILURE_RATIO:I

    div-int v12, v22, v12

    add-int v12, v20, v12

    if-nez v12, :cond_93

    const-wide/16 v4, 0x0

    :goto_90
    move-wide/from16 v16, v4

    goto :goto_c4

    :cond_93
    if-eqz v2, :cond_b1

    if-eq v2, v11, :cond_a0

    .line 3065
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_a0

    .line 3066
    const-string v2, "Unrecognised back-off policy, defaulting to exponential."

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    :cond_a0
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v14, v2, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    cmp-long v2, v7, v14

    if-gez v2, :cond_a9

    move-wide v7, v14

    :cond_a9
    long-to-float v2, v7

    sub-int/2addr v12, v11

    .line 3074
    invoke-static {v2, v12}, Ljava/lang/Math;->scalb(FI)F

    move-result v2

    float-to-long v7, v2

    goto :goto_ba

    .line 3058
    :cond_b1
    iget-wide v14, v9, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    cmp-long v2, v7, v14

    if-gez v2, :cond_b8

    move-wide v7, v14

    :cond_b8
    int-to-long v11, v12

    mul-long/2addr v7, v11

    :goto_ba
    const-wide/32 v11, 0x112a880

    .line 3079
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long v4, v5, v7

    goto :goto_90

    .line 3082
    :goto_c4
    new-instance v14, Lcom/android/server/job/controllers/JobStatus;

    .line 3085
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v23

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v25

    .line 3086
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getCumulativeExecutionTimeMs()J

    move-result-wide v27

    const-wide v18, 0x7fffffffffffffffL

    move-object/from16 v15, p1

    move/from16 v21, v10

    invoke-direct/range {v14 .. v28}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIIJJJ)V

    const/16 v13, 0xd

    if-ne v1, v13, :cond_e8

    const/4 v1, 0x2

    .line 3089
    invoke-virtual {v14, v1}, Lcom/android/server/job/controllers/JobStatus;->addInternalFlags(I)V

    .line 3091
    :cond_e8
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getCumulativeExecutionTimeMs()J

    move-result-wide v1

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_CUMULATIVE_UI_LIMIT_MS:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_fe

    .line 3092
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-eqz v1, :cond_fe

    const/4 v1, 0x4

    .line 3093
    invoke-virtual {v14, v1}, Lcom/android/server/job/controllers/JobStatus;->addInternalFlags(I)V

    .line 3095
    :cond_fe
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 3097
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v1

    .line 3096
    invoke-virtual {v14, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->setOriginalLatestRunTimeElapsed(J)V

    :cond_10b
    const/4 v1, 0x0

    .line 3099
    :goto_10c
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_124

    .line 3100
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    move-object/from16 v15, p1

    .line 3101
    invoke-virtual {v2, v14, v15}, Lcom/android/server/job/controllers/StateController;->rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10c

    :cond_124
    return-object v14
.end method

.method public getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .registers 29

    .line 3147
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 3150
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    .line 3151
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    const-wide v6, 0x757b12c00L

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 3150
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 3153
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v4

    .line 3154
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3153
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 3157
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    .line 3158
    const-string v11, "JobScheduler"

    if-ltz v10, :cond_48

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v6, v12

    if-nez v10, :cond_5d

    .line 3159
    :cond_48
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid periodic job original latest run time: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v6, v0

    :cond_5d
    sub-long v12, v0, v6

    .line 3164
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    cmp-long v10, v0, v6

    const-wide/16 v14, 0x6

    if-lez v10, :cond_ad

    .line 3168
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_86

    .line 3169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Periodic job ran after its intended window by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    :cond_86
    div-long v8, v12, v2

    const-wide/16 v18, 0x1

    add-long v18, v8, v18

    cmp-long v20, v2, v4

    if-eqz v20, :cond_a6

    sub-long v20, v2, v4

    .line 3176
    rem-long/2addr v12, v2

    sub-long v20, v20, v12

    div-long v12, v4, v14

    cmp-long v12, v20, v12

    if-gtz v12, :cond_a6

    if-eqz v10, :cond_a2

    .line 3178
    const-string v10, "Custom flex job ran too close to next window."

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    const-wide/16 v12, 0x2

    add-long v18, v8, v12

    :cond_a6
    mul-long v18, v18, v2

    add-long v6, v6, v18

    :cond_aa
    const-wide/16 v8, 0x0

    goto :goto_c0

    :cond_ad
    add-long/2addr v6, v2

    const-wide/32 v8, 0x1b7740

    cmp-long v10, v12, v8

    if-gez v10, :cond_aa

    .line 3187
    div-long v14, v2, v14

    cmp-long v10, v12, v14

    if-gez v10, :cond_aa

    sub-long/2addr v14, v12

    .line 3190
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :goto_c0
    cmp-long v10, v6, v0

    if-gez v10, :cond_f6

    .line 3195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rescheduling calculated latest runtime in the past: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    new-instance v12, Lcom/android/server/job/controllers/JobStatus;

    add-long v16, v0, v2

    sub-long v14, v16, v4

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 3201
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v21

    .line 3202
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v23

    const-wide/16 v25, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v26}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIIJJJ)V

    return-object v12

    :cond_f6
    sub-long/2addr v2, v8

    .line 3207
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long v14, v6, v0

    .line 3209
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_128

    .line 3210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rescheduling executed periodic. New execution window ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long v3, v14, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v6, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    :cond_128
    new-instance v12, Lcom/android/server/job/controllers/JobStatus;

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 3218
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v21

    .line 3219
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v23

    const-wide/16 v25, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v13, p1

    move-wide/from16 v16, v6

    invoke-direct/range {v12 .. v26}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIIJJJ)V

    return-object v12
.end method

.method public final getRunUserInitiatedJobsPermissionState(ILjava/lang/String;)I
    .registers 5

    .line 5759
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.RUN_USER_INITIATED_JOBS"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getStorageNotLow()Z
    .registers 2

    .line 5651
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5652
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 5653
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getStorageSeq()I
    .registers 2

    .line 5645
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5646
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 5647
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getTestableContext()Landroid/content/Context;
    .registers 1

    .line 1616
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getTransferredNetworkBytes(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;II)I
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    const/4 v5, 0x0

    .line 5707
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, -0x1

    move/from16 v8, p3

    if-eq v8, v7, :cond_15

    goto :goto_16

    :cond_15
    move v8, v5

    :goto_16
    const-wide/16 v9, 0x0

    invoke-interface {v6, v2, v9, v10, v8}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    if-gez v6, :cond_2f

    .line 5710
    const-string/jumbo v0, "unknown("

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5711
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5712
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v0, -0x3e8

    return v0

    .line 5716
    :cond_2f
    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_32} :catch_b1

    .line 5717
    :try_start_32
    iget-object v8, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v8, v6, v3, v4}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v8

    .line 5718
    sget-boolean v11, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v11, :cond_68

    .line 5719
    const-string v11, "JobScheduler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get-transferred-network-bytes "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "//"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    :catchall_66
    move-exception v0

    goto :goto_af

    :cond_68
    :goto_68
    if-nez v8, :cond_84

    .line 5723
    const-string/jumbo v0, "unknown("

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5724
    const-string v0, "/jid"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v0, -0x3e9

    .line 5725
    monitor-exit v7

    return v0

    .line 5730
    :cond_84
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0, v2, v6, v3, v4}, Lcom/android/server/job/JobConcurrencyManager;->getTransferredNetworkBytesLocked(Ljava/lang/String;ILjava/lang/String;I)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_8e

    move-wide v2, v9

    goto :goto_a1

    .line 5736
    :cond_8e
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 5737
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v14, v9

    move-wide v9, v2

    move-wide v2, v14

    :goto_a1
    if-nez p6, :cond_a7

    .line 5740
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_aa

    .line 5742
    :cond_a7
    invoke-virtual {v1, v9, v10}, Ljava/io/PrintWriter;->println(J)V

    .line 5744
    :goto_aa
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5745
    monitor-exit v7

    goto :goto_b1

    :goto_af
    monitor-exit v7
    :try_end_b0
    .catchall {:try_start_32 .. :try_end_b0} :catchall_66

    :try_start_b0
    throw v0
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_b1} :catch_b1

    :catch_b1
    :goto_b1
    return v5
.end method

.method public getUidBias(I)I
    .registers 4

    .line 2490
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2491
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 2492
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getUidCapabilities(I)I
    .registers 4

    .line 2500
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2501
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 2502
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getUidProcState(I)I
    .registers 4

    .line 2507
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2508
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 2509
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final hasPermission(IILjava/lang/String;)Z
    .registers 7

    .line 4794
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4795
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArrayMap;

    if-nez v1, :cond_1a

    .line 4797
    new-instance v1, Landroid/util/SparseArrayMap;

    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 4798
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_3e

    .line 4800
    :cond_1a
    :goto_1a
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_28

    .line 4802
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 4805
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p3, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    .line 4807
    :goto_35
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p2, p3, p1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4808
    monitor-exit v0

    return p0

    .line 4809
    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_18

    throw p0
.end method

.method public informObserversOfUserVisibleJobChange(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 5

    .line 4305
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4306
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4307
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 4308
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 4309
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 4310
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public isBatteryCharging()Z
    .registers 2

    .line 5613
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5614
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isCharging()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 5615
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isBatteryNotLow()Z
    .registers 2

    .line 5620
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5621
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isBatteryNotLow()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 5622
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5

    .line 4115
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    .line 4117
    const-string v1, "JobScheduler"

    if-nez v0, :cond_29

    .line 4118
    sget-boolean p0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p0, :cond_27

    .line 4119
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isComponentUsable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " component not present"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 p0, 0x0

    return p0

    .line 4126
    :cond_29
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/app/ActivityManagerInternal;->isAppBad(Ljava/lang/String;I)Z

    move-result p0

    .line 4127
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_56

    if-eqz p0, :cond_56

    .line 4128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App is bad for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " so not runnable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 2958
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 2964
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public isPowerConnected()Z
    .registers 2

    .line 5627
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5628
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isPowerConnected()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 5629
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    const/4 v0, 0x1

    .line 4053
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result p0

    return p0
.end method

.method public isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 13

    .line 4058
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v1

    .line 4060
    :goto_12
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v4, "isReadyToBeExecutedLocked: "

    const-string v5, "JobScheduler"

    if-eqz v3, :cond_38

    .line 4061
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ready="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    if-nez v0, :cond_5b

    .line 4069
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.jobscheduler.cts.jobtestapp"

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5a

    .line 4070
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "    NOT READY: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    return v2

    .line 4075
    :cond_5b
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 4076
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    .line 4077
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v3, :cond_9f

    .line 4080
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " exists="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " userStarted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " backingUp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    if-eqz v0, :cond_f1

    if-eqz v6, :cond_f1

    if-eqz v7, :cond_a6

    goto :goto_f1

    .line 4091
    :cond_a6
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v0

    if-eqz v0, :cond_ad

    return v2

    .line 4095
    :cond_ad
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz p2, :cond_be

    .line 4096
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p2, p1}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_be

    goto :goto_bf

    :cond_be
    move v1, v2

    :goto_bf
    if-eqz v3, :cond_e7

    .line 4099
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pending="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " active="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e7
    if-nez v0, :cond_f1

    if-eqz v1, :cond_ec

    goto :goto_f1

    .line 4111
    :cond_ec
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0

    :cond_f1
    :goto_f1
    return v2
.end method

.method public final isUidActive(I)Z
    .registers 2

    .line 1708
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActiveSynced(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$new$0(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8

    const/4 v4, 0x7

    .line 2226
    const-string/jumbo v5, "user removed"

    const/4 v2, 0x0

    const/16 v3, 0xd

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$new$2(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .registers 4

    .line 2625
    const-string/jumbo p1, "timeout-uij"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 2626
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    if-eqz p0, :cond_12

    .line 2627
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_UIJ:Lcom/android/server/utils/quota/Category;

    return-object p0

    .line 2628
    :cond_12
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    return-object p0

    .line 2630
    :cond_15
    const-string/jumbo p1, "timeout-ej"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 2631
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    if-eqz p0, :cond_27

    .line 2632
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_EJ:Lcom/android/server/utils/quota/Category;

    return-object p0

    .line 2633
    :cond_27
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    return-object p0

    .line 2635
    :cond_2a
    const-string/jumbo p1, "timeout-reg"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 2636
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    if-eqz p0, :cond_3c

    .line 2637
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_REG:Lcom/android/server/utils/quota/Category;

    return-object p0

    .line 2638
    :cond_3c
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    return-object p0

    .line 2640
    :cond_3f
    const-string/jumbo p1, "timeout-total"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 2641
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    if-eqz p0, :cond_51

    .line 2642
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_TOTAL:Lcom/android/server/utils/quota/Category;

    return-object p0

    .line 2643
    :cond_51
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    return-object p0

    .line 2645
    :cond_54
    const-string p1, "anr"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 2646
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    if-eqz p0, :cond_65

    .line 2647
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_ANR:Lcom/android/server/utils/quota/Category;

    return-object p0

    .line 2648
    :cond_65
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    return-object p0

    .line 2650
    :cond_68
    const-string p1, ".schedulePersisted()"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 2651
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    if-eqz p0, :cond_79

    .line 2652
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    return-object p0

    .line 2653
    :cond_79
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    return-object p0

    .line 2655
    :cond_7c
    const-string p1, ".schedulePersisted out-of-quota logged"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 2656
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    if-eqz p0, :cond_8d

    .line 2657
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    return-object p0

    .line 2658
    :cond_8d
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    return-object p0

    .line 2660
    :cond_90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected category tag: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    return-object p0
.end method

.method public final synthetic lambda$new$3()V
    .registers 13

    const/4 v0, -0x2

    .line 2755
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2758
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2759
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2762
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/server/job/JobStore;->getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2766
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_61

    .line 2768
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    .line 2769
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 2770
    sget-boolean v5, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v5, :cond_53

    .line 2771
    const-string v5, "JobScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  replacing "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :catchall_50
    move-exception v0

    move-object p0, v0

    goto :goto_63

    .line 2773
    :cond_53
    :goto_53
    const-string v11, "deferred rtc calculation"

    const/16 v9, 0xe

    const/16 v10, 0x9

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    move-object p0, v6

    goto :goto_1d

    .line 2776
    :cond_61
    monitor-exit v2

    return-void

    :goto_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_11 .. :try_end_64} :catchall_50

    throw p0
.end method

.method public final synthetic lambda$onBootPhase$4(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    const/4 v0, 0x0

    .line 2855
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 2856
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    const/4 v2, 0x0

    .line 2857
    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method

.method public final synthetic lambda$startControllerTrackingAsync$5()V
    .registers 4

    .line 2870
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2871
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1d

    .line 2872
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/StateController;->startTrackingLocked()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :catchall_1b
    move-exception p0

    goto :goto_24

    .line 2874
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1b

    .line 2875
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 2874
    :goto_24
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_1b

    throw p0
.end method

.method public final synthetic lambda$updateMediaBackupExemptionLocked$7(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 4024
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->updateMediaBackupExemptionStatus()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4025
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public maybeProcessBuggyJob(Lcom/android/server/job/controllers/JobStatus;I)V
    .registers 10

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_7

    move v0, v2

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    const-wide/32 v3, 0x163457ac

    .line 3228
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    .line 3227
    invoke-static {v3, v4, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    if-nez v3, :cond_1d

    const/16 v3, 0xd

    if-ne p2, v3, :cond_1b

    move v3, v2

    goto :goto_1c

    :cond_1b
    move v3, v1

    :goto_1c
    or-int/2addr v0, v3

    :cond_1d
    if-nez v0, :cond_55

    .line 3233
    iget-wide v3, p1, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_55

    .line 3234
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long/2addr v3, v5

    .line 3237
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz v0, :cond_3f

    .line 3239
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v5, v0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3d

    :goto_3c
    move v1, v2

    :cond_3d
    move v0, v1

    goto :goto_55

    .line 3240
    :cond_3f
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_4c

    .line 3241
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v5, v0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3d

    goto :goto_3c

    .line 3243
    :cond_4c
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v5, v0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3d

    goto :goto_3c

    :cond_55
    :goto_55
    const/4 v1, 0x4

    if-eqz v0, :cond_88

    .line 3247
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    move-result v0

    .line 3248
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v2

    .line 3249
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 3250
    iget-boolean v4, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz v4, :cond_6a

    .line 3251
    const-string/jumbo v4, "timeout-uij"

    goto :goto_75

    .line 3252
    :cond_6a
    iget-boolean v4, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v4, :cond_72

    .line 3253
    const-string/jumbo v4, "timeout-ej"

    goto :goto_75

    .line 3254
    :cond_72
    const-string/jumbo v4, "timeout-reg"

    .line 3249
    :goto_75
    invoke-virtual {v3, v0, v2, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 3255
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string/jumbo v4, "timeout-total"

    invoke-virtual {v3, v0, v2, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 3256
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v3, v2, v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    :cond_88
    const/16 v0, 0xc

    if-ne p2, v0, :cond_a7

    .line 3262
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result p2

    .line 3263
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3264
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v2, "anr"

    invoke-virtual {v0, p2, p1, v2}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 3265
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2, v1}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    :cond_a7
    return-void
.end method

.method public final maybeQueueReadyJobsForExecutionLocked()V
    .registers 3

    .line 3987
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3990
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3991
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 3992
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "JobScheduler"

    const-string v1, "Maybe queuing ready jobs..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3994
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->clearPendingJobQueue()V

    .line 3995
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 3996
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 3997
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcessLocked()V

    return-void
.end method

.method public maybeRunPendingJobsLocked()V
    .registers 3

    .line 4271
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 4272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pending queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " jobs."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4274
    :cond_26
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsLocked()V

    .line 4275
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    return-void
.end method

.method public final noteJobNonPending(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2

    .line 2978
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public final noteJobPending(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2

    .line 2968
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public noteJobsPending(Landroid/util/ArraySet;)V
    .registers 4

    .line 2972
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 2973
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobPending(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public notePendingUserRequestedAppStopInternal(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    .line 2183
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-gez v0, :cond_12

    .line 2185
    const-string p0, "JobScheduler"

    const-string p1, "Asked to stop jobs of an unknown package"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2188
    :cond_12
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2189
    :try_start_15
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2, p2, p1, p3}, Lcom/android/server/job/JobConcurrencyManager;->markJobsForUserStopLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 2190
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p1, v0}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object p1

    .line 2191
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_26
    if-ltz p2, :cond_7a

    .line 2192
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/job/controllers/JobStatus;

    const/4 v0, 0x2

    .line 2201
    invoke-virtual {p3, v0}, Lcom/android/server/job/controllers/JobStatus;->addInternalFlags(I)V

    .line 2205
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0, p3}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 2206
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v0
    :try_end_3d
    .catchall {:try_start_15 .. :try_end_3d} :catchall_75

    .line 2207
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    .line 2208
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 2207
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_64

    .line 2210
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 2211
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :catchall_62
    move-exception p0

    goto :goto_73

    .line 2214
    :cond_64
    :goto_64
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p3

    const/16 v3, 0xf

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2216
    monitor-exit v0

    goto :goto_77

    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3d .. :try_end_74} :catchall_62

    :try_start_74
    throw p0

    :catchall_75
    move-exception p0

    goto :goto_7c

    :cond_77
    :goto_77
    add-int/lit8 p2, p2, -0x1

    goto :goto_26

    .line 2219
    :cond_7a
    monitor-exit v1

    return-void

    :goto_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_75

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 15

    const/16 v0, 0x1e0

    if-ne v0, p1, :cond_21

    .line 2791
    :try_start_4
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_11

    .line 2793
    :catch_a
    const-string p1, "JobScheduler"

    const-string v0, "Couldn\'t wait on controller tracking start latch"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    :goto_11
    :try_start_11
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobStoreLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_18

    goto/16 :goto_117

    .line 2798
    :catch_18
    const-string p0, "JobScheduler"

    const-string p1, "Couldn\'t wait on job store loading latch"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_117

    :cond_21
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-ne v0, p1, :cond_e6

    .line 2801
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->start()V

    .line 2802
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_32
    if-ltz p1, :cond_42

    .line 2803
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/StateController;->onSystemServicesReady()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_32

    .line 2806
    :cond_42
    const-class p1, Lcom/android/server/AppStateTracker;

    .line 2807
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppStateTracker;

    .line 2806
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/AppStateTrackerImpl;

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 2809
    const-class p1, Lcom/android/server/StorageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/StorageManagerInternal;

    new-instance v0, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService-IA;)V

    .line 2810
    invoke-virtual {p1, v0}, Lcom/android/server/StorageManagerInternal;->registerCloudProviderChangeListener(Lcom/android/server/StorageManagerInternal$CloudProviderChangeListener;)V

    .line 2813
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 2814
    const-string p1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2815
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2816
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2817
    const-string p1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2818
    const-string p1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2819
    const-string/jumbo p1, "package"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2820
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2822
    new-instance v10, Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.UID_REMOVED"

    invoke-direct {v10, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2823
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2825
    new-instance v10, Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.USER_REMOVED"

    invoke-direct {v10, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2826
    const-string p1, "android.intent.action.USER_ADDED"

    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2827
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2830
    :try_start_bb
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v3, 0xf

    const/4 v4, -0x1

    invoke-interface {p1, v0, v3, v4, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_c7} :catch_c7

    .line 2838
    :catch_c7
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p1}, Lcom/android/server/job/JobConcurrencyManager;->onSystemReady()V

    .line 2841
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForNonExistentUsers()V

    .line 2843
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_d6
    if-ltz p1, :cond_117

    .line 2844
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v0}, Lcom/android/server/job/restrictions/JobRestriction;->onSystemServicesReady()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_d6

    :cond_e6
    const/16 v0, 0x258

    if-ne p1, v0, :cond_117

    .line 2847
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2849
    :try_start_ed
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 2850
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    .line 2851
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 2852
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->onThirdPartyAppsCanStart()V

    .line 2854
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 2862
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 2864
    monitor-exit p1

    return-void

    :catchall_113
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_116
    .catchall {:try_start_ed .. :try_end_116} :catchall_113

    throw p0

    :cond_117
    :goto_117
    return-void
.end method

.method public onControllerStateChanged(Landroid/util/ArraySet;)V
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_19

    .line 3370
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3371
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v1

    .line 3372
    :try_start_f
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->clear()V

    .line 3373
    monitor-exit v1

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw p0

    .line 3374
    :cond_19
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_52

    .line 3375
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3376
    :try_start_22
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 3377
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_4f

    .line 3378
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3379
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v2

    .line 3380
    :try_start_36
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_3b
    if-ltz v1, :cond_4b

    .line 3381
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 3382
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->resetPendingJobReasonsCache(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3b

    :catchall_49
    move-exception p0

    goto :goto_4d

    .line 3384
    :cond_4b
    monitor-exit v2

    return-void

    :goto_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_49

    throw p0

    :catchall_4f
    move-exception p0

    .line 3377
    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0

    :cond_52
    return-void
.end method

.method public onDeviceIdleStateChanged(Z)V
    .registers 6

    .line 2514
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2515
    :try_start_3
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_20

    .line 2516
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Doze state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_3f

    :cond_20
    :goto_20
    if-nez p1, :cond_3d

    .line 2520
    iget-boolean p1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz p1, :cond_3d

    .line 2521
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    const/4 v1, 0x1

    if-eqz p1, :cond_34

    .line 2522
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-nez v2, :cond_34

    .line 2523
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 2524
    invoke-interface {p1, v1}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    .line 2527
    :cond_34
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 2530
    :cond_3d
    monitor-exit v0

    return-void

    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_1e

    throw p0
.end method

.method public onJobCompletedLocked(Lcom/android/server/job/controllers/JobStatus;IIZ)V
    .registers 11

    .line 3284
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_2a

    .line 3285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reschedule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    :cond_2a
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    iget v3, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    aput-object p1, v2, v3

    .line 3290
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 3291
    iget v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    .line 3293
    invoke-virtual {p0, p1, p3}, Lcom/android/server/job/JobSchedulerService;->maybeProcessBuggyJob(Lcom/android/server/job/controllers/JobStatus;I)V

    const/4 v2, 0x7

    if-eq p3, v2, :cond_fe

    const/16 v2, 0x8

    if-ne p3, v2, :cond_4e

    goto/16 :goto_fe

    :cond_4e
    if-eqz p4, :cond_55

    .line 3312
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p2

    goto :goto_56

    :cond_55
    const/4 p2, 0x0

    :goto_56
    const-wide/32 v4, 0x163457ac

    .line 3315
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p4

    .line 3314
    invoke-static {v4, v5, p4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p4

    const/4 v2, 0x0

    if-nez p4, :cond_6a

    const/16 p4, 0xd

    if-ne p3, p4, :cond_6a

    move p4, v3

    goto :goto_6b

    :cond_6a
    move p4, v2

    :goto_6b
    if-eqz p2, :cond_7e

    .line 3318
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v4

    if-nez v4, :cond_7e

    const/4 v4, 0x3

    if-eq p3, v4, :cond_7b

    if-nez p4, :cond_7b

    const/4 p4, 0x2

    if-ne p3, p4, :cond_7e

    .line 3322
    :cond_7b
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->disallowRunInBatterySaverAndDoze()V

    .line 3327
    :cond_7e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p3

    xor-int/2addr p3, v3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result p3

    if-nez p3, :cond_b2

    if-eqz v0, :cond_94

    .line 3329
    const-string p2, "Could not find job to remove. Was job removed while executing?"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    :cond_94
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 3332
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p1

    .line 3331
    invoke-virtual {p2, p3, p4, p1}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p1

    if-eqz p1, :cond_b1

    .line 3336
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_b1
    return-void

    .line 3341
    :cond_b2
    const-string p3, "Unable to regrant job permissions for "

    if-eqz p2, :cond_d0

    .line 3343
    :try_start_b6
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_b9
    .catch Ljava/lang/SecurityException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_cc

    .line 3345
    :catch_ba
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    :goto_cc
    invoke-virtual {p0, p2, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_f7

    .line 3348
    :cond_d0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p2

    if-eqz p2, :cond_f7

    .line 3349
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p2

    .line 3351
    :try_start_de
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_e1
    .catch Ljava/lang/SecurityException; {:try_start_de .. :try_end_e1} :catch_e2

    goto :goto_f4

    .line 3353
    :catch_e2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    :goto_f4
    invoke-virtual {p0, p2, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 3357
    :cond_f7
    :goto_f7
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    .line 3358
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    return-void

    .line 3299
    :cond_fe
    :goto_fe
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    .line 3300
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    return-void
.end method

.method public onNetworkChanged(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;)V
    .registers 4

    .line 2535
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2536
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 2537
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->getRunningJobServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/JobServiceContext;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 2539
    invoke-virtual {p0, p2}, Lcom/android/server/job/JobServiceContext;->informOfNetworkChangeLocked(Landroid/net/Network;)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 2541
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public onRestrictedBucketChanged(Ljava/util/List;)V
    .registers 9

    .line 2546
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 2548
    const-string p0, "JobScheduler"

    const-string/jumbo p1, "onRestrictedBucketChanged called with no jobs"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2551
    :cond_f
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_13
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4b

    .line 2553
    :try_start_16
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 2554
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_23
    if-ltz v5, :cond_48

    .line 2557
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_3a

    .line 2558
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/RestrictingController;

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/RestrictingController;->startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_45

    :catchall_38
    move-exception p0

    goto :goto_56

    .line 2560
    :cond_3a
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/RestrictingController;

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/RestrictingController;->stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    :goto_45
    add-int/lit8 v5, v5, -0x1

    goto :goto_23

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2564
    :cond_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_16 .. :try_end_4c} :catchall_38

    .line 2565
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2564
    :goto_56
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_38

    throw p0
.end method

.method public onRestrictionStateChanged(Lcom/android/server/job/restrictions/JobRestriction;Z)V
    .registers 5

    .line 3391
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    if-eqz p2, :cond_19

    .line 3393
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 3394
    :try_start_f
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->maybeStopOvertimeJobsLocked(Lcom/android/server/job/restrictions/JobRestriction;)V

    .line 3395
    monitor-exit p2

    return-void

    :catchall_16
    move-exception p0

    monitor-exit p2
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw p0

    :cond_19
    return-void
.end method

.method public onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    if-nez p1, :cond_d

    .line 3402
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 3404
    :cond_d
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 2781
    const-string v0, "jobscheduler"

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserCompletedEvent(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V
    .registers 3

    .line 1676
    invoke-virtual {p2}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserStarting()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p2}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 1679
    :cond_e
    :goto_e
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 1668
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1669
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 1670
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 1699
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1700
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 1701
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    if-eqz p1, :cond_27

    .line 1685
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1688
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    .line 1689
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    .line 1687
    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManagerInternal;->isEarlyPackageKillEnabledForUserSwitch(II)Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_27

    .line 1692
    :cond_13
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1693
    :try_start_16
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 1694
    monitor-exit p2

    return-void

    :catchall_24
    move-exception p0

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_24

    throw p0

    :cond_27
    :goto_27
    return-void
.end method

.method public final queueReadyJobsForExecutionLocked()V
    .registers 5

    .line 3605
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3606
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3609
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3613
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3614
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 3615
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_2a

    .line 3616
    const-string/jumbo v2, "queuing all ready jobs for execution:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->clearPendingJobQueue()V

    .line 3619
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 3620
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 3621
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->-$$Nest$mpostProcessLocked(Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;)V

    if-eqz v0, :cond_60

    .line 3624
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {p0}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result p0

    if-nez p0, :cond_4c

    .line 3626
    const-string p0, "No jobs pending."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3628
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " jobs queued."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return-void
.end method

.method public reportActiveLocked()V
    .registers 6

    .line 2570
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_2b

    .line 2572
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager;->getRunningJobsLocked()Landroid/util/ArraySet;

    move-result-object v2

    .line 2573
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_19
    if-ltz v3, :cond_2b

    .line 2574
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 2575
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_2c

    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    :cond_2b
    move v1, v0

    .line 2584
    :goto_2c
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eq v0, v1, :cond_39

    .line 2585
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 2586
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz p0, :cond_39

    .line 2587
    invoke-interface {p0, v1}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    :cond_39
    return-void
.end method

.method public reportAppUsage(Ljava/lang/String;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public resetExecutionQuota(Ljava/lang/String;I)V
    .registers 4

    .line 5910
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5911
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/job/controllers/QuotaController;->clearAppStatsLocked(ILjava/lang/String;)V

    .line 5912
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public resetPendingJobReasonsCache(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 2946
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v0

    .line 2947
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    .line 2948
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_1f

    .line 2950
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 2952
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1d

    throw p0
.end method

.method public resetScheduleQuota()V
    .registers 1

    .line 5916
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->clear()V

    return-void
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 93

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    .line 1716
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1717
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v2

    const/4 v13, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_ee

    if-nez v9, :cond_1e

    move-object v2, v1

    goto :goto_1f

    :cond_1e
    move-object v2, v9

    .line 1721
    :goto_1f
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v5, ".schedulePersisted()"

    invoke-virtual {v4, v10, v2, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e7

    .line 1722
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v5, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v4, v10, v2, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 1724
    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has called schedule() too many times"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v5, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v4, v10, v2, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1727
    :cond_58
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    const/4 v5, 0x4

    invoke-interface {v4, v2, v10, v5}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 1729
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    if-eqz v4, :cond_e0

    .line 1731
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1732
    :try_start_67
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_8e

    if-nez v5, :cond_9a

    .line 1734
    :try_start_6f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-wide/16 v11, 0x0

    .line 1735
    invoke-interface {v5, v2, v11, v12, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_92

    .line 1737
    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_85

    move v5, v13

    goto :goto_86

    :cond_85
    move v5, v3

    .line 1738
    :goto_86
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1737
    invoke-virtual {v7, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_8d} :catch_90
    .catchall {:try_start_6f .. :try_end_8d} :catchall_8e

    goto :goto_9a

    :catchall_8e
    move-exception v0

    goto :goto_de

    :catch_90
    move-exception v0

    goto :goto_94

    .line 1740
    :cond_92
    :try_start_92
    monitor-exit v4

    return v3

    .line 1743
    :goto_94
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1746
    :cond_9a
    :goto_9a
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1747
    monitor-exit v4
    :try_end_a7
    .catchall {:try_start_92 .. :try_end_a7} :catchall_8e

    if-nez v5, :cond_aa

    goto :goto_e0

    .line 1750
    :cond_aa
    new-instance v1, Landroid/os/LimitExceededException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedule()/enqueue() called more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 1752
    invoke-virtual {v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->getLimit(Lcom/android/server/utils/quota/Category;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " times in the past "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 1755
    invoke-virtual {v0, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->getWindowSizeMs(Lcom/android/server/utils/quota/Category;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms. See the documentation for more information."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1747
    :goto_de
    :try_start_de
    monitor-exit v4
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_8e

    throw v0

    .line 1760
    :cond_e0
    :goto_e0
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    if-eqz v4, :cond_e7

    return v3

    .line 1764
    :cond_e7
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v5, ".schedulePersisted()"

    invoke-virtual {v4, v10, v2, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1767
    :cond_ee
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, v8, v1}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_123

    .line 1768
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not scheduling job for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- package not allowed to start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    const-string v0, "job_scheduler.value_cntr_w_uid_schedule_failure_app_start_mode_disabled"

    invoke-static {v0, v8}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return v3

    .line 1776
    :cond_123
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_17f

    .line 1777
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1779
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v4

    .line 1778
    invoke-static {v4, v5}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v2

    int-to-float v2, v2

    .line 1777
    invoke-virtual {v1, v2}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 1780
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1781
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v2

    int-to-float v2, v2

    .line 1780
    invoke-virtual {v1, v2}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 1782
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sJobMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1783
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v2

    int-to-float v2, v2

    .line 1782
    invoke-virtual {v1, v8, v2}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    if-eqz v6, :cond_17f

    .line 1785
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1787
    invoke-virtual {v6}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v4

    .line 1786
    invoke-static {v4, v5}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v2

    int-to-float v2, v2

    .line 1785
    invoke-virtual {v1, v2}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 1788
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1790
    invoke-virtual {v6}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v4

    .line 1789
    invoke-static {v4, v5}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v2

    int-to-float v2, v2

    .line 1788
    invoke-virtual {v1, v2}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 1791
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sJwiMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1793
    invoke-virtual {v6}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide v4

    .line 1792
    invoke-static {v4, v5}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v2

    int-to-float v2, v2

    .line 1791
    invoke-virtual {v1, v8, v2}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    :cond_17f
    if-eqz v6, :cond_186

    .line 1798
    const-string v1, "job_scheduler.value_cntr_w_uid_job_work_items_enqueued"

    invoke-static {v1, v8}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1802
    :cond_186
    iget-object v14, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1803
    :try_start_189
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 1804
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    move-object/from16 v11, p6

    invoke-virtual {v1, v8, v11, v2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    if-eqz v6, :cond_219

    if-eqz v1, :cond_219

    .line 1809
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    move-object/from16 v7, p1

    invoke-virtual {v2, v7}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_216

    .line 1822
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    if-lt v2, v3, :cond_1ef

    .line 1823
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v2

    if-nez v2, :cond_1b6

    goto :goto_1ef

    .line 1824
    :cond_1b6
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many JWIs for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Apps may not persist more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " JobWorkItems per job"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1ec
    move-exception v0

    goto/16 :goto_429

    .line 1830
    :cond_1ef
    :goto_1ef
    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    .line 1831
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v2

    if-eqz v2, :cond_200

    const/4 v2, 0x6

    .line 1837
    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/JobStatus;->removeInternalFlags(I)V

    .line 1841
    :cond_200
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1842
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1843
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v8, v3}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 1847
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v1, v0}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 1849
    monitor-exit v14

    return v13

    :cond_216
    :goto_216
    move-object/from16 v12, p7

    goto :goto_21c

    :cond_219
    move-object/from16 v7, p1

    goto :goto_216

    .line 1853
    :goto_21c
    invoke-static/range {v7 .. v12}, Lcom/android/server/job/controllers/JobStatus;->createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 1857
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v4

    if-eqz v4, :cond_235

    .line 1858
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v4, v2}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-nez v4, :cond_235

    .line 1859
    const-string v0, "job_scheduler.value_cntr_w_uid_schedule_failure_ej_out_of_quota"

    invoke-static {v0, v8}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1862
    monitor-exit v14

    return v3

    .line 1870
    :cond_235
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 1872
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_258

    const-string v3, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCHEDULE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_258
    if-nez p4, :cond_288

    .line 1875
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v8}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    move-result v3

    const/16 v4, 0x96

    if-gt v3, v4, :cond_265

    goto :goto_288

    .line 1876
    :cond_265
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many jobs for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    const-string v0, "job_scheduler.value_cntr_w_uid_max_scheduling_limit_hit"

    invoke-static {v0, v8}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1879
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Apps may not schedule more than 150 distinct jobs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1885
    :cond_288
    :goto_288
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    const/4 v7, 0x0

    if-eqz v1, :cond_2df

    if-eqz v6, :cond_2d7

    .line 1900
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v3

    if-eqz v3, :cond_2d7

    .line 1901
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    if-ge v3, v4, :cond_2a1

    goto :goto_2d7

    .line 1902
    :cond_2a1
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many JWIs for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Apps may not persist more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " JobWorkItems per job"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1909
    :cond_2d7
    :goto_2d7
    const-string v5, "job rescheduled by app"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    goto :goto_2e2

    .line 1912
    :cond_2df
    invoke-virtual {v0, v2, v7}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    :goto_2e2
    if-eqz v6, :cond_2f1

    .line 1917
    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    .line 1918
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1919
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v8, v3}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 1922
    :cond_2f1
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    .line 1924
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v3

    if-eqz v3, :cond_302

    .line 1925
    filled-new-array {v1, v8}, [I

    move-result-object v1

    :goto_2ff
    move-object/from16 v16, v1

    goto :goto_307

    :cond_302
    filled-new-array {v1}, [I

    move-result-object v1

    goto :goto_2ff

    .line 1928
    :goto_307
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isProxyJob()Z

    move-result v1

    if-eqz v1, :cond_318

    .line 1929
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v7, v1}, [Ljava/lang/String;

    move-result-object v1

    :goto_315
    move-object/from16 v17, v1

    goto :goto_321

    .line 1930
    :cond_318
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_315

    .line 1931
    :goto_321
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v18

    .line 1933
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v21

    .line 1934
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getLoggingJobId()J

    move-result-wide v22

    .line 1935
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v24

    .line 1936
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v25

    .line 1937
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v26

    .line 1938
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v27

    .line 1939
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v28

    .line 1940
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v29

    .line 1941
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v30

    .line 1942
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v31

    .line 1943
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v32

    .line 1946
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v35

    .line 1947
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v36

    .line 1948
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v37

    .line 1949
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v38

    .line 1950
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v39

    .line 1960
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v51

    .line 1962
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v53

    .line 1963
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v54

    .line 1964
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v56

    .line 1965
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkUploadBytes()J

    move-result-wide v58

    .line 1966
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v60

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 1967
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v61

    .line 1968
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNamespaceHash()Ljava/lang/String;

    move-result-object v62

    .line 1973
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v71

    .line 1974
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v73

    .line 1975
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v75

    .line 1977
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->canApplyTransportAffinities()Z

    move-result v77

    .line 1978
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumAppliedFlexibleConstraints()I

    move-result v78

    .line 1979
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumDroppedFlexibleConstraints()I

    move-result v79

    .line 1980
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    move-result-object v80

    .line 1981
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    move-result-object v81

    .line 1982
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v82

    .line 1984
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v1

    add-int/lit8 v83, v1, 0x1

    .line 1986
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    .line 1985
    invoke-virtual {v0, v1, v3}, Lcom/android/server/job/JobSchedulerService;->shouldUseAggressiveBackoff(II)Z

    move-result v84

    const/16 v15, 0x8

    const/16 v19, 0x2

    const/16 v20, -0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    const/16 v52, 0x0

    const-wide/16 v63, 0x0

    const-wide/16 v65, 0x0

    const-wide/16 v67, 0x0

    const-wide/16 v69, 0x0

    const/16 v76, 0x0

    .line 1923
    invoke-static/range {v15 .. v84}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;IIZ)V

    .line 1997
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_427

    .line 2000
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2001
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v1, v2}, Lcom/android/server/job/PendingJobQueue;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2002
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 2004
    :cond_427
    monitor-exit v14

    return v13

    :goto_429
    monitor-exit v14
    :try_end_42a
    .catchall {:try_start_189 .. :try_end_42a} :catchall_1ec

    throw v0
.end method

.method public setCacheConfigChanges(Z)V
    .registers 3

    .line 5633
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5634
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->setCacheConfigChangesLocked(Z)V

    .line 5635
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setFlexPolicy(ZI)V
    .registers 5

    .line 5592
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 5593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFlexPolicy(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5596
    :cond_23
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/FlexibilityController;->setLocalPolicyForTesting(ZI)V

    return-void
.end method

.method public setMonitorBattery(Z)V
    .registers 3

    .line 5600
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5601
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->setMonitorBatteryLocked(Z)V

    .line 5602
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public shouldUseAggressiveBackoff(II)Z
    .registers 5

    const-wide/32 v0, 0x163457ac

    .line 3116
    invoke-static {v0, v1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p2

    if-nez p2, :cond_11

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ABANDONED_JOB_TIMEOUTS_BEFORE_AGGRESSIVE_BACKOFF:I

    if-le p1, p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public final startControllerTrackingAsync()V
    .registers 3

    .line 2869
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    new-instance v1, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7

    .line 2885
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPreparedLocked()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not yet prepared when started tracking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    :cond_1c
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    const/4 v0, 0x0

    if-eqz p2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    move v1, v0

    .line 2890
    :goto_2a
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, p1}, Lcom/android/server/job/JobStore;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2892
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->resetPendingJobReasonsCache(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2893
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v2, :cond_52

    .line 2894
    :goto_36
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 2895
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    if-eqz v1, :cond_4c

    const/4 v3, 0x0

    .line 2897
    invoke-virtual {v2, p1, v3}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 2899
    :cond_4c
    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_52
    return-void
.end method

.method public final stopNonReadyActiveJobsLocked()V
    .registers 1

    .line 3594
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->stopNonReadyActiveJobsLocked()V

    return-void
.end method

.method public final stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 8

    .line 2912
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2914
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v0

    .line 2915
    :try_start_6
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    .line 2916
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_22

    .line 2918
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_61

    .line 2920
    :cond_22
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_20

    .line 2923
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result p3

    if-nez p3, :cond_45

    .line 2933
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job didn\'t exist in JobStore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    :cond_45
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v0, :cond_60

    const/4 v0, 0x0

    .line 2936
    :goto_4a
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_60

    .line 2937
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 2938
    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_60
    return p3

    .line 2920
    :goto_61
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_20

    throw p0
.end method

.method public triggerDockState(Z)V
    .registers 3

    if-eqz p1, :cond_a

    .line 5922
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DOCK_IDLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_11

    .line 5924
    :cond_a
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DOCK_ACTIVE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5926
    :goto_11
    const-string v0, "android"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x50000000

    .line 5927
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5928
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final updateMediaBackupExemptionLocked(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 4018
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 4022
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance p2, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {p1, v0, p2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 4028
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateQuotaTracker()V
    .registers 7

    .line 642
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v2, v1, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    if-nez v2, :cond_f

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    :goto_10
    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->setEnabled(Z)V

    .line 644
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v2, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 647
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_UIJ:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_UIJ_COUNT:I

    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 650
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_EJ:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_EJ_COUNT:I

    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 653
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_REG:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_REG_COUNT:I

    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 656
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_TOTAL:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_TOTAL_COUNT:I

    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 659
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_ANR:Lcom/android/server/utils/quota/Category;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_COUNT:I

    iget-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_WINDOW_MS:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    return-void
.end method

.method public updateUidState(III)V
    .registers 10

    .line 2449
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 2450
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " proc state changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2451
    invoke-static {p2}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with capabilities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2452
    invoke-static {p3}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2450
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    :cond_32
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2455
    :try_start_35
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2456
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v4, 0x2

    if-ne p2, v4, :cond_4f

    .line 2461
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/16 v5, 0x28

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_6a

    :catchall_4c
    move-exception p0

    goto/16 :goto_c9

    :cond_4f
    const/4 v4, 0x4

    if-gt p2, v4, :cond_5a

    .line 2463
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/16 v5, 0x23

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_6a

    :cond_5a
    const/4 v4, 0x5

    if-gt p2, v4, :cond_65

    .line 2465
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/16 v5, 0x1e

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_6a

    .line 2467
    :cond_65
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :goto_6a
    if-eqz p3, :cond_77

    const/16 v4, 0x14

    if-ne p2, v4, :cond_71

    goto :goto_77

    .line 2473
    :cond_71
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_7c

    .line 2471
    :cond_77
    :goto_77
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2475
    :goto_7c
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq v2, p2, :cond_c7

    if-eqz v0, :cond_ac

    .line 2478
    const-string p3, "JobScheduler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bias changed from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    :cond_ac
    :goto_ac
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_c2

    .line 2481
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p3, p1, v2, p2}, Lcom/android/server/job/controllers/StateController;->onUidBiasChangedLocked(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_ac

    .line 2483
    :cond_c2
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, v2, p2}, Lcom/android/server/job/JobConcurrencyManager;->onUidBiasChangedLocked(II)V

    .line 2485
    :cond_c7
    monitor-exit v1

    return-void

    :goto_c9
    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_35 .. :try_end_ca} :catchall_4c

    throw p0
.end method

.method public waitOnAsyncLoadingForTesting()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5776
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method
