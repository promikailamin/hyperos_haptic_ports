.class public final Lcom/android/server/job/controllers/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"


# static fields
.field static final CONSTRAINTS_OF_INTEREST:I = -0x6b7ffff1

.field static final CONSTRAINT_BACKGROUND_NOT_RESTRICTED:I = 0x400000

.field static final CONSTRAINT_BATTERY_NOT_LOW:I = 0x2

.field static final CONSTRAINT_CHARGING:I = 0x1

.field static final CONSTRAINT_CONNECTIVITY:I = 0x10000000

.field static final CONSTRAINT_CONTENT_TRIGGER:I = 0x4000000

.field static final CONSTRAINT_DEADLINE:I = 0x40000000

.field static final CONSTRAINT_DEVICE_NOT_DOZING:I = 0x2000000

.field static final CONSTRAINT_IDLE:I = 0x4

.field static final CONSTRAINT_PREFETCH:I = 0x800000

.field static final CONSTRAINT_STORAGE_NOT_LOW:I = 0x8

.field static final CONSTRAINT_TARE_WEALTH:I = 0x8000000

.field static final CONSTRAINT_TIMING_DELAY:I = -0x80000000

.field static final CONSTRAINT_WITHIN_QUOTA:I = 0x1000000

.field static final DEBUG:Z

.field static final DEBUG_PREPARE:Z = true

.field public static final DEFAULT_TRIGGER_MAX_DELAY:J = 0x1d4c0L

.field public static final DEFAULT_TRIGGER_UPDATE_DELAY:J = 0x2710L

.field private static final DYNAMIC_EXPEDITED_DEFERRAL_CONSTRAINTS:I = 0x2400000

.field private static final DYNAMIC_RESTRICTED_CONSTRAINTS:I = 0x10000007

.field public static final INTERNAL_FLAG_HAS_FOREGROUND_EXEMPTION:I = 0x1

.field private static final MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

.field public static final MIN_TRIGGER_MAX_DELAY:J = 0x3e8L

.field public static final MIN_TRIGGER_UPDATE_DELAY:J = 0x1f4L

.field public static final NO_EARLIEST_RUNTIME:J = 0x0L

.field public static final NO_LATEST_RUNTIME:J = 0x7fffffffffffffffL

.field private static final NUM_CONSTRAINT_CHANGE_HISTORY:I = 0xa

.field public static final OVERRIDE_FULL:I = 0x3

.field public static final OVERRIDE_NONE:I = 0x0

.field public static final OVERRIDE_SOFT:I = 0x2

.field public static final OVERRIDE_SORTING:I = 0x1

.field static final SOFT_OVERRIDE_CONSTRAINTS:I = -0x7f7ffff1

.field private static final STATSD_CONSTRAINTS_TO_LOG:I = -0x327ffffc

.field private static final STATS_LOG_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "JobScheduler.JobStatus"

.field public static final TRACKING_BATTERY:I = 0x1

.field public static final TRACKING_CONNECTIVITY:I = 0x2

.field public static final TRACKING_CONTENT:I = 0x4

.field public static final TRACKING_IDLE:I = 0x8

.field public static final TRACKING_QUOTA:I = 0x40

.field public static final TRACKING_STORAGE:I = 0x10

.field public static final TRACKING_TIME:I = 0x20


# instance fields
.field appHasDozeExemption:Z

.field final batteryName:Ljava/lang/String;

.field final callingUid:I

.field public changedAuthorities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public changedUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

.field private final earliestRunTimeElapsedMillis:J

.field public enqueueTime:J

.field public executingWork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field final job:Landroid/app/job/JobInfo;

.field public lastEvaluatedBias:I

.field private final latestRunTimeElapsedMillis:J

.field private mConstraintChangeHistoryIndex:I

.field private final mConstraintStatusHistory:[I

.field private final mConstraintUpdatedTimesElapsed:[J

.field private mDynamicConstraints:I

.field private mExpeditedQuotaApproved:Z

.field private mExpeditedTareApproved:Z

.field private mFirstForceBatchedTimeElapsed:J

.field private final mHasExemptedMediaUrisOnly:Z

.field private mHasMediaBackupExemption:Z

.field private mInternalFlags:I

.field private mIsUserBgRestricted:Z

.field private mLastFailedRunTime:J

.field private mLastSuccessfulRunTime:J

.field private mLoggedBucketMismatch:Z

.field private mMinimumNetworkChunkBytes:J

.field private mOriginalLatestRunTimeElapsedMillis:J

.field private mPersistedUtcTimes:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReadyDeadlineSatisfied:Z

.field private mReadyDynamicSatisfied:Z

.field private mReadyNotDozing:Z

.field private mReadyNotRestrictedInBg:Z

.field private mReadyTareWealth:Z

.field private mReadyWithinQuota:Z

.field private mReasonReadyToUnready:I

.field private final mRequiredConstraintsOfInterest:I

.field private mSatisfiedConstraintsOfInterest:I

.field private mTotalNetworkDownloadBytes:J

.field private mTotalNetworkUploadBytes:J

.field public madeActive:J

.field public madePending:J

.field public network:Landroid/net/Network;

.field public nextPendingWorkId:I

.field private final numFailures:I

.field public overrideState:I

.field public pendingWork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private prepared:Z

.field final requiredConstraints:I

.field satisfiedConstraints:I

.field public serviceInfo:Landroid/content/pm/ServiceInfo;

.field final sourcePackageName:Ljava/lang/String;

.field final sourceTag:Ljava/lang/String;

.field final sourceUid:I

.field final sourceUserId:I

.field private standbyBucket:I

.field public startedAsExpeditedJob:Z

.field final tag:Ljava/lang/String;

.field private trackingControllers:I

.field public uidActive:Z

.field private unpreparedPoint:Ljava/lang/Throwable;

.field private uriPerms:Lcom/android/server/job/GrantedUriPermissions;

.field private whenStandbyDeferred:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 82
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJII)V
    .registers 37
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "callingUid"    # I
    .param p3, "sourcePackageName"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "standbyBucket"    # I
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "numFailures"    # I
    .param p8, "earliestRunTimeElapsedMillis"    # J
    .param p10, "latestRunTimeElapsedMillis"    # J
    .param p12, "lastSuccessfulRunTime"    # J
    .param p14, "lastFailedRunTime"    # J
    .param p16, "internalFlags"    # I
    .param p17, "dynamicConstraints"    # I

    .line 470
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v11, 0x0

    iput-object v11, v1, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 252
    const/4 v12, 0x0

    iput v12, v1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 253
    iput v12, v1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 258
    iput v12, v1, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 340
    iput-boolean v12, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 348
    const/4 v0, 0x1

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 351
    iput v12, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 387
    iput v12, v1, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    .line 388
    const/16 v0, 0xa

    new-array v13, v0, [J

    iput-object v13, v1, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    .line 389
    new-array v0, v0, [I

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    .line 397
    const-wide/16 v13, -0x1

    iput-wide v13, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 398
    iput-wide v13, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 399
    iput-wide v13, v1, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    .line 442
    iput v12, v1, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 471
    iput-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 472
    iput v3, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 473
    iput v6, v1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 475
    const/4 v13, -0x1

    .line 476
    .local v13, "tempSourceUid":I
    const-wide/16 v14, 0x0

    const/4 v12, -0x1

    if-eq v5, v12, :cond_53

    if-eqz v4, :cond_53

    .line 478
    :try_start_48
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v4, v14, v15, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_50} :catch_52

    move v13, v0

    .line 482
    goto :goto_53

    .line 480
    :catch_52
    move-exception v0

    .line 484
    :cond_53
    :goto_53
    if-ne v13, v12, :cond_6c

    .line 485
    iput v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 486
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 488
    iput-object v11, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    move-object/from16 v11, p6

    goto :goto_76

    .line 490
    :cond_6c
    iput v13, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 491
    iput v5, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 492
    iput-object v4, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 493
    move-object/from16 v11, p6

    iput-object v11, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 496
    :goto_76
    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    if-eqz v0, :cond_9c

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ":"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a4

    .line 498
    :cond_9c
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_a4
    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 499
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "*job*/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    .line 501
    iput-wide v7, v1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 502
    iput-wide v9, v1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 503
    iput-wide v9, v1, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    .line 504
    move/from16 v12, p7

    iput v12, v1, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    .line 506
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getConstraintFlags()I

    move-result v0

    .line 507
    .local v0, "requiredConstraints":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v14

    if-eqz v14, :cond_d2

    .line 508
    const/high16 v14, 0x10000000

    or-int/2addr v0, v14

    .line 510
    :cond_d2
    const-wide/16 v14, 0x0

    cmp-long v14, v7, v14

    if-eqz v14, :cond_db

    .line 511
    const/high16 v14, -0x80000000

    or-int/2addr v0, v14

    .line 513
    :cond_db
    const-wide v14, 0x7fffffffffffffffL

    cmp-long v14, v9, v14

    if-eqz v14, :cond_e7

    .line 514
    const/high16 v14, 0x40000000    # 2.0f

    or-int/2addr v0, v14

    .line 516
    :cond_e7
    const/4 v14, 0x0

    .line 517
    .local v14, "exemptedMediaUrisOnly":Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v15

    if-eqz v15, :cond_119

    .line 518
    const/high16 v15, 0x4000000

    or-int/2addr v0, v15

    .line 519
    const/4 v14, 0x1

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v15

    move/from16 v16, v0

    .end local v0    # "requiredConstraints":I
    .local v16, "requiredConstraints":I
    array-length v0, v15

    const/4 v3, 0x0

    :goto_fa
    if-ge v3, v0, :cond_117

    aget-object v17, v15, v3

    .line 521
    .local v17, "uri":Landroid/app/job/JobInfo$TriggerContentUri;
    move/from16 v18, v0

    sget-object v0, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 522
    const/4 v14, 0x0

    .line 523
    move/from16 v0, v16

    goto :goto_119

    .line 520
    .end local v17    # "uri":Landroid/app/job/JobInfo$TriggerContentUri;
    :cond_110
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, p3

    move/from16 v0, v18

    goto :goto_fa

    :cond_117
    move/from16 v0, v16

    .line 527
    .end local v16    # "requiredConstraints":I
    .restart local v0    # "requiredConstraints":I
    :cond_119
    :goto_119
    iput-boolean v14, v1, Lcom/android/server/job/controllers/JobStatus;->mHasExemptedMediaUrisOnly:Z

    .line 528
    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    .line 529
    const v3, -0x6b7ffff1

    and-int/2addr v3, v0

    iput v3, v1, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    .line 530
    move/from16 v3, p17

    invoke-direct {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 532
    const/4 v4, 0x5

    if-ne v6, v4, :cond_138

    .line 533
    const v4, 0x10000007

    invoke-direct {v1, v4}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    goto :goto_13b

    .line 535
    :cond_138
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 538
    :goto_13b
    move-wide/from16 v3, p12

    iput-wide v3, v1, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    .line 539
    move-wide/from16 v3, p14

    iput-wide v3, v1, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    .line 541
    move/from16 v15, p16

    iput v15, v1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 543
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    .line 545
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v16

    if-eqz v16, :cond_185

    .line 549
    move/from16 v16, v0

    .end local v0    # "requiredConstraints":I
    .restart local v16    # "requiredConstraints":I
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v0, v2}, Landroid/app/job/JobInfo$Builder;-><init>(Landroid/app/job/JobInfo;)V

    .line 550
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    .line 551
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/NetworkRequest$Builder;-><init>(Landroid/net/NetworkRequest;)V

    .line 552
    .local v2, "requestBuilder":Landroid/net/NetworkRequest$Builder;
    new-instance v3, Landroid/util/Range;

    iget v4, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 553
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 552
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    .line 554
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 557
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->build(Z)Landroid/app/job/JobInfo;

    move-result-object v3

    .end local p1    # "job":Landroid/app/job/JobInfo;
    .local v3, "job":Landroid/app/job/JobInfo;
    goto :goto_189

    .line 545
    .end local v2    # "requestBuilder":Landroid/net/NetworkRequest$Builder;
    .end local v3    # "job":Landroid/app/job/JobInfo;
    .end local v16    # "requiredConstraints":I
    .local v0, "requiredConstraints":I
    .restart local p1    # "job":Landroid/app/job/JobInfo;
    :cond_185
    move/from16 v16, v0

    .end local v0    # "requiredConstraints":I
    .restart local v16    # "requiredConstraints":I
    move-object/from16 v3, p1

    .line 560
    .end local p1    # "job":Landroid/app/job/JobInfo;
    .restart local v3    # "job":Landroid/app/job/JobInfo;
    :goto_189
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->updateMediaBackupExemptionStatus()Z

    .line 561
    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;JJJJLandroid/util/Pair;II)V
    .registers 37
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "callingUid"    # I
    .param p3, "sourcePkgName"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "standbyBucket"    # I
    .param p6, "sourceTag"    # Ljava/lang/String;
    .param p7, "earliestRunTimeElapsedMillis"    # J
    .param p9, "latestRunTimeElapsedMillis"    # J
    .param p11, "lastSuccessfulRunTime"    # J
    .param p13, "lastFailedRunTime"    # J
    .param p16, "innerFlags"    # I
    .param p17, "dynamicConstraints"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobInfo;",
            "I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "JJJJ",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    .local p15, "persistedExecutionTimesUTC":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move/from16 v17, p16

    move/from16 v18, p17

    .line 595
    const/4 v8, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJII)V

    .line 605
    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 606
    if-eqz v0, :cond_2f

    .line 607
    sget-boolean v2, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v2, :cond_2f

    .line 608
    const-string v2, "JobScheduler.JobStatus"

    const-string v3, "+ restored job with RTC times because of bad boot clock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_2f
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 22
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 566
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    .line 567
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    .line 568
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v6

    .line 569
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v8

    .line 570
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v11

    .line 571
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v15

    .line 572
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v17

    move-object/from16 v19, v1

    iget v1, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    move/from16 v18, v1

    .line 566
    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v18}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJII)V

    .line 573
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 574
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v1, :cond_5c

    .line 575
    sget-boolean v1, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v1, :cond_5c

    .line 576
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "here"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v3, "JobScheduler.JobStatus"

    const-string v4, "Cloning job with persisted run times"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    :cond_5c
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V
    .registers 31
    .param p1, "rescheduling"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "newEarliestRuntimeElapsedMillis"    # J
    .param p4, "newLatestRuntimeElapsedMillis"    # J
    .param p6, "backoffAttempt"    # I
    .param p7, "lastSuccessfulRunTime"    # J
    .param p9, "lastFailedRunTime"    # J

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move/from16 v8, p6

    move-wide/from16 v13, p7

    move-wide/from16 v15, p9

    .line 618
    iget-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    .line 619
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    .line 620
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v6

    .line 621
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v7

    .line 623
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v17

    move-object/from16 v19, v1

    iget v1, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    move/from16 v18, v1

    .line 618
    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v18}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJII)V

    .line 625
    return-void
.end method

.method private addDynamicConstraints(I)V
    .registers 4
    .param p1, "constraints"    # I

    .line 1519
    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    const-string v1, "JobScheduler.JobStatus"

    if-eqz v0, :cond_10

    .line 1521
    const-string v0, "Tried to set quota as a dynamic constraint"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    const v0, -0x1000001

    and-int/2addr p1, v0

    .line 1524
    :cond_10
    const/high16 v0, 0x8000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1e

    .line 1526
    const-string v0, "Tried to set TARE as a dynamic constraint"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    const v0, -0x8000001

    and-int/2addr p1, v0

    .line 1533
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1534
    const v0, -0x10000001

    and-int/2addr p1, v0

    .line 1536
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1537
    const v0, -0x4000001

    and-int/2addr p1, v0

    .line 1540
    :cond_32
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 1541
    if-eqz v0, :cond_40

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v1, v0

    if-ne v0, v1, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 1543
    return-void
.end method

.method static bucketName(I)Ljava/lang/String;
    .registers 3
    .param p0, "standbyBucket"    # I

    .line 1983
    packed-switch p0, :pswitch_data_2c

    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1990
    :pswitch_17
    const-string v0, "EXEMPTED"

    return-object v0

    .line 1989
    :pswitch_1a
    const-string v0, "RESTRICTED"

    return-object v0

    .line 1988
    :pswitch_1d
    const-string v0, "NEVER"

    return-object v0

    .line 1987
    :pswitch_20
    const-string v0, "RARE"

    return-object v0

    .line 1986
    :pswitch_23
    const-string v0, "FREQUENT"

    return-object v0

    .line 1985
    :pswitch_26
    const-string v0, "WORKING_SET"

    return-object v0

    .line 1984
    :pswitch_29
    const-string v0, "ACTIVE"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private constraintToStopReason(I)I
    .registers 4
    .param p1, "constraint"    # I

    .line 1414
    const/4 v0, 0x4

    const/16 v1, 0xc

    sparse-switch p1, :sswitch_data_54

    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported constraint ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") --stop reason mapping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    const/4 v0, 0x0

    return v0

    .line 1434
    :sswitch_26
    const/4 v0, 0x7

    return v0

    .line 1460
    :sswitch_28
    return v0

    .line 1467
    :sswitch_29
    const/16 v0, 0xa

    return v0

    .line 1463
    :sswitch_2c
    const/16 v0, 0xf

    return v0

    .line 1455
    :sswitch_2f
    iget-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    if-eqz v1, :cond_36

    .line 1456
    const/16 v0, 0xb

    return v0

    .line 1458
    :cond_36
    return v0

    .line 1445
    :sswitch_37
    const/16 v0, 0x9

    return v0

    .line 1436
    :sswitch_3a
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_42

    .line 1439
    const/16 v0, 0x8

    return v0

    .line 1443
    :cond_42
    return v1

    .line 1416
    :sswitch_43
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_4a

    .line 1419
    const/4 v0, 0x5

    return v0

    .line 1423
    :cond_4a
    return v1

    .line 1425
    :sswitch_4b
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_52

    .line 1428
    const/4 v0, 0x6

    return v0

    .line 1432
    :cond_52
    return v1

    nop

    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_4b
        0x2 -> :sswitch_43
        0x4 -> :sswitch_3a
        0x8 -> :sswitch_37
        0x400000 -> :sswitch_2f
        0x800000 -> :sswitch_2c
        0x1000000 -> :sswitch_29
        0x2000000 -> :sswitch_28
        0x8000000 -> :sswitch_29
        0x10000000 -> :sswitch_26
    .end sparse-switch
.end method

.method public static createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;
    .registers 32
    .param p0, "job"    # Landroid/app/job/JobInfo;
    .param p1, "callingUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 637
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 639
    .local v0, "elapsedNow":J
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 641
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    const-wide v4, 0x757b12c00L

    .line 642
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 641
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 643
    .local v2, "period":J
    add-long v4, v0, v2

    .line 644
    .local v4, "latestRunTimeElapsedMillis":J
    nop

    .line 646
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 647
    .local v2, "earliestRunTimeElapsedMillis":J
    goto :goto_56

    .line 648
    .end local v2    # "earliestRunTimeElapsedMillis":J
    .end local v4    # "latestRunTimeElapsedMillis":J
    :cond_37
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 649
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    goto :goto_45

    :cond_43
    const-wide/16 v2, 0x0

    .line 650
    .restart local v2    # "earliestRunTimeElapsedMillis":J
    :goto_45
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 651
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    goto :goto_56

    :cond_51
    const-wide v4, 0x7fffffffffffffffL

    .line 653
    .restart local v4    # "latestRunTimeElapsedMillis":J
    :goto_56
    if-eqz p2, :cond_5b

    move-object/from16 v6, p2

    goto :goto_63

    :cond_5b
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_63
    move-object v14, v6

    .line 655
    .local v14, "jobPackage":Ljava/lang/String;
    move/from16 v15, p3

    invoke-static {v14, v15, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v24

    .local v24, "standbyBucket":I
    move/from16 v11, v24

    .line 657
    new-instance v25, Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v6, v25

    const/4 v13, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    move-object/from16 v26, v14

    .end local v14    # "jobPackage":Ljava/lang/String;
    .local v26, "jobPackage":Ljava/lang/String;
    move-wide v14, v2

    move-wide/from16 v16, v4

    invoke-direct/range {v6 .. v23}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJII)V

    return-object v25
.end method

.method private dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V
    .registers 5
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "work"    # Landroid/app/job/JobWorkItem;
    .param p3, "index"    # I

    .line 1943
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1944
    const-string v0, "#"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, ": #"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1946
    const-string/jumbo v0, "x "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1947
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 1948
    const-string v0, "URI grants:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1949
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1950
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v0, p1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;)V

    .line 1951
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1953
    :cond_4a
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1954
    return-void
.end method

.method private dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "work"    # Landroid/app/job/JobWorkItem;

    .line 1957
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1959
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1960
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1961
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 1962
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1964
    :cond_2e
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v2

    .line 1965
    .local v2, "grants":Ljava/lang/Object;
    if-eqz v2, :cond_3f

    .line 1966
    move-object v3, v2

    check-cast v3, Lcom/android/server/job/GrantedUriPermissions;

    const-wide v4, 0x10b00000004L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1969
    :cond_3f
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1970
    return-void
.end method

.method private formatRunTime(Ljava/io/PrintWriter;JJJ)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "runtime"    # J
    .param p4, "defaultValue"    # J
    .param p6, "now"    # J

    .line 1771
    cmp-long v0, p2, p4

    if-nez v0, :cond_b

    .line 1772
    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_10

    .line 1774
    :cond_b
    sub-long v0, p2, p6

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1776
    :goto_10
    return-void
.end method

.method private formatRunTime(Ljava/lang/StringBuilder;JJJ)V
    .registers 10
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "runtime"    # J
    .param p4, "defaultValue"    # J
    .param p6, "now"    # J

    .line 1779
    cmp-long v0, p2, p4

    if-nez v0, :cond_b

    .line 1780
    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1782
    :cond_b
    sub-long v0, p2, p6

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1784
    :goto_10
    return-void
.end method

.method private static formatTime(J)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "time"    # J

    .line 2277
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getProtoConstraint(I)I
    .registers 3
    .param p1, "constraint"    # I

    .line 1877
    sparse-switch p1, :sswitch_data_20

    .line 1901
    const/4 v0, 0x0

    return v0

    .line 1889
    :sswitch_5
    const/4 v0, 0x5

    return v0

    .line 1885
    :sswitch_7
    const/4 v0, 0x7

    return v0

    .line 1887
    :sswitch_9
    const/16 v0, 0x8

    return v0

    .line 1891
    :sswitch_c
    const/16 v0, 0x9

    return v0

    .line 1899
    :sswitch_f
    const/16 v0, 0xa

    return v0

    .line 1879
    :sswitch_12
    const/16 v0, 0xb

    return v0

    .line 1895
    :sswitch_15
    const/4 v0, 0x3

    return v0

    .line 1893
    :sswitch_17
    const/4 v0, 0x6

    return v0

    .line 1881
    :sswitch_19
    const/4 v0, 0x2

    return v0

    .line 1883
    :sswitch_1b
    const/4 v0, 0x1

    return v0

    .line 1897
    :sswitch_1d
    const/4 v0, 0x4

    return v0

    nop

    :sswitch_data_20
    .sparse-switch
        -0x80000000 -> :sswitch_1d
        0x1 -> :sswitch_1b
        0x2 -> :sswitch_19
        0x4 -> :sswitch_17
        0x8 -> :sswitch_15
        0x400000 -> :sswitch_12
        0x1000000 -> :sswitch_f
        0x2000000 -> :sswitch_c
        0x4000000 -> :sswitch_9
        0x10000000 -> :sswitch_7
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private hasConstraint(I)Z
    .registers 3
    .param p1, "constraint"    # I

    .line 1096
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr v0, p1

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private isConstraintsSatisfied(I)Z
    .registers 6
    .param p1, "satisfiedConstraints"    # I

    .line 1685
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 1687
    return v1

    .line 1690
    :cond_7
    move v2, p1

    .line 1691
    .local v2, "sat":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_12

    .line 1693
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const v3, -0x7f7ffff1

    and-int/2addr v0, v3

    or-int/2addr v2, v0

    .line 1696
    :cond_12
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    and-int v3, v2, v0

    if-ne v3, v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method private isReady(I)Z
    .registers 5
    .param p1, "satisfiedConstraints"    # I

    .line 1648
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyTareWealth:Z

    if-nez v0, :cond_13

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    if-nez v0, :cond_13

    .line 1649
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1650
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1b

    .line 1651
    :cond_1a
    return v1

    .line 1658
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    if-nez v0, :cond_31

    .line 1659
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_31
    const/4 v1, 0x1

    goto :goto_34

    :cond_33
    nop

    .line 1658
    :goto_34
    return v1
.end method

.method private readinessStatusWithConstraint(IZ)Z
    .registers 10
    .param p1, "constraint"    # I
    .param p2, "value"    # Z

    .line 1581
    const/4 v0, 0x0

    .line 1582
    .local v0, "oldValue":Z
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 1583
    .local v1, "satisfied":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_58

    .line 1605
    if-eqz p2, :cond_25

    .line 1606
    or-int/2addr v1, p1

    goto :goto_27

    .line 1589
    :sswitch_c
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 1590
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 1591
    goto :goto_34

    .line 1597
    :sswitch_11
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyTareWealth:Z

    .line 1598
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyTareWealth:Z

    .line 1599
    goto :goto_34

    .line 1593
    :sswitch_16
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 1594
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 1595
    goto :goto_34

    .line 1601
    :sswitch_1b
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 1602
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 1603
    goto :goto_34

    .line 1585
    :sswitch_20
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1586
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1587
    goto :goto_34

    .line 1608
    :cond_25
    not-int v4, p1

    and-int/2addr v1, v4

    .line 1610
    :goto_27
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v4, :cond_31

    and-int v5, v1, v4

    if-ne v4, v5, :cond_31

    move v4, v2

    goto :goto_32

    :cond_31
    move v4, v3

    :goto_32
    iput-boolean v4, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 1616
    :goto_34
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v4

    .line 1618
    .local v4, "toReturn":Z
    sparse-switch p1, :sswitch_data_6e

    .line 1635
    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v5, :cond_54

    iget v6, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v6, v5

    if-ne v5, v6, :cond_54

    goto :goto_55

    .line 1623
    :sswitch_45
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 1624
    goto :goto_57

    .line 1629
    :sswitch_48
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyTareWealth:Z

    .line 1630
    goto :goto_57

    .line 1626
    :sswitch_4b
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 1627
    goto :goto_57

    .line 1632
    :sswitch_4e
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 1633
    goto :goto_57

    .line 1620
    :sswitch_51
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1621
    goto :goto_57

    .line 1635
    :cond_54
    move v2, v3

    :goto_55
    iput-boolean v2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 1639
    :goto_57
    return v4

    :sswitch_data_58
    .sparse-switch
        0x400000 -> :sswitch_20
        0x1000000 -> :sswitch_1b
        0x2000000 -> :sswitch_16
        0x8000000 -> :sswitch_11
        0x40000000 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_6e
    .sparse-switch
        0x400000 -> :sswitch_51
        0x1000000 -> :sswitch_4e
        0x2000000 -> :sswitch_4b
        0x8000000 -> :sswitch_48
        0x40000000 -> :sswitch_45
    .end sparse-switch
.end method

.method private removeDynamicConstraints(I)V
    .registers 4
    .param p1, "constraints"    # I

    .line 1552
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 1553
    if-eqz v0, :cond_f

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v1, v0

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 1555
    return-void
.end method

.method private static ungrantWorkItem(Landroid/app/job/JobWorkItem;)V
    .registers 2
    .param p0, "work"    # Landroid/app/job/JobWorkItem;

    .line 704
    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 705
    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v0}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    .line 707
    :cond_f
    return-void
.end method

.method private static ungrantWorkList(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;)V"
        }
    .end annotation

    .line 725
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobWorkItem;>;"
    if-eqz p0, :cond_15

    .line 726
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 727
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 728
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/job/JobWorkItem;)V

    .line 727
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 731
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method private updateExpeditedDependencies()V
    .registers 2

    .line 1359
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 1360
    return-void
.end method

.method private updateNetworkBytesLocked()V
    .registers 9

    .line 1003
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 1004
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 1005
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    .line 1007
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_7f

    .line 1008
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f

    .line 1009
    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_42

    .line 1013
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v1

    .line 1014
    .local v1, "downloadBytes":J
    cmp-long v5, v1, v3

    if-eqz v5, :cond_42

    .line 1015
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 1018
    .end local v1    # "downloadBytes":J
    :cond_42
    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5d

    .line 1022
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v1

    .line 1023
    .local v1, "uploadBytes":J
    cmp-long v5, v1, v3

    if-eqz v5, :cond_5d

    .line 1024
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 1027
    .end local v1    # "uploadBytes":J
    :cond_5d
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide v1

    .line 1028
    .local v1, "chunkBytes":J
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_72

    .line 1029
    iput-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    goto :goto_7c

    .line 1030
    :cond_72
    cmp-long v3, v1, v3

    if-eqz v3, :cond_7c

    .line 1031
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    .line 1008
    .end local v1    # "chunkBytes":J
    :cond_7c
    :goto_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1035
    .end local v0    # "i":I
    :cond_7f
    return-void
.end method


# virtual methods
.method public addInternalFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 981
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 982
    return-void
.end method

.method public areDynamicConstraintsSatisfied()Z
    .registers 2

    .line 1674
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return v0
.end method

.method canRunInBatterySaver()Z
    .registers 4

    .line 1211
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_1c

    .line 1212
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_1a

    :cond_12
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    if-nez v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v1, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    nop

    .line 1211
    :goto_1d
    return v1
.end method

.method public canRunInDoze()Z
    .registers 4

    .line 1204
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    const/4 v1, 0x1

    if-nez v0, :cond_20

    .line 1205
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_20

    .line 1206
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_1e

    :cond_16
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    const/high16 v2, 0x2000000

    and-int/2addr v0, v2

    if-nez v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v1, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    nop

    .line 1204
    :goto_21
    return v1
.end method

.method public clearPersistedUtcTimes()V
    .registers 2

    .line 1183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 1184
    return-void
.end method

.method clearTrackingController(I)Z
    .registers 4
    .param p1, "which"    # I

    .line 1488
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int v1, v0, p1

    if-eqz v1, :cond_c

    .line 1489
    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    .line 1490
    const/4 v0, 0x1

    return v0

    .line 1492
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public completeWorkLocked(I)Z
    .registers 6
    .param p1, "workId"    # I

    .line 710
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    .line 711
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 712
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_26

    .line 713
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    .line 714
    .local v2, "work":Landroid/app/job/JobWorkItem;
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v3

    if-ne v3, p1, :cond_23

    .line 715
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 716
    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/job/JobWorkItem;)V

    .line 717
    const/4 v3, 0x1

    return v3

    .line 712
    .end local v2    # "work":Landroid/app/job/JobWorkItem;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 721
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public dequeueWorkLocked()Landroid/app/job/JobWorkItem;
    .registers 3

    .line 680
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 681
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    .line 682
    .local v0, "work":Landroid/app/job/JobWorkItem;
    if-eqz v0, :cond_28

    .line 683
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_20

    .line 684
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 686
    :cond_20
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->bumpDeliveryCount()V

    .line 689
    :cond_28
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    .line 690
    return-object v0

    .line 692
    .end local v0    # "work":Landroid/app/job/JobWorkItem;
    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method public disallowRunInBatterySaverAndDoze()V
    .registers 2

    .line 1510
    const/high16 v0, 0x2400000

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    .line 1511
    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;ZJ)V
    .registers 16
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "full"    # Z
    .param p3, "nowElapsed"    # J
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1999
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2000
    const-string v0, " tag="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2002
    const-string v0, "Source: uid="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2003
    const-string v0, " user="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2004
    const-string v0, " pkg="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2005
    const/16 v0, 0x20

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_2ee

    .line 2006
    const-string v4, "JobInfo:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2009
    const-string v4, "Service: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2010
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2011
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 2012
    const-string v4, "PERIODIC: interval="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2013
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2014
    const-string v4, " flex="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2015
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2017
    :cond_7b
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 2018
    const-string v4, "PERSISTED"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2020
    :cond_88
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getBias()I

    move-result v4

    if-eqz v4, :cond_a2

    .line 2021
    const-string v4, "Bias: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2022
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getBias()I

    move-result v4

    invoke-static {v4}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    :cond_a2
    const-string v4, "Priority: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2025
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v4

    invoke-static {v4}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2026
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v4

    .line 2027
    .local v4, "effectivePriority":I
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v5

    if-eq v4, v5, :cond_cc

    .line 2028
    const-string v5, " effective="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2029
    invoke-static {v4}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2031
    :cond_cc
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2032
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v5

    if-eqz v5, :cond_e9

    .line 2033
    const-string v5, "Flags: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2034
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    :cond_e9
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v5

    if-eqz v5, :cond_10e

    .line 2037
    const-string v5, "Internal flags: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v5

    and-int/2addr v5, v3

    if-eqz v5, :cond_10b

    .line 2041
    const-string v5, " HAS_FOREGROUND_EXEMPTION"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2043
    :cond_10b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2045
    :cond_10e
    const-string v5, "Requires: charging="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2046
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v5, " batteryNotLow="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2047
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v5, " deviceIdle="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2048
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 2049
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v5

    if-eqz v5, :cond_1ba

    .line 2050
    const-string v5, "Trigger content URIs:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2052
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_149
    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_172

    .line 2053
    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v6

    aget-object v6, v6, v5

    .line 2054
    .local v6, "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {v6}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2055
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {v6}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2052
    .end local v6    # "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    add-int/lit8 v5, v5, 0x1

    goto :goto_149

    .line 2057
    .end local v5    # "i":I
    :cond_172
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2058
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-ltz v5, :cond_190

    .line 2059
    const-string v5, "Trigger update delay: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2060
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2061
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2063
    :cond_190
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-ltz v5, :cond_1ab

    .line 2064
    const-string v5, "Trigger max delay: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2065
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2066
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2068
    :cond_1ab
    iget-boolean v5, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "Has media backup exemption"

    invoke-virtual {p1, v6, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2070
    :cond_1ba
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    if-eqz v5, :cond_1e0

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v5

    if-nez v5, :cond_1e0

    .line 2071
    const-string v5, "Extras: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2072
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PersistableBundle;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2074
    :cond_1e0
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_206

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v5

    if-nez v5, :cond_206

    .line 2075
    const-string v5, "Transient extras: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2076
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2078
    :cond_206
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    if-eqz v5, :cond_226

    .line 2079
    const-string v5, "Clip data: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2080
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2081
    .local v5, "b":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2082
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2084
    .end local v5    # "b":Ljava/lang/StringBuilder;
    :cond_226
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v5, :cond_234

    .line 2085
    const-string v5, "Granted URI permissions:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2086
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v5, p1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;)V

    .line 2088
    :cond_234
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v5

    if-eqz v5, :cond_24a

    .line 2089
    const-string v5, "Network type: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2090
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2092
    :cond_24a
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_25c

    .line 2093
    const-string v5, "Network download bytes: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2094
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 2096
    :cond_25c
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_26c

    .line 2097
    const-string v5, "Network upload bytes: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2098
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 2100
    :cond_26c
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_27c

    .line 2101
    const-string v5, "Minimum network chunk bytes: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2102
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 2104
    :cond_27c
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-eqz v5, :cond_297

    .line 2105
    const-string v5, "Minimum latency: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2106
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2107
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2109
    :cond_297
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-eqz v5, :cond_2b2

    .line 2110
    const-string v5, "Max execution delay: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2111
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2112
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2114
    :cond_2b2
    const-string v5, "Backoff: policy="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2115
    const-string v5, " initial="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2116
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2117
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v5

    if-eqz v5, :cond_2de

    .line 2118
    const-string v5, "Has early constraint"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2120
    :cond_2de
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v5

    if-eqz v5, :cond_2eb

    .line 2121
    const-string v5, "Has late constraint"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2124
    :cond_2eb
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2127
    .end local v4    # "effectivePriority":I
    :cond_2ee
    const-string v4, "Required constraints:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2128
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-virtual {p0, p1, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 2129
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2130
    const-string v4, "Dynamic constraints:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2131
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-virtual {p0, p1, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 2132
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2133
    if-eqz p2, :cond_37f

    .line 2134
    const-string v4, "Satisfied constraints:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2135
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-virtual {p0, p1, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 2136
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2137
    const-string v4, "Unsatisfied constraints:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2138
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v5, 0x1000000

    or-int/2addr v4, v5

    const/high16 v5, 0x8000000

    or-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v5, v5

    and-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 2141
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2143
    const-string v4, "Constraint history:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2144
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2145
    const/4 v4, 0x0

    .local v4, "h":I
    :goto_337
    const/16 v5, 0xa

    if-ge v4, v5, :cond_35d

    .line 2146
    iget v6, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    add-int/2addr v6, v4

    rem-int/2addr v6, v5

    .line 2147
    .local v6, "idx":I
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    aget-wide v7, v5, v6

    cmp-long v5, v7, v1

    if-nez v5, :cond_348

    .line 2148
    goto :goto_35a

    .line 2150
    :cond_348
    invoke-static {v7, v8, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2152
    const-string v5, " ="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2153
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    aget v5, v5, v6

    invoke-virtual {p0, p1, v5}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 2154
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2145
    .end local v6    # "idx":I
    :goto_35a
    add-int/lit8 v4, v4, 0x1

    goto :goto_337

    .line 2156
    .end local v4    # "h":I
    :cond_35d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2158
    iget-boolean v4, p0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    if-eqz v4, :cond_369

    .line 2159
    const-string v4, "Doze whitelisted: true"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2161
    :cond_369
    iget-boolean v4, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eqz v4, :cond_372

    .line 2162
    const-string v4, "Uid: active"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2164
    :cond_372
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v4

    if-eqz v4, :cond_37f

    .line 2165
    const-string v4, "Is exempted from app standby"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2168
    :cond_37f
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    if-eqz v4, :cond_3d6

    .line 2169
    const-string v4, "Tracking:"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2170
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_392

    const-string v4, " BATTERY"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2171
    :cond_392
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_39d

    const-string v4, " CONNECTIVITY"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2172
    :cond_39d
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3a8

    const-string v4, " CONTENT"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2173
    :cond_3a8
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3b3

    const-string v4, " IDLE"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2174
    :cond_3b3
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_3be

    const-string v4, " STORAGE"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2175
    :cond_3be
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_3c8

    const-string v0, " TIME"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2176
    :cond_3c8
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3d3

    const-string v0, " QUOTA"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2177
    :cond_3d3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2180
    :cond_3d6
    const-string v0, "Implicit constraints:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2181
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2182
    const-string/jumbo v0, "readyNotDozing: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2183
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 2184
    const-string/jumbo v0, "readyNotRestrictedInBg: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2185
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 2186
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_40d

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_40d

    .line 2187
    const-string/jumbo v0, "readyDeadlineSatisfied: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2188
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 2190
    :cond_40d
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v0, :cond_41c

    .line 2191
    const-string/jumbo v0, "readyDynamicSatisfied: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2192
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 2194
    :cond_41c
    const-string/jumbo v0, "readyComponentEnabled: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2195
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_427

    goto :goto_428

    :cond_427
    const/4 v3, 0x0

    :goto_428
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 2196
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_456

    .line 2197
    const-string v0, "expeditedQuotaApproved: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2198
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 2199
    const-string v0, " expeditedTareApproved: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2200
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedTareApproved:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 2201
    const-string v0, " (started as EJ: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2202
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 2203
    const-string v0, ")"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2205
    :cond_456
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2207
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_47f

    .line 2208
    const-string v0, "Changed authorities:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_466
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_47c

    .line 2211
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2210
    add-int/lit8 v0, v0, 0x1

    goto :goto_466

    .line 2213
    .end local v0    # "i":I
    :cond_47c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2215
    :cond_47f
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_4a3

    .line 2216
    const-string v0, "Changed URIs:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2218
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_48c
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_4a0

    .line 2219
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2218
    add-int/lit8 v0, v0, 0x1

    goto :goto_48c

    .line 2221
    .end local v0    # "i":I
    :cond_4a0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2223
    :cond_4a3
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz v0, :cond_4b1

    .line 2224
    const-string v0, "Network: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2226
    :cond_4b1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_4d7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4d7

    .line 2227
    const-string v0, "Pending work:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2228
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4c1
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4d7

    .line 2229
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V

    .line 2228
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c1

    .line 2232
    .end local v0    # "i":I
    :cond_4d7
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_4fd

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4fd

    .line 2233
    const-string v0, "Executing work:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2234
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4e7
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4fd

    .line 2235
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V

    .line 2234
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e7

    .line 2238
    .end local v0    # "i":I
    :cond_4fd
    const-string v0, "Standby bucket: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2239
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2240
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2241
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_51f

    .line 2242
    const-string v0, "Deferred since: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2243
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2244
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2246
    :cond_51f
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_532

    .line 2247
    const-string v0, "Time since first force batch attempt: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2248
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2249
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2251
    :cond_532
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2253
    const-string v0, "Enqueue time: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2254
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2255
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2256
    const-string v0, "Run time: earliest="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2257
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-wide v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 2258
    const-string v0, ", latest="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2259
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v7, 0x7fffffffffffffffL

    invoke-direct/range {v3 .. v10}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 2260
    const-string v0, ", original latest="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2261
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    invoke-direct/range {v3 .. v10}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 2262
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2263
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v0, :cond_57b

    .line 2264
    const-string v0, "Num failures: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 2266
    :cond_57b
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_58f

    .line 2267
    const-string v0, "Last successful run: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2268
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-static {v3, v4}, Lcom/android/server/job/controllers/JobStatus;->formatTime(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2270
    :cond_58f
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5a3

    .line 2271
    const-string v0, "Last failed run: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2272
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->formatTime(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2274
    :cond_5a3
    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JZJ)V
    .registers 22
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "full"    # Z
    .param p5, "elapsedRealtimeMillis"    # J

    .line 2281
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2283
    .local v2, "token":J
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2284
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    const-wide v7, 0x10900000002L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2285
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    const-wide v9, 0x10500000003L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2286
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    const-wide v9, 0x10500000004L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2287
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    const-wide v9, 0x10900000005L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2289
    const-wide v9, 0x1080000000aL

    const-wide v11, 0x10800000002L

    if-eqz p4, :cond_24f

    .line 2290
    const-wide v13, 0x10b00000006L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 2292
    .local v13, "jiToken":J
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    const-wide v7, 0x10b00000001L

    invoke-virtual {v4, v1, v7, v8}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2294
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2295
    const-wide v7, 0x10300000003L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v11

    invoke-virtual {v1, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2296
    const-wide v7, 0x10300000004L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v11

    invoke-virtual {v1, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2298
    const-wide v7, 0x10800000005L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2299
    const-wide v7, 0x11100000006L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getBias()I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2300
    const-wide v7, 0x10500000007L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2301
    const-wide v7, 0x10300000018L

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2304
    const-wide v7, 0x10800000008L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2305
    const-wide v7, 0x10800000009L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2306
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v4

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2308
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v4

    if-eqz v4, :cond_168

    .line 2309
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_eb
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v7

    array-length v7, v7

    if-ge v4, v7, :cond_134

    .line 2310
    const-wide v7, 0x20b0000000bL

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2311
    .local v7, "tcuToken":J
    iget-object v11, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v11

    aget-object v11, v11, v4

    .line 2313
    .local v11, "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {v11}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v12

    invoke-virtual {v1, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2314
    invoke-virtual {v11}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v12

    .line 2315
    .local v12, "u":Landroid/net/Uri;
    if-eqz v12, :cond_11f

    .line 2316
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide v9, 0x10900000002L

    invoke-virtual {v1, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_124

    .line 2315
    :cond_11f
    const-wide v9, 0x10900000002L

    .line 2319
    :goto_124
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2309
    .end local v7    # "tcuToken":J
    .end local v11    # "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    .end local v12    # "u":Landroid/net/Uri;
    add-int/lit8 v4, v4, 0x1

    const-wide v5, 0x10500000001L

    const-wide v9, 0x1080000000aL

    goto :goto_eb

    .line 2321
    .end local v4    # "i":I
    :cond_134
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_14e

    .line 2322
    const-wide v4, 0x1030000000cL

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2323
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v6

    .line 2322
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2325
    :cond_14e
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_168

    .line 2326
    const-wide v4, 0x1030000000dL

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2327
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v6

    .line 2326
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2330
    :cond_168
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_18a

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v4

    if-nez v4, :cond_18a

    .line 2331
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    const-wide v5, 0x10b0000000eL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/PersistableBundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2333
    :cond_18a
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1ac

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v4

    if-nez v4, :cond_1ac

    .line 2334
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    const-wide v5, 0x10b0000000fL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Bundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2336
    :cond_1ac
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_1c2

    .line 2337
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    const-wide v5, 0x10b00000010L

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/ClipData;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2339
    :cond_1c2
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v4, :cond_1ce

    .line 2340
    const-wide v5, 0x10b00000011L

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2342
    :cond_1ce
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1de

    .line 2343
    const-wide v8, 0x10300000019L

    invoke-virtual {v1, v8, v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2346
    :cond_1de
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1ec

    .line 2347
    const-wide v6, 0x1030000001aL

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2350
    :cond_1ec
    const-wide v4, 0x10300000014L

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2351
    const-wide v4, 0x10300000015L

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2353
    const-wide v4, 0x10b00000016L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2354
    .local v4, "bpToken":J
    const-wide v6, 0x10e00000001L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2355
    const-wide v6, 0x10300000002L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2356
    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v8

    .line 2355
    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2357
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2359
    const-wide v6, 0x10800000017L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2360
    const-wide v6, 0x10800000018L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2362
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2365
    .end local v4    # "bpToken":J
    .end local v13    # "jiToken":J
    :cond_24f
    const-wide v4, 0x20e00000007L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2366
    const-wide v4, 0x20e0000001fL

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2367
    if-eqz p4, :cond_2a2

    .line 2368
    const-wide v4, 0x20e00000008L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2369
    const-wide v4, 0x20e00000009L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v7, 0x1000000

    or-int/2addr v6, v7

    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v7, v7

    and-int/2addr v6, v7

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2371
    iget-boolean v4, v0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    const-wide v5, 0x1080000000aL

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2372
    const-wide v4, 0x1080000001aL

    iget-boolean v6, v0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2373
    const-wide v4, 0x1080000001bL

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2374
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v6

    .line 2373
    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2378
    :cond_2a2
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const/4 v6, 0x0

    const-wide v7, 0x20e0000000bL

    if-eqz v4, :cond_2b1

    .line 2379
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2382
    :cond_2b1
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v9, 0x2

    and-int/2addr v4, v9

    if-eqz v4, :cond_2ba

    .line 2383
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2386
    :cond_2ba
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_2c3

    .line 2387
    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2390
    :cond_2c3
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2cd

    .line 2391
    const/4 v4, 0x3

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2394
    :cond_2cd
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2d6

    .line 2395
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2398
    :cond_2d6
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2e0

    .line 2399
    const/4 v4, 0x5

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2402
    :cond_2e0
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2ea

    .line 2403
    const/4 v4, 0x6

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2408
    :cond_2ea
    const-wide v4, 0x10b00000019L    # 5.665728762E-312

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2409
    .local v4, "icToken":J
    const-wide v7, 0x10800000001L

    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2410
    iget-boolean v7, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    const-wide v8, 0x10800000002L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2414
    const-wide v7, 0x10800000003L

    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2416
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2418
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v7, :cond_334

    .line 2419
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_319
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_334

    .line 2420
    const-wide v8, 0x2090000000cL

    iget-object v10, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v10, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2419
    add-int/lit8 v7, v7, 0x1

    goto :goto_319

    .line 2423
    .end local v7    # "k":I
    :cond_334
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v7, :cond_358

    .line 2424
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_339
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_358

    .line 2425
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 2426
    .local v8, "u":Landroid/net/Uri;
    const-wide v9, 0x2090000000dL

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2424
    .end local v8    # "u":Landroid/net/Uri;
    add-int/lit8 v7, v7, 0x1

    goto :goto_339

    .line 2430
    .end local v7    # "i":I
    :cond_358
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v7, :cond_378

    .line 2431
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_35d
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_378

    .line 2432
    const-wide v8, 0x20b0000000fL

    iget-object v10, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, v1, v8, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    .line 2431
    add-int/lit8 v7, v7, 0x1

    goto :goto_35d

    .line 2435
    .end local v7    # "i":I
    :cond_378
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v7, :cond_398

    .line 2436
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_37d
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_398

    .line 2437
    const-wide v8, 0x20b00000010L

    iget-object v10, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, v1, v8, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    .line 2436
    add-int/lit8 v7, v7, 0x1

    goto :goto_37d

    .line 2441
    .end local v7    # "i":I
    :cond_398
    const-wide v7, 0x10e00000011L

    iget v9, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2442
    const-wide v7, 0x10300000012L

    iget-wide v9, v0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long v9, p5, v9

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2443
    const-wide v7, 0x1030000001cL

    .line 2444
    iget-wide v9, v0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_3be

    const-wide/16 v9, 0x0

    goto :goto_3c0

    :cond_3be
    sub-long v9, p5, v9

    .line 2443
    :goto_3c0
    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2445
    const-wide v7, 0x1030000001dL

    .line 2446
    iget-wide v9, v0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_3d2

    .line 2447
    move-wide v9, v11

    goto :goto_3d4

    :cond_3d2
    sub-long v9, p5, v9

    .line 2445
    :goto_3d4
    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2448
    iget-wide v7, v0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long v9, v7, v11

    const-wide v10, 0x11200000013L

    if-nez v9, :cond_3e6

    .line 2449
    invoke-virtual {v1, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_3eb

    .line 2451
    :cond_3e6
    sub-long v7, v7, p5

    invoke-virtual {v1, v10, v11, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2454
    :goto_3eb
    iget-wide v7, v0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v9, v7, v9

    const-wide v10, 0x11200000014L

    if-nez v9, :cond_3ff

    .line 2455
    invoke-virtual {v1, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_404

    .line 2457
    :cond_3ff
    sub-long v7, v7, p5

    invoke-virtual {v1, v10, v11, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2460
    :goto_404
    const-wide v6, 0x1040000001eL

    iget-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2463
    const-wide v6, 0x10500000015L

    iget v8, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2464
    const-wide v6, 0x10300000016L

    iget-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2465
    const-wide v6, 0x10300000017L

    iget-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2467
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2468
    return-void
.end method

.method dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "constraints"    # I

    .line 1907
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    .line 1908
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1910
    :cond_8
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_10

    .line 1911
    const/4 v0, 0x2

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1913
    :cond_10
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_18

    .line 1914
    const/4 v0, 0x3

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1916
    :cond_18
    const/high16 v0, -0x80000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_21

    .line 1917
    const/4 v0, 0x4

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1919
    :cond_21
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p4

    if-eqz v0, :cond_2a

    .line 1920
    const/4 v0, 0x5

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1922
    :cond_2a
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_32

    .line 1923
    const/4 v0, 0x6

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1925
    :cond_32
    const/high16 v0, 0x10000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_3b

    .line 1926
    const/4 v0, 0x7

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1928
    :cond_3b
    const/high16 v0, 0x4000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_45

    .line 1929
    const/16 v0, 0x8

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1931
    :cond_45
    const/high16 v0, 0x2000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_4f

    .line 1932
    const/16 v0, 0x9

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1934
    :cond_4f
    const/high16 v0, 0x1000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_59

    .line 1935
    const/16 v0, 0xa

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1937
    :cond_59
    const/high16 v0, 0x400000

    and-int/2addr v0, p4

    if-eqz v0, :cond_63

    .line 1938
    const/16 v0, 0xb

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1940
    :cond_63
    return-void
.end method

.method dumpConstraints(Ljava/io/PrintWriter;I)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "constraints"    # I

    .line 1829
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_9

    .line 1830
    const-string v0, " CHARGING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1832
    :cond_9
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_12

    .line 1833
    const-string v0, " BATTERY_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1835
    :cond_12
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_1b

    .line 1836
    const-string v0, " STORAGE_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1838
    :cond_1b
    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_25

    .line 1839
    const-string v0, " TIMING_DELAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1841
    :cond_25
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_2f

    .line 1842
    const-string v0, " DEADLINE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1844
    :cond_2f
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_38

    .line 1845
    const-string v0, " IDLE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1847
    :cond_38
    const/high16 v0, 0x10000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_42

    .line 1848
    const-string v0, " CONNECTIVITY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1850
    :cond_42
    const/high16 v0, 0x4000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_4c

    .line 1851
    const-string v0, " CONTENT_TRIGGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1853
    :cond_4c
    const/high16 v0, 0x2000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_56

    .line 1854
    const-string v0, " DEVICE_NOT_DOZING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1856
    :cond_56
    const/high16 v0, 0x400000

    and-int/2addr v0, p2

    if-eqz v0, :cond_60

    .line 1857
    const-string v0, " BACKGROUND_NOT_RESTRICTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1859
    :cond_60
    const/high16 v0, 0x800000

    and-int/2addr v0, p2

    if-eqz v0, :cond_6a

    .line 1860
    const-string v0, " PREFETCH"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1862
    :cond_6a
    const/high16 v0, 0x8000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_74

    .line 1863
    const-string v0, " TARE_WEALTH"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1865
    :cond_74
    const/high16 v0, 0x1000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_7e

    .line 1866
    const-string v0, " WITHIN_QUOTA"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1868
    :cond_7e
    if-eqz p2, :cond_91

    .line 1869
    const-string v0, " [0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1870
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1871
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1873
    :cond_91
    return-void
.end method

.method public enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V
    .registers 7
    .param p1, "work"    # Landroid/app/job/JobWorkItem;

    .line 665
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 668
    :cond_b
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    invoke-virtual {p1, v0}, Landroid/app/job/JobWorkItem;->setWorkId(I)V

    .line 669
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 670
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 671
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 672
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 673
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    .line 672
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/job/GrantedUriPermissions;->createFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/job/JobWorkItem;->setGrants(Ljava/lang/Object;)V

    .line 675
    :cond_3f
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    .line 677
    return-void
.end method

.method public getBatteryName()Ljava/lang/String;
    .registers 2

    .line 937
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    return-object v0
.end method

.method public getBias()I
    .registers 2

    .line 945
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getBias()I

    move-result v0

    return v0
.end method

.method getBucketName()Ljava/lang/String;
    .registers 2

    .line 1976
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-static {v0}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEarliestRunTime()J
    .registers 3

    .line 1126
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getEffectivePriority()I
    .registers 4

    .line 954
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v0

    .line 955
    .local v0, "rawPriority":I
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    .line 956
    return v0

    .line 959
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 961
    const/16 v1, 0x190

    return v1

    .line 964
    :cond_15
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    div-int/2addr v1, v2

    .line 965
    .local v1, "dropPower":I
    packed-switch v1, :pswitch_data_2c

    .line 968
    const/16 v2, 0x64

    return v2

    .line 967
    :pswitch_1e
    const/16 v2, 0xc8

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 966
    :pswitch_25
    const/16 v2, 0x12c

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_25
        :pswitch_1e
    .end packed-switch
.end method

.method public getEffectiveStandbyBucket()I
    .registers 3

    .line 840
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v0

    .line 841
    .local v0, "actualBucket":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 842
    return v0

    .line 844
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v1, :cond_28

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_28

    .line 849
    :cond_17
    const/4 v1, 0x5

    if-eq v0, v1, :cond_27

    const/4 v1, 0x4

    if-eq v0, v1, :cond_27

    iget-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    if-eqz v1, :cond_27

    .line 853
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 855
    :cond_27
    return v0

    .line 847
    :cond_28
    :goto_28
    const/4 v1, 0x0

    return v1
.end method

.method public getEstimatedNetworkDownloadBytes()J
    .registers 3

    .line 1038
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    return-wide v0
.end method

.method public getEstimatedNetworkUploadBytes()J
    .registers 3

    .line 1042
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    return-wide v0
.end method

.method public getFirstForceBatchedTimeElapsed()J
    .registers 3

    .line 902
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    return-wide v0
.end method

.method public getFlags()I
    .registers 2

    .line 973
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    return v0
.end method

.method public getFractionRunTime()F
    .registers 13

    .line 1158
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1159
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-wide v7, 0x7fffffffffffffffL

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v6, :cond_1c

    iget-wide v10, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_1c

    .line 1161
    return v9

    .line 1162
    :cond_1c
    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_2a

    .line 1163
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_28

    goto :goto_29

    :cond_28
    move v9, v5

    :goto_29
    return v9

    .line 1164
    :cond_2a
    iget-wide v10, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v4, v10, v7

    if-nez v4, :cond_37

    .line 1165
    cmp-long v2, v0, v2

    if-ltz v2, :cond_35

    goto :goto_36

    :cond_35
    move v9, v5

    :goto_36
    return v9

    .line 1167
    :cond_37
    cmp-long v4, v0, v2

    if-gtz v4, :cond_3c

    .line 1168
    return v5

    .line 1169
    :cond_3c
    cmp-long v4, v0, v10

    if-ltz v4, :cond_41

    .line 1170
    return v9

    .line 1172
    :cond_41
    sub-long v4, v0, v2

    long-to-float v4, v4

    sub-long/2addr v10, v2

    long-to-float v2, v10

    div-float/2addr v4, v2

    return v4
.end method

.method public getInternalFlags()I
    .registers 2

    .line 977
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    return v0
.end method

.method public getJob()Landroid/app/job/JobInfo;
    .registers 2

    .line 798
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    return-object v0
.end method

.method public getJobId()I
    .registers 2

    .line 802
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    return v0
.end method

.method public getLastFailedRunTime()J
    .registers 3

    .line 1562
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    return-wide v0
.end method

.method public getLastSuccessfulRunTime()J
    .registers 3

    .line 1558
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    return-wide v0
.end method

.method public getLatestRunTimeElapsed()J
    .registers 3

    .line 1130
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getMinimumNetworkChunkBytes()J
    .registers 3

    .line 1046
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    return-wide v0
.end method

.method public getNumFailures()I
    .registers 2

    .line 812
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    return v0
.end method

.method public getOriginalLatestRunTimeElapsed()J
    .registers 3

    .line 1134
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getPersistedUtcTimes()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1179
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    return-object v0
.end method

.method public getSatisfiedConstraintFlags()I
    .registers 2

    .line 985
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    return v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .registers 2

    .line 816
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSourcePackageName()Ljava/lang/String;
    .registers 2

    .line 820
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceTag()Ljava/lang/String;
    .registers 2

    .line 929
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUid()I
    .registers 2

    .line 824
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    return v0
.end method

.method public getSourceUserId()I
    .registers 2

    .line 828
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    return v0
.end method

.method public getStandbyBucket()I
    .registers 2

    .line 860
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    return v0
.end method

.method public getStopReason()I
    .registers 2

    .line 1143
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 941
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerContentMaxDelay()J
    .registers 5

    .line 1108
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v0

    .line 1109
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 1110
    const-wide/32 v2, 0x1d4c0

    return-wide v2

    .line 1112
    :cond_10
    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getTriggerContentUpdateDelay()J
    .registers 5

    .line 1100
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v0

    .line 1101
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_f

    .line 1102
    const-wide/16 v2, 0x2710

    return-wide v2

    .line 1104
    :cond_f
    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getUid()I
    .registers 2

    .line 933
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return v0
.end method

.method public getUserId()I
    .registers 2

    .line 832
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public getWhenStandbyDeferred()J
    .registers 3

    .line 889
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    return-wide v0
.end method

.method public hasBatteryNotLowConstraint()Z
    .registers 2

    .line 1061
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasChargingConstraint()Z
    .registers 2

    .line 1057
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasConnectivityConstraint()Z
    .registers 3

    .line 1053
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasContentTriggerConstraint()Z
    .registers 3

    .line 1088
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasDeadlineConstraint()Z
    .registers 2

    .line 1078
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasExecutingWorkLocked()Z
    .registers 2

    .line 700
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hasIdleConstraint()Z
    .registers 2

    .line 1082
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method hasPowerConstraint()Z
    .registers 2

    .line 1066
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasStorageNotLowConstraint()Z
    .registers 2

    .line 1070
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasTimingDelayConstraint()Z
    .registers 2

    .line 1074
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasWorkLocked()Z
    .registers 2

    .line 696
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_10

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasExecutingWorkLocked()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method isConstraintSatisfied(I)Z
    .registers 3
    .param p1, "constraint"    # I

    .line 1480
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isConstraintsSatisfied()Z
    .registers 2

    .line 1681
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result v0

    return v0
.end method

.method public isDexOptJob()Z
    .registers 2

    .line 1117
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isDexOptJob()Z

    move-result v0

    return v0
.end method

.method isExpeditedQuotaApproved()Z
    .registers 2

    .line 1484
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    return v0
.end method

.method public isPersisted()Z
    .registers 2

    .line 1122
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    return v0
.end method

.method public isPreparedLocked()Z
    .registers 2

    .line 794
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 1569
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public isRequestedExpeditedJob()Z
    .registers 2

    .line 1188
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isTrackedBy(I)Z
    .registers 3
    .param p1, "which"    # I

    .line 1497
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public matches(II)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .line 1700
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, p2, :cond_e

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    if-ne v0, p1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public maybeAddForegroundExemption(Ljava/util/function/Predicate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 990
    .local p1, "uidForegroundChecker":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2a

    .line 994
    :cond_11
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    .line 995
    return-void

    .line 997
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 998
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/JobStatus;->addInternalFlags(I)V

    .line 1000
    :cond_29
    return-void

    .line 991
    :cond_2a
    :goto_2a
    return-void
.end method

.method public maybeLogBucketMismatch()V
    .registers 3

    .line 880
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    if-nez v0, :cond_29

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 882
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " became active but still in NEVER bucket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 881
    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    .line 885
    :cond_29
    return-void
.end method

.method public prepareLocked()V
    .registers 8

    .line 760
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-eqz v0, :cond_1d

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void

    .line 764
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 768
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 769
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_42

    .line 770
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 771
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 770
    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->createFromClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    .line 773
    :cond_42
    return-void
.end method

.method public printUniqueId(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 806
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 807
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 809
    return-void
.end method

.method setBackgroundNotRestrictedConstraintSatisfied(JZZ)Z
    .registers 6
    .param p1, "nowElapsed"    # J
    .param p3, "state"    # Z
    .param p4, "isUserBgRestricted"    # Z

    .line 1281
    iput-boolean p4, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    .line 1282
    const/high16 v0, 0x400000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1284
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1285
    const/4 v0, 0x1

    return v0

    .line 1287
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method setBatteryNotLowConstraintSatisfied(JZ)Z
    .registers 5
    .param p1, "nowElapsed"    # J
    .param p3, "state"    # Z

    .line 1223
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    return v0
.end method

.method setChargingConstraintSatisfied(JZ)Z
    .registers 5
    .param p1, "nowElapsed"    # J
    .param p3, "state"    # Z

    .line 1218
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    return v0
.end method

.method setConnectivityConstraintSatisfied(JZ)Z
    .registers 5
    .param p1, "nowElapsed"    # J
    .param p3, "state"    # Z

    .line 1258
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    return v0
.end method

.method setConstraintSatisfied(IJZ)Z
    .registers 12
    .param p1, "constraint"    # I
    .param p2, "nowElapsed"    # J
    .param p4, "state"    # Z

    .line 1373
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 1374
    .local v0, "old":Z
    :goto_a
    if-ne v0, p4, :cond_d

    .line 1375
    return v2

    .line 1377
    :cond_d
    sget-boolean v3, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v3, :cond_49

    .line 1378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constraint "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1379
    if-nez p4, :cond_2b

    const-string v4, "NOT "

    goto :goto_2d

    :cond_2b
    const-string v4, ""

    :goto_2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "satisfied for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1380
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1378
    const-string v4, "JobScheduler.JobStatus"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_49
    if-nez p4, :cond_53

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    if-eqz v3, :cond_53

    move v3, v1

    goto :goto_54

    :cond_53
    move v3, v2

    .line 1383
    .local v3, "wasReady":Z
    :goto_54
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v5, p1

    and-int/2addr v4, v5

    if-eqz p4, :cond_5c

    move v5, p1

    goto :goto_5d

    :cond_5c
    move v5, v2

    :goto_5d
    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 1384
    const v5, -0x6b7ffff1

    and-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 1385
    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v5, :cond_70

    and-int v6, v4, v5

    if-ne v5, v6, :cond_70

    move v5, v1

    goto :goto_71

    :cond_70
    move v5, v2

    :goto_71
    iput-boolean v5, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 1396
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    iget v6, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    aput-wide p2, v5, v6

    .line 1397
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    aput v4, v5, v6

    .line 1398
    add-int/2addr v6, v1

    rem-int/lit8 v6, v6, 0xa

    iput v6, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    .line 1402
    invoke-direct {p0, p1, p4}, Lcom/android/server/job/controllers/JobStatus;->readinessStatusWithConstraint(IZ)Z

    move-result v4

    .line 1403
    .local v4, "isReady":Z
    if-eqz v3, :cond_91

    if-nez v4, :cond_91

    .line 1404
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->constraintToStopReason(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    goto :goto_97

    .line 1405
    :cond_91
    if-nez v3, :cond_97

    if-eqz v4, :cond_97

    .line 1406
    iput v2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 1409
    :cond_97
    :goto_97
    return v1
.end method

.method setContentTriggerConstraintSatisfied(JZ)Z
    .registers 5
    .param p1, "nowElapsed"    # J
    .param p3, "state"    # Z

    .line 1263
    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    return v0
.end method

.method setDeadlineConstraintSatisfied(JZ)Z
    .registers 7
    .param p1, "nowElapsed"    # J
    .param p3, "state"    # Z

    .line 1243
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 1245
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz p3, :cond_1b

    move v1, v2

    :cond_1b
    iput-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 1246
    return v2

    .line 1248
    :cond_1e
    return v1
.end method

.method setDeviceNotDozingConstraintSatisfied(JZZ)Z
    .registers 8
    .param p1, "nowElapsed"    # J
    .param p3, "state"    # Z
    .param p4, "whitelisted"    # Z

    .line 1269
    iput-boolean p4, p0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    .line 1270
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1272
    const/4 v0, 0x1

    if-nez p3, :cond_14

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    move v1, v0

    :cond_15
    iput-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 1273
    return v0

    .line 1275
    :cond_18
    return v1
.end method

.method setExpeditedJobQuotaApproved(JZ)Z
    .registers 8
    .param p1, "nowElapsed"    # J
    .param p3, "state"    # Z

    .line 1317
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    const/4 v1, 0x0

    if-ne v0, p3, :cond_6

    .line 1318
    return v1

    .line 1320
    :cond_6
    const/4 v0, 0x1

    if-nez p3, :cond_11

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v0

    goto :goto_12

    :cond_11
    move v2, v1

    .line 1321
    .local v2, "wasReady":Z
    :goto_12
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    .line 1322
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateExpeditedDependencies()V

    .line 1323
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    .line 1324
    .local v3, "isReady":Z
    if-eqz v2, :cond_24

    if-nez v3, :cond_24

    .line 1325
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    goto :goto_2a

    .line 1326
    :cond_24
    if-nez v2, :cond_2a

    if-eqz v3, :cond_2a

    .line 1327
    iput v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 1329
    :cond_2a
    :goto_2a
    return v0
.end method

.method setExpeditedJobTareApproved(JZ)Z
    .registers 8
    .param p1, "nowElapsed"    # J
    .param p3, "state"    # Z

    .line 1339
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedTareApproved:Z

    const/4 v1, 0x0

    if-ne v0, p3, :cond_6

    .line 1340
    return v1

    .line 1342
    :cond_6
    const/4 v0, 0x1

    if-nez p3, :cond_11

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v0

    goto :goto_12

    :cond_11
    move v2, v1

    .line 1343
    .local v2, "wasReady":Z
    :goto_12
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedTareApproved:Z

    .line 1344
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateExpeditedDependencies()V

    .line 1345
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    .line 1346
    .local v3, "isReady":Z
    if-eqz v2, :cond_24

    if-nez v3, :cond_24

    .line 1347
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    goto :goto_2a

    .line 1348
    :cond_24
    if-nez v2, :cond_2a

    if-eqz v3, :cond_2a

    .line 1349
    iput v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 1351
    :cond_2a
    :goto_2a
    return v0
.end method

.method public setFirstForceBatchedTimeElapsed(J)V
    .registers 3
    .param p1, "now"    # J

    .line 906
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    .line 907
    return-void
.end method

.method setIdleConstraintSatisfied(JZ)Z
    .registers 5
    .param p1, "nowElapsed"    # J
    .param p3, "state"    # Z

    .line 1253
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    return v0
.end method

.method public setOriginalLatestRunTimeElapsed(J)V
    .registers 3
    .param p1, "latestRunTimeElapsed"    # J

    .line 1138
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    .line 1139
    return-void
.end method

.method setPrefetchConstraintSatisfied(JZ)Z
    .registers 5
    .param p1, "nowElapsed"    # J
    .param p3, "state"    # Z

    .line 1233
    const/high16 v0, 0x800000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    return v0
.end method

.method setQuotaConstraintSatisfied(JZ)Z
    .registers 5
    .param p1, "nowElapsed"    # J
    .param p3, "state"    # Z

    .line 1292
    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1294
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 1295
    const/4 v0, 0x1

    return v0

    .line 1297
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public setStandbyBucket(I)V
    .registers 5
    .param p1, "newBucket"    # I

    .line 864
    const v0, 0x10000007

    const/4 v1, 0x5

    if-ne p1, v1, :cond_a

    .line 866
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    goto :goto_11

    .line 867
    :cond_a
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    if-ne v2, v1, :cond_11

    .line 869
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->removeDynamicConstraints(I)V

    .line 872
    :cond_11
    :goto_11
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    .line 874
    return-void
.end method

.method setStorageNotLowConstraintSatisfied(JZ)Z
    .registers 5
    .param p1, "nowElapsed"    # J
    .param p3, "state"    # Z

    .line 1228
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    return v0
.end method

.method setTareWealthConstraintSatisfied(JZ)Z
    .registers 5
    .param p1, "nowElapsed"    # J
    .param p3, "state"    # Z

    .line 1302
    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1304
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyTareWealth:Z

    .line 1305
    const/4 v0, 0x1

    return v0

    .line 1307
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method setTimingDelayConstraintSatisfied(JZ)Z
    .registers 5
    .param p1, "nowElapsed"    # J
    .param p3, "state"    # Z

    .line 1238
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    return v0
.end method

.method setTrackingController(I)V
    .registers 3
    .param p1, "which"    # I

    .line 1502
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    .line 1503
    return-void
.end method

.method setUidActive(Z)Z
    .registers 3
    .param p1, "newActiveState"    # Z

    .line 1364
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eq p1, v0, :cond_8

    .line 1365
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    .line 1366
    const/4 v0, 0x1

    return v0

    .line 1368
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public setWhenStandbyDeferred(J)V
    .registers 3
    .param p1, "now"    # J

    .line 894
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    .line 895
    return-void
.end method

.method public shouldTreatAsExpeditedJob()Z
    .registers 2

    .line 1196
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedTareApproved:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .param p1, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 734
    const/4 v0, 0x0

    if-eqz p1, :cond_37

    .line 737
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 738
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 740
    :cond_11
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_1a

    .line 741
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    goto :goto_2b

    .line 742
    :cond_1a
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2b

    .line 743
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 745
    :cond_2b
    :goto_2b
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 746
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 747
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    iput v0, p1, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 748
    invoke-direct {p1}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    goto :goto_45

    .line 751
    :cond_37
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Ljava/util/ArrayList;)V

    .line 752
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 753
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Ljava/util/ArrayList;)V

    .line 754
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 756
    :goto_45
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    .line 757
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 1791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1792
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1795
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1797
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1798
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortStringExceptUniqueId()Ljava/lang/String;
    .registers 3

    .line 1807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1808
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1810
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1706
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "JobStatus{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1710
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1712
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1713
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1716
    const-string v1, " s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1717
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1718
    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_64

    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_88

    .line 1720
    :cond_64
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 1721
    .local v10, "now":J
    const-string v1, " TIME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-wide v8, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    .line 1723
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v6, 0x7fffffffffffffffL

    invoke-direct/range {v2 .. v9}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    .line 1726
    .end local v10    # "now":J
    :cond_88
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_95

    .line 1727
    const-string v1, " NET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    :cond_95
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 1730
    const-string v1, " CHARGING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    :cond_a2
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 1733
    const-string v1, " BATNOTLOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    :cond_af
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 1736
    const-string v1, " STORENOTLOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    :cond_bc
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 1739
    const-string v1, " IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    :cond_c9
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 1742
    const-string v1, " PERIODIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    :cond_d6
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 1745
    const-string v1, " PERSISTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    :cond_e3
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-nez v1, :cond_ef

    .line 1748
    const-string v1, " WAIT:DEV_NOT_DOZING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    :cond_ef
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    if-eqz v1, :cond_109

    .line 1751
    const-string v1, " URIS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    :cond_109
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v1, :cond_117

    .line 1755
    const-string v1, " failures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1758
    :cond_117
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v1

    if-eqz v1, :cond_123

    .line 1759
    const-string v1, " READY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_145

    .line 1761
    :cond_123
    const-string v1, " satisfied:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    const-string v1, " unsatisfied:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    and-int/2addr v2, v3

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    :goto_145
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unprepareLocked()V
    .registers 4

    .line 776
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-nez v0, :cond_26

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hasn\'t been prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    if-eqz v0, :cond_25

    .line 779
    const-string v2, "Was already unprepared at "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 781
    :cond_25
    return-void

    .line 783
    :cond_26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 785
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 787
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v0, :cond_3e

    .line 788
    invoke-virtual {v0}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    .line 791
    :cond_3e
    return-void
.end method

.method public updateMediaBackupExemptionStatus()Z
    .registers 6

    .line 915
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 916
    .local v0, "jsi":Lcom/android/server/job/JobSchedulerInternal;
    iget-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mHasExemptedMediaUrisOnly:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 917
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v1

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 918
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 919
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v1

    const/16 v4, 0x12c

    if-lt v1, v4, :cond_36

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 920
    invoke-interface {v0, v4}, Lcom/android/server/job/JobSchedulerInternal;->getCloudMediaProviderPackage(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    move v1, v2

    goto :goto_37

    :cond_36
    move v1, v3

    .line 921
    .local v1, "hasMediaExemption":Z
    :goto_37
    iget-boolean v4, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    if-ne v4, v1, :cond_3c

    .line 922
    return v3

    .line 924
    :cond_3c
    iput-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    .line 925
    return v2
.end method

.method wouldBeReadyWithConstraint(I)Z
    .registers 3
    .param p1, "constraint"    # I

    .line 1577
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/job/controllers/JobStatus;->readinessStatusWithConstraint(IZ)Z

    move-result v0

    return v0
.end method

.method public writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1819
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1821
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1822
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1823
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1825
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1826
    return-void
.end method
