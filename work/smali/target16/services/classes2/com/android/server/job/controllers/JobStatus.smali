.class public final Lcom/android/server/job/controllers/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"


# static fields
.field public static final BASIC_PII_FILTERS:Landroid/util/ArrayMap;

.field public static final CONSTRAINT_STORAGE_NOT_LOW:I = 0x8

.field public static final DEBUG:Z

.field public static final MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

.field public static sMessageDigest:Ljava/security/MessageDigest;

.field public static final sNamespaceHashCache:Landroid/util/ArrayMap;


# instance fields
.field public appHasDozeExemption:Z

.field public final batteryName:Ljava/lang/String;

.field public final callingUid:I

.field public changedAuthorities:Landroid/util/ArraySet;

.field public changedUris:Landroid/util/ArraySet;

.field public contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

.field public final earliestRunTimeElapsedMillis:J

.field public enqueueTime:J

.field public executingWork:Ljava/util/ArrayList;

.field public final job:Landroid/app/job/JobInfo;

.field public lastEvaluatedBias:I

.field public final latestRunTimeElapsedMillis:J

.field public final mCanApplyTransportAffinities:Z

.field public mConstraintChangeHistoryIndex:I

.field public final mConstraintStatusHistory:[I

.field public final mConstraintUpdatedTimesElapsed:[J

.field public mCumulativeExecutionTimeMs:J

.field public mDynamicConstraints:I

.field public mExpeditedQuotaApproved:Z

.field public mFilteredDebugTags:[Ljava/lang/String;

.field public mFilteredTraceTag:Ljava/lang/String;

.field public mFirstForceBatchedTimeElapsed:J

.field public final mHasExemptedMediaUrisOnly:Z

.field public mHasMediaBackupExemption:Z

.field public mInternalFlags:I

.field public mIsAbandoned:Z

.field public mIsDowngradedDueToBuggyApp:Z

.field public final mIsProxyJob:Z

.field public mIsUserBgRestricted:Z

.field public mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

.field public mLastFailedRunTime:J

.field public mLastSuccessfulRunTime:J

.field public mLoggedBucketMismatch:Z

.field public final mLoggingJobId:J

.field public mMinimumNetworkChunkBytes:J

.field public final mNamespace:Ljava/lang/String;

.field public final mNamespaceHash:Ljava/lang/String;

.field public final mNumAbandonedFailures:I

.field public mNumAppliedFlexibleConstraints:I

.field public mNumDroppedFlexibleConstraints:I

.field public final mNumSystemStops:I

.field public mOriginalLatestRunTimeElapsedMillis:J

.field public final mPendingJobReasonsHistory:Ljava/util/List;

.field public mPersistedUtcTimes:Landroid/util/Pair;

.field public mReadyDeadlineSatisfied:Z

.field public mReadyDynamicSatisfied:Z

.field public mReadyNotDozing:Z

.field public mReadyNotRestrictedInBg:Z

.field public mReadyWithinQuota:Z

.field public mReasonReadyToUnready:I

.field public final mRequiredConstraintsOfInterest:I

.field public mSatisfiedConstraintsOfInterest:I

.field public mStandbyBucketReason:I

.field public mSystemTraceTag:Ljava/lang/String;

.field public mTotalNetworkDownloadBytes:J

.field public mTotalNetworkUploadBytes:J

.field public mTransportAffinitiesSatisfied:Z

.field public mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

.field public mWakelockTag:Ljava/lang/String;

.field public madeActive:J

.field public madePending:J

.field public network:Landroid/net/Network;

.field public nextPendingWorkId:I

.field public final numFailures:I

.field public overrideState:I

.field public pendingWork:Ljava/util/ArrayList;

.field public prepared:Z

.field public final requiredConstraints:I

.field public satisfiedConstraints:I

.field public serviceProcessName:Ljava/lang/String;

.field public final sourcePackageName:Ljava/lang/String;

.field public final sourceTag:Ljava/lang/String;

.field public final sourceUid:I

.field public final sourceUserId:I

.field public standbyBucket:I

.field public startedAsExpeditedJob:Z

.field public startedAsUserInitiatedJob:Z

.field public startedWithForegroundFlag:Z

.field public startedWithImmediacyPrivilege:Z

.field public trackingControllers:I

.field public uidActive:Z

.field public unpreparedPoint:Ljava/lang/Throwable;

.field public uriPerms:Lcom/android/server/job/GrantedUriPermissions;

.field public whenStandbyDeferred:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 105
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    .line 110
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->sNamespaceHashCache:Landroid/util/ArrayMap;

    const/4 v0, 0x2

    .line 183
    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    .line 217
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->BASIC_PII_FILTERS:Landroid/util/ArrayMap;

    .line 220
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string v2, "[EMAIL]"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const-string v2, "[PHONE]"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIIJJJJJII)V
    .registers 41

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p7

    move/from16 v6, p9

    move/from16 v7, p11

    move-wide/from16 v8, p12

    move-wide/from16 v10, p14

    .line 646
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v12, 0x0

    .line 296
    iput-object v12, v0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    const/4 v13, 0x0

    .line 364
    iput v13, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 365
    iput v13, v0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 370
    iput v13, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 474
    iput-boolean v13, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 479
    iput-boolean v13, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 486
    iput-boolean v13, v0, Lcom/android/server/job/controllers/JobStatus;->startedWithForegroundFlag:Z

    .line 488
    iput-boolean v13, v0, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    const/4 v14, 0x1

    .line 496
    iput v14, v0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 499
    iput v13, v0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 535
    iput v13, v0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    const/16 v15, 0xa

    move/from16 v16, v14

    .line 536
    new-array v14, v15, [J

    iput-object v14, v0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    .line 537
    new-array v14, v15, [I

    iput-object v14, v0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    .line 539
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    const-wide/16 v14, -0x1

    .line 549
    iput-wide v14, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 550
    iput-wide v14, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 551
    iput-wide v14, v0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    .line 598
    iput v13, v0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 647
    iput v1, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 648
    iput v4, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    move/from16 v14, p6

    .line 649
    iput v14, v0, Lcom/android/server/job/controllers/JobStatus;->mStandbyBucketReason:I

    .line 650
    iput-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 651
    invoke-static {v5}, Lcom/android/server/job/controllers/JobStatus;->generateNamespaceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lcom/android/server/job/controllers/JobStatus;->mNamespaceHash:Ljava/lang/String;

    .line 652
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v14

    invoke-virtual {v0, v5, v14}, Lcom/android/server/job/controllers/JobStatus;->generateLoggingId(Ljava/lang/String;I)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/server/job/controllers/JobStatus;->mLoggingJobId:J

    const-wide/16 v14, 0x0

    const/4 v13, -0x1

    if-eq v3, v13, :cond_77

    if-eqz v2, :cond_77

    .line 657
    :try_start_6e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    invoke-interface {v12, v2, v14, v15, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v12
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_76} :catch_77

    goto :goto_78

    :catch_77
    :cond_77
    move v12, v13

    :goto_78
    if-ne v12, v13, :cond_90

    .line 664
    iput v1, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 665
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 666
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 667
    iput-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    goto :goto_9a

    .line 669
    :cond_90
    iput v12, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 670
    iput v3, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 671
    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    move-object/from16 v1, p8

    .line 672
    iput-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 676
    :goto_9a
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_d6

    .line 680
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(Landroid/app/job/JobInfo;)V

    .line 681
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/net/NetworkRequest$Builder;-><init>(Landroid/net/NetworkRequest;)V

    new-instance v2, Landroid/util/Range;

    iget v12, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 682
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v2, v12, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 683
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 681
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    const/4 v2, 0x0

    .line 686
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/app/job/JobInfo$Builder;->build(ZZZZ)Landroid/app/job/JobInfo;

    move-result-object v1

    goto :goto_d9

    :cond_d6
    move-object/from16 v2, p1

    move-object v1, v2

    .line 689
    :goto_d9
    iput-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 693
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f1

    .line 695
    const-string v12, "#"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f1
    if-eqz v5, :cond_fe

    .line 699
    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :cond_fe
    iget-object v3, v0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    if-eqz v3, :cond_116

    .line 702
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_121

    .line 704
    :cond_116
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    :goto_121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 708
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 709
    iget-object v3, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    .line 711
    iput-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 712
    iput-wide v10, v0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 713
    iput-wide v10, v0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    .line 714
    iput v6, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    move/from16 v2, p10

    .line 715
    iput v2, v0, Lcom/android/server/job/controllers/JobStatus;->mNumAbandonedFailures:I

    .line 716
    iput v7, v0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    .line 718
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getConstraintFlags()I

    move-result v2

    .line 719
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    if-eqz v3, :cond_154

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    :cond_154
    cmp-long v3, v8, v14

    if-eqz v3, :cond_15b

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    :cond_15b
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v3, v10, v8

    if-eqz v3, :cond_167

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    .line 728
    :cond_167
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v3

    if-eqz v3, :cond_170

    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    .line 732
    :cond_170
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    if-eqz v3, :cond_18f

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    .line 735
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    array-length v5, v3

    const/4 v8, 0x0

    :goto_17f
    if-ge v8, v5, :cond_195

    aget-object v9, v3, v8

    .line 736
    sget-object v10, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_192

    :cond_18f
    move v3, v2

    const/4 v2, 0x0

    goto :goto_198

    :cond_192
    add-int/lit8 v8, v8, 0x1

    goto :goto_17f

    :cond_195
    move v3, v2

    move/from16 v2, v16

    .line 742
    :goto_198
    iput-boolean v2, v0, Lcom/android/server/job/controllers/JobStatus;->mHasExemptedMediaUrisOnly:Z

    .line 744
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    if-eqz v2, :cond_1ae

    .line 745
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1ae

    move/from16 v2, v16

    goto :goto_1af

    :cond_1ae
    const/4 v2, 0x0

    :goto_1af
    iput-boolean v2, v0, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    not-int v5, v3

    and-int/lit8 v5, v5, 0x7

    if-nez v5, :cond_1bb

    if-eqz v2, :cond_1b9

    goto :goto_1bb

    :cond_1b9
    const/4 v2, 0x0

    goto :goto_1bd

    :cond_1bb
    :goto_1bb
    move/from16 v2, v16

    .line 753
    :goto_1bd
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v5

    if-nez v5, :cond_1d4

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v1

    if-nez v1, :cond_1d4

    add-int v1, v6, v7

    move/from16 v5, v16

    if-eq v1, v5, :cond_1d4

    if-eqz v2, :cond_1d4

    const/high16 v1, 0x200000

    or-int/2addr v3, v1

    .line 759
    :cond_1d4
    iput v3, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const v1, -0x6b5ffff1

    and-int/2addr v1, v3

    .line 760
    iput v1, v0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    move/from16 v1, p23

    .line 761
    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    .line 762
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    const/4 v1, 0x5

    if-ne v4, v1, :cond_1f4

    const v1, 0x10000007

    .line 764
    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    const/4 v2, 0x0

    :goto_1f1
    move-wide/from16 v3, p20

    goto :goto_1f8

    :cond_1f4
    const/4 v2, 0x0

    .line 766
    iput-boolean v2, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    goto :goto_1f1

    .line 769
    :goto_1f8
    iput-wide v3, v0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    move-wide/from16 v3, p16

    .line 771
    iput-wide v3, v0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    move-wide/from16 v3, p18

    .line 772
    iput-wide v3, v0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    move/from16 v1, p22

    .line 774
    iput v1, v0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 776
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    .line 778
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->updateMediaBackupExemptionStatus()Z

    .line 780
    iput-boolean v2, v0, Lcom/android/server/job/controllers/JobStatus;->mIsAbandoned:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;JJJJJLandroid/util/Pair;II)V
    .registers 47

    move-object/from16 v0, p19

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v13, p9

    move-wide/from16 v15, p11

    move-wide/from16 v17, p13

    move-wide/from16 v19, p15

    move-wide/from16 v21, p17

    move/from16 v23, p20

    move/from16 v24, p21

    .line 824
    invoke-direct/range {v1 .. v24}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIIJJJJJII)V

    .line 836
    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v0, :cond_37

    .line 838
    sget-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v0, :cond_37

    .line 839
    const-string v0, "JobScheduler.JobStatus"

    const-string v1, "+ restored job with RTC times because of bad boot clock"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 26

    move-object/from16 v0, p1

    .line 786
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    .line 787
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    .line 788
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucketReason()I

    move-result v6

    .line 789
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v9

    .line 790
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v10

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getNumSystemStops()I

    move-result v11

    .line 791
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v12

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v14

    .line 792
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v16

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v18

    .line 793
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getCumulativeExecutionTimeMs()J

    move-result-wide v20

    .line 794
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v22

    move-object/from16 v23, v1

    iget v1, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    move-object/from16 v0, v23

    move/from16 v23, v1

    move-object v1, v0

    move-object/from16 v0, p0

    .line 786
    invoke-direct/range {v0 .. v23}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIIJJJJJII)V

    move-object/from16 v1, p1

    .line 795
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 796
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v2, :cond_70

    .line 797
    sget-boolean v2, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v2, :cond_70

    .line 798
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v3, "JobScheduler.JobStatus"

    const-string v4, "Cloning job with persisted run times"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    :cond_70
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v2, :cond_83

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_83

    .line 802
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 804
    :cond_83
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v2, :cond_96

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_96

    .line 805
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    :cond_96
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;JJIIIJJJ)V
    .registers 39

    move-object/from16 v0, p1

    .line 851
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    .line 852
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    .line 853
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucketReason()I

    move-result v6

    .line 854
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v8

    .line 859
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v22

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v16, p9

    move-wide/from16 v18, p11

    move-wide/from16 v20, p13

    move/from16 v23, v0

    move-object/from16 v0, p0

    .line 851
    invoke-direct/range {v0 .. v23}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIIJJJJJII)V

    return-void
.end method

.method public static applyBasicPiiFilters(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1463
    sget-object v0, Lcom/android/server/job/controllers/JobStatus;->BASIC_PII_FILTERS:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_23

    .line 1464
    sget-object v1, Lcom/android/server/job/controllers/JobStatus;->BASIC_PII_FILTERS:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_23
    return-object p0
.end method

.method public static bucketName(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2a

    .line 2897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2895
    :pswitch_15
    const-string p0, "EXEMPTED"

    return-object p0

    .line 2894
    :pswitch_18
    const-string p0, "RESTRICTED"

    return-object p0

    .line 2893
    :pswitch_1b
    const-string p0, "NEVER"

    return-object p0

    .line 2892
    :pswitch_1e
    const-string p0, "RARE"

    return-object p0

    .line 2891
    :pswitch_21
    const-string p0, "FREQUENT"

    return-object p0

    .line 2890
    :pswitch_24
    const-string p0, "WORKING_SET"

    return-object p0

    .line 2889
    :pswitch_27
    const-string p0, "ACTIVE"

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public static constraintsToString(I)Ljava/lang/String;
    .registers 4

    .line 2902
    const-string v0, "CONSTRAINT_"

    int-to-long v1, p0

    const-class p0, Lcom/android/server/job/controllers/JobStatus;

    invoke-static {p0, v0, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/job/controllers/JobStatus;
    .registers 36

    .line 873
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 875
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 877
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    const-wide v4, 0x757b12c00L

    .line 878
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 877
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long v4, v0, v2

    .line 882
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long v2, v4, v2

    :goto_35
    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    goto :goto_5a

    .line 884
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 885
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    goto :goto_48

    :cond_46
    const-wide/16 v2, 0x0

    .line 886
    :goto_48
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 887
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    goto :goto_35

    :cond_54
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_35

    :goto_5a
    if-eqz p2, :cond_61

    move-object/from16 v2, p2

    :goto_5e
    move/from16 v10, p3

    goto :goto_6a

    .line 889
    :cond_61
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_5e

    .line 891
    :goto_6a
    invoke-static {v2, v10, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketAndReasonForPackage(Ljava/lang/String;IJ)J

    move-result-wide v0

    .line 893
    new-instance v6, Lcom/android/server/job/controllers/JobStatus;

    .line 894
    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v11

    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v12

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-direct/range {v6 .. v29}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIIJJJJJII)V

    return-object v6
.end method

.method public static dumpConstraints(Ljava/io/PrintWriter;I)V
    .registers 3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_9

    .line 2731
    const-string v0, " CHARGING"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_12

    .line 2734
    const-string v0, " BATTERY_NOT_LOW"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_12
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1b

    .line 2737
    const-string v0, " STORAGE_NOT_LOW"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1b
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_25

    .line 2740
    const-string v0, " TIMING_DELAY"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_25
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    if-eqz v0, :cond_2f

    .line 2743
    const-string v0, " DEADLINE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2f
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_38

    .line 2746
    const-string v0, " IDLE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_38
    const/high16 v0, 0x10000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_42

    .line 2749
    const-string v0, " CONNECTIVITY"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_42
    const/high16 v0, 0x200000

    and-int/2addr v0, p1

    if-eqz v0, :cond_4c

    .line 2752
    const-string v0, " FLEXIBILITY"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4c
    const/high16 v0, 0x4000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_56

    .line 2755
    const-string v0, " CONTENT_TRIGGER"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_56
    const/high16 v0, 0x2000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_60

    .line 2758
    const-string v0, " DEVICE_NOT_DOZING"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_60
    const/high16 v0, 0x400000

    and-int/2addr v0, p1

    if-eqz v0, :cond_6a

    .line 2761
    const-string v0, " BACKGROUND_NOT_RESTRICTED"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6a
    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-eqz v0, :cond_74

    .line 2764
    const-string v0, " PREFETCH"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_74
    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_7e

    .line 2767
    const-string v0, " WITHIN_QUOTA"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7e
    if-eqz p1, :cond_91

    .line 2770
    const-string v0, " [0x"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2771
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2772
    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_91
    return-void
.end method

.method public static formatTime(J)Ljava/lang/CharSequence;
    .registers 3

    .line 3222
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static generateNamespaceHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 915
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    return-object p0

    .line 919
    :cond_f
    sget-object v1, Lcom/android/server/job/controllers/JobStatus;->sNamespaceHashCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 920
    :try_start_12
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_23

    .line 922
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v1

    return-object p0

    :catchall_20
    move-exception p0

    goto/16 :goto_93

    .line 924
    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_20

    .line 930
    :try_start_24
    sget-object v1, Lcom/android/server/job/controllers/JobStatus;->sMessageDigest:Ljava/security/MessageDigest;

    if-nez v1, :cond_33

    .line 931
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lcom/android/server/job/controllers/JobStatus;->sMessageDigest:Ljava/security/MessageDigest;

    goto :goto_33

    :catch_31
    move-exception v1

    goto :goto_62

    .line 933
    :cond_33
    :goto_33
    sget-object v1, Lcom/android/server/job/controllers/JobStatus;->sMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 935
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 936
    array-length v3, v1

    const/4 v4, 0x0

    :goto_45
    if-ge v4, v3, :cond_5d

    aget-byte v5, v1, v4

    .line 937
    const-string v6, "%02X"

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 939
    :cond_5d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_61} :catch_31

    goto :goto_69

    .line 941
    :goto_62
    const-string v2, "JobScheduler.JobStatus"

    const-string v3, "Couldn\'t hash input"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_69
    if-nez v0, :cond_6e

    .line 946
    const-string p0, "failed_namespace_hash"

    return-object p0

    .line 948
    :cond_6e
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 949
    sget-object v2, Lcom/android/server/job/controllers/JobStatus;->sNamespaceHashCache:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 950
    :try_start_75
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v3, 0x80

    if-lt v1, v3, :cond_8c

    .line 953
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_8c

    :catchall_8a
    move-exception p0

    goto :goto_91

    .line 955
    :cond_8c
    :goto_8c
    invoke-virtual {v2, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    monitor-exit v2

    return-object v0

    :goto_91
    monitor-exit v2
    :try_end_92
    .catchall {:try_start_75 .. :try_end_92} :catchall_8a

    throw p0

    .line 924
    :goto_93
    :try_start_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_20

    throw p0
.end method

.method public static getProtoConstraint(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_27

    const/4 v0, 0x2

    if-eq p0, v0, :cond_27

    sparse-switch p0, :sswitch_data_28

    const/4 p0, 0x0

    return p0

    :sswitch_b
    const/4 p0, 0x5

    return p0

    :sswitch_d
    const/4 p0, 0x7

    return p0

    :sswitch_f
    const/16 p0, 0x8

    return p0

    :sswitch_12
    const/16 p0, 0x9

    return p0

    :sswitch_15
    const/16 p0, 0xa

    return p0

    :sswitch_18
    const/16 p0, 0xe

    return p0

    :sswitch_1b
    const/16 p0, 0xb

    return p0

    :sswitch_1e
    const/16 p0, 0xf

    return p0

    :sswitch_21
    const/4 p0, 0x3

    return p0

    :sswitch_23
    const/4 p0, 0x6

    return p0

    :sswitch_25
    const/4 p0, 0x4

    return p0

    :cond_27
    return v0

    :sswitch_data_28
    .sparse-switch
        -0x80000000 -> :sswitch_25
        0x4 -> :sswitch_23
        0x8 -> :sswitch_21
        0x200000 -> :sswitch_1e
        0x400000 -> :sswitch_1b
        0x800000 -> :sswitch_18
        0x1000000 -> :sswitch_15
        0x2000000 -> :sswitch_12
        0x4000000 -> :sswitch_f
        0x10000000 -> :sswitch_d
        0x40000000 -> :sswitch_b
    .end sparse-switch
.end method

.method public static ungrantWorkItem(Landroid/app/job/JobWorkItem;)V
    .registers 2

    .line 1006
    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1007
    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {p0}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    :cond_f
    return-void
.end method

.method public static ungrantWorkList(Ljava/util/ArrayList;)V
    .registers 4

    if-eqz p0, :cond_15

    .line 1033
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 1035
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/job/JobWorkItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method


# virtual methods
.method public addDynamicConstraints(I)V
    .registers 4

    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_10

    .line 2383
    const-string v0, "JobScheduler.JobStatus"

    const-string v1, "Tried to set quota as a dynamic constraint"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x1000001

    and-int/2addr p1, v0

    .line 2390
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-nez v0, :cond_1a

    const v0, -0x10000001

    and-int/2addr p1, v0

    .line 2393
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-nez v0, :cond_24

    const v0, -0x4000001

    and-int/2addr p1, v0

    .line 2397
    :cond_24
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p1, :cond_32

    .line 2398
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return-void
.end method

.method public addInternalFlags(I)V
    .registers 3

    .line 1567
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    return-void
.end method

.method public areTransportAffinitiesSatisfied()Z
    .registers 1

    .line 1771
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mTransportAffinitiesSatisfied:Z

    return p0
.end method

.method public canApplyTransportAffinities()Z
    .registers 1

    .line 1780
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    return p0
.end method

.method public canRunInBatterySaver()Z
    .registers 3

    .line 1890
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_22

    .line 1891
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1893
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_20

    :cond_18
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    const/high16 v0, 0x400000

    and-int/2addr p0, v0

    if-nez p0, :cond_20

    goto :goto_22

    :cond_20
    const/4 p0, 0x0

    return p0

    :cond_22
    :goto_22
    return v1
.end method

.method public canRunInDoze()Z
    .registers 3

    .line 1881
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    const/4 v1, 0x1

    if-nez v0, :cond_26

    .line 1882
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_26

    .line 1883
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1885
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_24

    :cond_1c
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-nez p0, :cond_24

    goto :goto_26

    :cond_24
    const/4 p0, 0x0

    return p0

    :cond_26
    :goto_26
    return v1
.end method

.method public clearPersistedUtcTimes()V
    .registers 2

    const/4 v0, 0x0

    .line 1825
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    return-void
.end method

.method public clearTrackingController(I)Z
    .registers 4

    .line 2344
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int v1, v0, p1

    if-eqz v1, :cond_c

    not-int p1, p1

    and-int/2addr p1, v0

    .line 2345
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public completeWorkLocked(I)Z
    .registers 7

    .line 1016
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 1017
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_2a

    .line 1019
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobWorkItem;

    .line 1020
    invoke-virtual {v3}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v4

    if-ne v4, p1, :cond_27

    .line 1021
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1022
    invoke-static {v3}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/job/JobWorkItem;)V

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    const/4 p0, 0x1

    return p0

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2a
    return v1
.end method

.method public computeSystemTraceTag()Ljava/lang/String;
    .registers 2

    .line 1137
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSystemTraceTag:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 1141
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->computeSystemTraceTagInner()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSystemTraceTag:Ljava/lang/String;

    return-object v0
.end method

.method public final computeSystemTraceTagInner()Ljava/lang/String;
    .registers 4

    .line 1147
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1149
    const-string v2, "*job*<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1151
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    :cond_33
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 1155
    const-string v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    :cond_55
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 1158
    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    :cond_6d
    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final constraintToStopReason(I)I
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0xc

    if-eq p1, v0, :cond_68

    const/4 v0, 0x2

    if-eq p1, v0, :cond_60

    const/16 v0, 0x8

    const/4 v2, 0x4

    if-eq p1, v2, :cond_59

    if-eq p1, v0, :cond_56

    const/high16 v0, 0x200000

    const/4 v1, 0x0

    if-eq p1, v0, :cond_55

    const/high16 v0, 0x400000

    if-eq p1, v0, :cond_4d

    const/high16 p0, 0x800000

    if-eq p1, p0, :cond_4a

    const/high16 p0, 0x1000000

    if-eq p1, p0, :cond_47

    const/high16 p0, 0x2000000

    if-eq p1, p0, :cond_46

    const/high16 p0, 0x10000000

    if-eq p1, p0, :cond_44

    .line 2151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported constraint ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") --stop reason mapping"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.JobStatus"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_44
    const/4 p0, 0x7

    return p0

    :cond_46
    return v2

    :cond_47
    const/16 p0, 0xa

    return p0

    :cond_4a
    const/16 p0, 0xf

    return p0

    .line 2128
    :cond_4d
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    if-eqz p0, :cond_54

    const/16 p0, 0xb

    return p0

    :cond_54
    return v2

    :cond_55
    return v1

    :cond_56
    const/16 p0, 0x9

    return p0

    .line 2109
    :cond_59
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_5f

    return v0

    :cond_5f
    return v1

    .line 2089
    :cond_60
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_67

    const/4 p0, 0x5

    return p0

    :cond_67
    return v1

    .line 2098
    :cond_68
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_6f

    const/4 p0, 0x6

    return p0

    :cond_6f
    return v1
.end method

.method public constraintsToPendingJobReasons(I)Ljava/util/ArrayList;
    .registers 7

    const/16 v0, 0xc

    .line 2171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    .line 2188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2158
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/high16 v4, 0x400000

    and-int/2addr v4, p1

    if-eqz v4, :cond_25

    .line 2168
    iget-boolean v4, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    if-eqz v4, :cond_22

    const/4 v4, 0x3

    .line 2169
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    goto :goto_25

    .line 2171
    :cond_22
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_25
    :goto_25
    const/high16 v4, 0x2000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_33

    .line 2175
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 2176
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_33
    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x4

    if-eqz v0, :cond_48

    .line 2181
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_45

    .line 2184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    goto :goto_48

    .line 2188
    :cond_45
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_48
    :goto_48
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_64

    .line 2192
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5b

    const/4 v0, 0x5

    .line 2195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    goto :goto_64

    .line 2199
    :cond_5b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 2200
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_64
    :goto_64
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_80

    .line 2205
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr p0, v4

    if-eqz p0, :cond_77

    const/16 p0, 0x8

    .line 2208
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    goto :goto_80

    .line 2212
    :cond_77
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_80

    .line 2213
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_80
    :goto_80
    const/high16 p0, 0x10000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_8d

    const/4 p0, 0x6

    .line 2219
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_8d
    const/high16 p0, 0x4000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_9a

    const/4 p0, 0x7

    .line 2222
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_9a
    const/high16 p0, 0x200000

    and-int/2addr p0, p1

    if-eqz p0, :cond_a8

    const/16 p0, 0xd

    .line 2225
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_a8
    const/high16 p0, 0x800000

    and-int/2addr p0, p1

    if-eqz p0, :cond_b6

    const/16 p0, 0xa

    .line 2228
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_b6
    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_c3

    const/16 p0, 0xb

    .line 2231
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_c3
    const/high16 p0, -0x80000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_d1

    const/16 p0, 0x9

    .line 2234
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_d1
    const/high16 p0, 0x1000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_df

    const/16 p0, 0xe

    .line 2237
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_df
    const/high16 p0, 0x40000000    # 2.0f

    and-int/2addr p0, p1

    if-eqz p0, :cond_ed

    const/16 p0, 0x10

    .line 2241
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_ed
    return-object v3
.end method

.method public dequeueWorkLocked()Landroid/app/job/JobWorkItem;
    .registers 3

    .line 976
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 977
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    if-eqz v0, :cond_28

    .line 979
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_20

    .line 980
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 982
    :cond_20
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->bumpDeliveryCount()V

    :cond_28
    return-object v0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public disallowRunInBatterySaverAndDoze()V
    .registers 2

    const/high16 v0, 0x2400000

    .line 2371
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;ZJ)V
    .registers 17
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-wide v6, p3

    .line 2908
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2909
    const-string v0, " tag="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2911
    const-string v0, "Source: uid="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2912
    const-string v0, " user="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2913
    const-string v0, " pkg="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/16 v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v8, 0x0

    if-eqz p2, :cond_322

    .line 2915
    const-string v3, "JobInfo:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2916
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2918
    const-string v3, "Service: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2919
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2920
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 2921
    const-string v3, "PERIODIC: interval="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2922
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2923
    const-string v3, " flex="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2924
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2926
    :cond_7f
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 2927
    const-string v3, "PERSISTED"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2929
    :cond_8c
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getBias()I

    move-result v3

    if-eqz v3, :cond_a6

    .line 2930
    const-string v3, "Bias: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2931
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getBias()I

    move-result v3

    invoke-static {v3}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2933
    :cond_a6
    const-string v3, "Priority: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2934
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v3

    invoke-static {v3}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2935
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v3

    .line 2936
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v4

    if-eq v3, v4, :cond_d0

    .line 2937
    const-string v4, " effective="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2938
    invoke-static {v3}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2940
    :cond_d0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2941
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v3

    if-eqz v3, :cond_ed

    .line 2942
    const-string v3, "Flags: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2943
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2945
    :cond_ed
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v3

    if-eqz v3, :cond_112

    .line 2946
    const-string v3, "Internal flags: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2947
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2949
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_10f

    .line 2950
    const-string v3, " HAS_FOREGROUND_EXEMPTION"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2952
    :cond_10f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2954
    :cond_112
    const-string v3, "Requires: charging="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2955
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v3, " batteryNotLow="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2956
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v3, " deviceIdle="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2957
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 2958
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    if-eqz v3, :cond_1af

    .line 2959
    const-string v3, "Trigger content URIs:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2960
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v3, v1

    .line 2961
    :goto_14d
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_176

    .line 2962
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v4

    aget-object v4, v4, v3

    .line 2963
    invoke-virtual {v4}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2964
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {v4}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14d

    .line 2966
    :cond_176
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2967
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-ltz v3, :cond_194

    .line 2968
    const-string v3, "Trigger update delay: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2969
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2970
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2972
    :cond_194
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-ltz v3, :cond_1af

    .line 2973
    const-string v3, "Trigger max delay: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2974
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2975
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2978
    :cond_1af
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Has media backup exemption"

    invoke-virtual {p1, v4, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2979
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_1e4

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v3

    if-nez v3, :cond_1e4

    .line 2980
    const-string v3, "Extras: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2981
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PersistableBundle;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2983
    :cond_1e4
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_20a

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v3

    if-nez v3, :cond_20a

    .line 2984
    const-string v3, "Transient extras: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2985
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2987
    :cond_20a
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    if-eqz v3, :cond_22a

    .line 2988
    const-string v3, "Clip data: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2989
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2990
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2991
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2993
    :cond_22a
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v3, :cond_238

    .line 2994
    const-string v3, "Granted URI permissions:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2995
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v3, p1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;)V

    .line 2997
    :cond_238
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    if-eqz v3, :cond_24e

    .line 2998
    const-string v3, "Network type: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2999
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3001
    :cond_24e
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v10, -0x1

    cmp-long v3, v3, v10

    if-eqz v3, :cond_260

    .line 3002
    const-string v3, "Network download bytes: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3003
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    invoke-virtual {p1, v3, v4}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 3005
    :cond_260
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v3, v3, v10

    if-eqz v3, :cond_270

    .line 3006
    const-string v3, "Network upload bytes: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3007
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    invoke-virtual {p1, v3, v4}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 3009
    :cond_270
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    cmp-long v3, v3, v10

    if-eqz v3, :cond_280

    .line 3010
    const-string v3, "Minimum network chunk bytes: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3011
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    invoke-virtual {p1, v3, v4}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 3013
    :cond_280
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-eqz v3, :cond_29b

    .line 3014
    const-string v3, "Minimum latency: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3015
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3016
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3018
    :cond_29b
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-eqz v3, :cond_2b6

    .line 3019
    const-string v3, "Max execution delay: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3020
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3021
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3023
    :cond_2b6
    const-string v3, "Backoff: policy="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3024
    const-string v3, " initial="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3025
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3026
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v3

    if-eqz v3, :cond_2e2

    .line 3027
    const-string v3, "Has early constraint"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3029
    :cond_2e2
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v3

    if-eqz v3, :cond_2ef

    .line 3030
    const-string v3, "Has late constraint"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3033
    :cond_2ef
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_305

    .line 3034
    const-string v3, "Trace tag: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3035
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    :cond_305
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getDebugTags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_31f

    .line 3038
    const-string v3, "Debug tags: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3039
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getDebugTags()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3042
    :cond_31f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3045
    :cond_322
    const-string v3, "Required constraints:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3046
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-static {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 3047
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3048
    const-string v3, "Dynamic constraints:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3049
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-static {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 3050
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    if-eqz p2, :cond_3d4

    .line 3052
    const-string v3, "Satisfied constraints:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3053
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-static {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 3054
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3055
    const-string v3, "Unsatisfied constraints:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3056
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v4, v4

    and-int/2addr v3, v4

    invoke-static {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 3059
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3060
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v3

    if-eqz v3, :cond_383

    .line 3061
    const-string v3, "Num Required Flexible constraints: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3062
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3063
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3064
    const-string v3, "Num Dropped Flexible constraints: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3065
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getNumDroppedFlexibleConstraints()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3066
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3069
    :cond_383
    const-string v3, "Constraint history:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v3, v1

    :goto_38c
    const/16 v4, 0xa

    if-ge v3, v4, :cond_3b2

    .line 3072
    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    add-int/2addr v5, v3

    rem-int/2addr v5, v4

    .line 3073
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    aget-wide v10, v4, v5

    cmp-long v4, v10, v8

    if-nez v4, :cond_39d

    goto :goto_3af

    .line 3076
    :cond_39d
    invoke-static {v10, v11, v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3078
    const-string v4, " ="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3079
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    aget v4, v4, v5

    invoke-static {p1, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 3080
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_3af
    add-int/lit8 v3, v3, 0x1

    goto :goto_38c

    .line 3082
    :cond_3b2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3084
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    if-eqz v3, :cond_3be

    .line 3085
    const-string v3, "Doze whitelisted: true"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3087
    :cond_3be
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eqz v3, :cond_3c7

    .line 3088
    const-string v3, "Uid: active"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3090
    :cond_3c7
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v3

    if-eqz v3, :cond_3d4

    .line 3091
    const-string v3, "Is exempted from app standby"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3094
    :cond_3d4
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    if-eqz v3, :cond_42b

    .line 3095
    const-string v3, "Tracking:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3096
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_3e7

    const-string v3, " BATTERY"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3097
    :cond_3e7
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3f2

    const-string v3, " CONNECTIVITY"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3098
    :cond_3f2
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3fd

    const-string v3, " CONTENT"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3099
    :cond_3fd
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_408

    const-string v3, " IDLE"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3100
    :cond_408
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_413

    const-string v3, " STORAGE"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3101
    :cond_413
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_41d

    const-string v3, " TIME"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3102
    :cond_41d
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_428

    const-string v3, " QUOTA"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3103
    :cond_428
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3106
    :cond_42b
    const-string v3, "Implicit constraints:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3107
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3108
    const-string/jumbo v3, "readyNotDozing: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3109
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3110
    const-string/jumbo v3, "readyNotRestrictedInBg: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3111
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3112
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v3

    if-nez v3, :cond_462

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v3

    if-eqz v3, :cond_462

    .line 3113
    const-string/jumbo v3, "readyDeadlineSatisfied: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3114
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3116
    :cond_462
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v3, :cond_471

    .line 3117
    const-string/jumbo v3, "readyDynamicSatisfied: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3118
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3120
    :cond_471
    const-string/jumbo v3, "readyComponentEnabled: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3121
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    if-eqz v3, :cond_47c

    goto :goto_47d

    :cond_47c
    move v2, v1

    :goto_47d
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3122
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    const-string v3, ")"

    if-eqz v2, :cond_4a1

    .line 3123
    const-string v2, "expeditedQuotaApproved: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3124
    iget-boolean v2, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3125
    const-string v2, " (started as EJ: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3126
    iget-boolean v2, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3127
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3129
    :cond_4a1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_4c2

    .line 3130
    const-string/jumbo v0, "userInitiatedApproved: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3131
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3132
    const-string v0, " (started as UIJ: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3133
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3134
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3136
    :cond_4c2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3138
    const-string v0, "Started with foreground flag: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3139
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedWithForegroundFlag:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3140
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    if-eqz v0, :cond_4d8

    .line 3141
    const-string v0, "User BG restricted"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3144
    :cond_4d8
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_4fe

    .line 3145
    const-string v0, "Changed authorities:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3146
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v0, v1

    .line 3147
    :goto_4e5
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_4fb

    .line 3148
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e5

    .line 3150
    :cond_4fb
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3152
    :cond_4fe
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_522

    .line 3153
    const-string v0, "Changed URIs:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3154
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v0, v1

    .line 3155
    :goto_50b
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_51f

    .line 3156
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_50b

    .line 3158
    :cond_51f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3160
    :cond_522
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz v0, :cond_530

    .line 3161
    const-string v0, "Network: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3163
    :cond_530
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_556

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_556

    .line 3164
    const-string v0, "Pending work:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    .line 3165
    :goto_540
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_556

    .line 3166
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_540

    .line 3169
    :cond_556
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_57b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_57b

    .line 3170
    const-string v0, "Executing work:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3171
    :goto_565
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_57b

    .line 3172
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_565

    .line 3175
    :cond_57b
    const-string v0, "Standby bucket: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3176
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3177
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3178
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_59d

    .line 3179
    const-string v0, "Deferred since: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3180
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    invoke-static {v0, v1, v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3181
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3183
    :cond_59d
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_5b0

    .line 3184
    const-string v0, "Time since first force batch attempt: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3185
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    invoke-static {v0, v1, v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3186
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3188
    :cond_5b0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3190
    const-string v0, "Enqueue time: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3191
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v0, v1, v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3192
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3193
    const-string v0, "Run time: earliest="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3194
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 3195
    const-string v2, ", latest="

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3196
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 3197
    const-string v2, ", original latest="

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3198
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 3199
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3200
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_5fe

    .line 3201
    const-string v2, "Cumulative execution time="

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3202
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3203
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3205
    :cond_5fe
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v2, :cond_60c

    .line 3206
    const-string v2, "Num failures: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3208
    :cond_60c
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    if-eqz v2, :cond_61a

    .line 3209
    const-string v2, "Num system stops: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3211
    :cond_61a
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_62e

    .line 3212
    const-string v2, "Last successful run: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3213
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/JobStatus;->formatTime(J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3215
    :cond_62e
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_642

    .line 3216
    const-string v2, "Last failed run: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3217
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/JobStatus;->formatTime(J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_642
    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JZJ)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3226
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 3228
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3229
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object v4

    const-wide v7, 0x10900000002L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v9, 0x10500000003L

    .line 3230
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10500000004L

    .line 3231
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10900000005L

    .line 3232
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v9, 0x1080000000aL

    const-wide v11, 0x10800000002L

    const/4 v4, 0x0

    const-wide/16 p2, 0x0

    if-eqz p4, :cond_24c

    const-wide v13, 0x10b00000006L

    .line 3235
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 3237
    iget-object v15, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v15

    const-wide v7, 0x10b00000001L

    invoke-virtual {v15, v1, v7, v8}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3239
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v7

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3240
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v7

    const-wide v11, 0x10300000003L

    invoke-virtual {v1, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3241
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v7

    const-wide v11, 0x10300000004L

    invoke-virtual {v1, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3243
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v7

    const-wide v11, 0x10800000005L

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3244
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getBias()I

    move-result v7

    const-wide v11, 0x11100000006L

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3245
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v7

    const-wide v11, 0x10500000007L

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10300000018L

    .line 3246
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v11

    invoke-virtual {v1, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3249
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v7

    const-wide v11, 0x10800000008L

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3250
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v7

    const-wide v11, 0x10800000009L

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3251
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v7

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3253
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v7

    if-eqz v7, :cond_165

    move v7, v4

    .line 3254
    :goto_f1
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_135

    const-wide v11, 0x20b0000000bL

    .line 3255
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 3256
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v8

    aget-object v8, v8, v7

    .line 3258
    invoke-virtual {v8}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v15

    invoke-virtual {v1, v5, v6, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3259
    invoke-virtual {v8}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_125

    .line 3261
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide v5, 0x10900000002L

    invoke-virtual {v1, v5, v6, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_12a

    :cond_125
    const-wide v5, 0x10900000002L

    .line 3264
    :goto_12a
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v7, 0x1

    const-wide v5, 0x10500000001L

    goto :goto_f1

    .line 3266
    :cond_135
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v5

    cmp-long v5, v5, p2

    if-ltz v5, :cond_14d

    .line 3267
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 3268
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v5

    const-wide v7, 0x1030000000cL

    .line 3267
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3270
    :cond_14d
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v5

    cmp-long v5, v5, p2

    if-ltz v5, :cond_165

    .line 3271
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 3272
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v5

    const-wide v7, 0x1030000000dL

    .line 3271
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3275
    :cond_165
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    if-eqz v5, :cond_187

    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v5

    if-nez v5, :cond_187

    .line 3276
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    const-wide v6, 0x10b0000000eL

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/PersistableBundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3278
    :cond_187
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1a9

    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v5

    if-nez v5, :cond_1a9

    .line 3279
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    const-wide v6, 0x10b0000000fL

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Bundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3281
    :cond_1a9
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    if-eqz v5, :cond_1bf

    .line 3282
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    const-wide v6, 0x10b00000010L

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/ClipData;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3284
    :cond_1bf
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v5, :cond_1cb

    const-wide v6, 0x10b00000011L

    .line 3285
    invoke-virtual {v5, v1, v6, v7}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3287
    :cond_1cb
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v7, -0x1

    cmp-long v11, v5, v7

    if-eqz v11, :cond_1db

    const-wide v11, 0x10300000019L

    .line 3288
    invoke-virtual {v1, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3291
    :cond_1db
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1e9

    const-wide v7, 0x1030000001aL

    .line 3292
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3295
    :cond_1e9
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v5

    const-wide v7, 0x10300000014L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3296
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v5

    const-wide v7, 0x10300000015L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10b00000016L

    .line 3298
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 3299
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v7

    const-wide v11, 0x10e00000001L

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3300
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 3301
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v7

    const-wide v11, 0x10300000002L

    .line 3300
    invoke-virtual {v1, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3302
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3304
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v5

    const-wide v6, 0x10800000017L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3305
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v5

    const-wide v6, 0x10800000018L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3307
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_24c
    const-wide v5, 0x20e00000007L

    .line 3310
    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v5, 0x20e0000001fL

    .line 3311
    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    if-eqz p4, :cond_29a

    const-wide v5, 0x20e00000008L

    .line 3313
    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3314
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v6, 0x1000000

    or-int/2addr v5, v6

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v6, v6

    and-int/2addr v5, v6

    const-wide v6, 0x20e00000009L

    invoke-virtual {v0, v1, v6, v7, v5}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3316
    iget-boolean v5, v0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    invoke-virtual {v1, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x1080000001aL

    .line 3317
    iget-boolean v7, v0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3318
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 3319
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v5

    const-wide v6, 0x1080000001bL

    .line 3318
    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3323
    :cond_29a
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    const-wide v7, 0x20e0000000bL

    if-eqz v5, :cond_2a8

    .line 3324
    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3327
    :cond_2a8
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v9, 0x2

    and-int/2addr v5, v9

    if-eqz v5, :cond_2b1

    .line 3328
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3331
    :cond_2b1
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v6, 0x4

    and-int/2addr v5, v6

    if-eqz v5, :cond_2ba

    .line 3332
    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3335
    :cond_2ba
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2c4

    const/4 v5, 0x3

    .line 3336
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3339
    :cond_2c4
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_2cd

    .line 3340
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3343
    :cond_2cd
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_2d7

    const/4 v5, 0x5

    .line 3344
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3347
    :cond_2d7
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_2e1

    const/4 v5, 0x6

    .line 3348
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2e1
    const-wide v5, 0x10b00000019L    # 5.665728762E-312

    .line 3353
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10800000001L

    .line 3354
    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3355
    iget-boolean v7, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    const-wide v8, 0x10800000002L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10800000003L

    .line 3359
    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3361
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3363
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v5, :cond_32b

    move v5, v4

    .line 3364
    :goto_310
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_32b

    .line 3365
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide v7, 0x2090000000cL

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_310

    .line 3368
    :cond_32b
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v5, :cond_34f

    move v5, v4

    .line 3369
    :goto_330
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_34f

    .line 3370
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    const-wide v7, 0x2090000000dL

    .line 3371
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_330

    .line 3375
    :cond_34f
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v5, :cond_36f

    move v5, v4

    .line 3376
    :goto_354
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_36f

    .line 3377
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobWorkItem;

    const-wide v7, 0x20b0000000fL

    invoke-virtual {v0, v1, v7, v8, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_354

    .line 3380
    :cond_36f
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v5, :cond_38f

    move v5, v4

    .line 3381
    :goto_374
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_38f

    .line 3382
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobWorkItem;

    const-wide v7, 0x20b00000010L

    invoke-virtual {v0, v1, v7, v8, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_374

    :cond_38f
    const-wide v5, 0x10e00000011L

    .line 3386
    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3387
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long v5, p5, v5

    const-wide v7, 0x10300000012L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3389
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    cmp-long v7, v5, p2

    if-nez v7, :cond_3ae

    move-wide/from16 v5, p2

    goto :goto_3b0

    :cond_3ae
    sub-long v5, p5, v5

    :goto_3b0
    const-wide v7, 0x1030000001cL

    .line 3388
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3391
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long v7, v5, p2

    if-nez v7, :cond_3c1

    move-wide/from16 v5, p2

    goto :goto_3c3

    :cond_3c1
    sub-long v5, p5, v5

    :goto_3c3
    const-wide v7, 0x1030000001dL

    .line 3390
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3393
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long v7, v5, p2

    const-wide v8, 0x11200000013L

    if-nez v7, :cond_3da

    .line 3394
    invoke-virtual {v1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_3df

    :cond_3da
    sub-long v5, v5, p5

    .line 3396
    invoke-virtual {v1, v8, v9, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3399
    :goto_3df
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v5, v7

    const-wide v8, 0x11200000014L

    if-nez v7, :cond_3f3

    .line 3400
    invoke-virtual {v1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_3f8

    :cond_3f3
    sub-long v5, v5, p5

    .line 3402
    invoke-virtual {v1, v8, v9, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :goto_3f8
    const-wide v4, 0x1040000001eL

    .line 3405
    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3408
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    add-int/2addr v4, v5

    const-wide v5, 0x10500000015L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10300000016L

    .line 3409
    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000017L

    .line 3410
    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3412
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 5

    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    .line 2813
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_8
    and-int/lit8 p0, p4, 0x2

    if-eqz p0, :cond_10

    const/4 p0, 0x2

    .line 2816
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_10
    and-int/lit8 p0, p4, 0x8

    if-eqz p0, :cond_18

    const/4 p0, 0x3

    .line 2819
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_18
    const/high16 p0, -0x80000000

    and-int/2addr p0, p4

    if-eqz p0, :cond_21

    const/4 p0, 0x4

    .line 2822
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_21
    const/high16 p0, 0x40000000    # 2.0f

    and-int/2addr p0, p4

    if-eqz p0, :cond_2a

    const/4 p0, 0x5

    .line 2825
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2a
    and-int/lit8 p0, p4, 0x4

    if-eqz p0, :cond_32

    const/4 p0, 0x6

    .line 2828
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_32
    const/high16 p0, 0x10000000

    and-int/2addr p0, p4

    if-eqz p0, :cond_3b

    const/4 p0, 0x7

    .line 2831
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_3b
    const/high16 p0, 0x4000000

    and-int/2addr p0, p4

    if-eqz p0, :cond_45

    const/16 p0, 0x8

    .line 2834
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_45
    const/high16 p0, 0x2000000

    and-int/2addr p0, p4

    if-eqz p0, :cond_4f

    const/16 p0, 0x9

    .line 2837
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_4f
    const/high16 p0, 0x1000000

    and-int/2addr p0, p4

    if-eqz p0, :cond_59

    const/16 p0, 0xa

    .line 2840
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_59
    const/high16 p0, 0x400000

    and-int/2addr p0, p4

    if-eqz p0, :cond_63

    const/16 p0, 0xb

    .line 2843
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_63
    return-void
.end method

.method public final dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V
    .registers 4

    .line 2848
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2849
    const-string p0, "#"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p0, ": #"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2850
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p0, " "

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2851
    const-string/jumbo p0, "x "

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2852
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4a

    .line 2853
    const-string p0, "URI grants:"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2854
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2855
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {p0, p1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;)V

    .line 2856
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2858
    :cond_4a
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V
    .registers 7

    .line 2862
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 2864
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    .line 2865
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2866
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 2867
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-wide v0, 0x10b00000003L

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2869
    :cond_2e
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 2871
    check-cast p0, Lcom/android/server/job/GrantedUriPermissions;

    const-wide v0, 0x10b00000004L

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2874
    :cond_3e
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V
    .registers 7

    .line 961
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 962
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 964
    :cond_b
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    invoke-virtual {p1, v0}, Landroid/app/job/JobWorkItem;->setWorkId(I)V

    .line 965
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 966
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 967
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 968
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 969
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    .line 968
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/job/GrantedUriPermissions;->createFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/job/JobWorkItem;->setGrants(Ljava/lang/Object;)V

    .line 971
    :cond_3f
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    return-void
.end method

.method public final formatRunTime(Ljava/io/PrintWriter;JJJ)V
    .registers 8

    cmp-long p0, p2, p4

    if-nez p0, :cond_b

    .line 2670
    const-string/jumbo p0, "none"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_b
    sub-long/2addr p2, p6

    .line 2672
    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    return-void
.end method

.method public final formatRunTime(Ljava/lang/StringBuilder;JJJ)V
    .registers 8

    cmp-long p0, p2, p4

    if-nez p0, :cond_b

    .line 2678
    const-string/jumbo p0, "none"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_b
    sub-long/2addr p2, p6

    .line 2680
    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    return-void
.end method

.method public final generateLoggingId(Ljava/lang/String;I)J
    .registers 5

    if-nez p1, :cond_4

    int-to-long p0, p2

    return-wide p0

    .line 907
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    const/16 v0, 0x1f

    shl-long/2addr p0, v0

    int-to-long v0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public getAppTraceTag()Ljava/lang/String;
    .registers 1

    .line 1120
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryName()Ljava/lang/String;
    .registers 1

    .line 1457
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    return-object p0
.end method

.method public getBias()I
    .registers 1

    .line 1516
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getBias()I

    move-result p0

    return p0
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 2881
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-static {p0}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBucketWithBackupExemption(I)I
    .registers 4

    .line 1337
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucketReason()I

    move-result v0

    .line 1336
    invoke-static {v0}, Landroid/app/usage/UsageStatsManager;->getMainReason(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_c

    return p1

    :cond_c
    const/4 v1, 0x5

    if-ne p1, v1, :cond_14

    const/16 v1, 0x200

    if-eq v0, v1, :cond_14

    return p1

    .line 1349
    :cond_14
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    .line 1353
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1e
    return p1
.end method

.method public getCallingPackageName()Ljava/lang/String;
    .registers 1

    .line 1216
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCumulativeExecutionTimeMs()J
    .registers 3

    .line 1747
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    return-wide v0
.end method

.method public getEarliestRunTime()J
    .registers 3

    .line 1755
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getEffectivePriority()I
    .registers 5

    .line 1526
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/16 v2, 0x190

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1527
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1528
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1b

    goto :goto_1e

    :cond_1b
    const/16 v0, 0x1f4

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v0, v2

    .line 1536
    :goto_1f
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1537
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-ge v3, v1, :cond_2e

    goto :goto_34

    .line 1540
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v3

    if-eqz v3, :cond_35

    :goto_34
    return v0

    .line 1545
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v3

    if-eqz v3, :cond_3c

    return v2

    .line 1550
    :cond_3c
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    div-int/2addr p0, v1

    const/4 v2, 0x1

    if-eq p0, v2, :cond_4e

    if-eq p0, v1, :cond_47

    const/16 p0, 0x64

    return p0

    :cond_47
    const/16 p0, 0xc8

    .line 1553
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_4e
    const/16 p0, 0x12c

    .line 1552
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getEffectiveStandbyBucket()I
    .registers 6

    .line 1289
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    if-nez v0, :cond_e

    .line 1290
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 1292
    :cond_e
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 1293
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1294
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v4

    .line 1292
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/job/JobSchedulerInternal;->isAppConsideredBuggy(ILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 1296
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7e

    if-eqz v0, :cond_7d

    .line 1302
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1303
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    goto :goto_62

    .line 1305
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1307
    :goto_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exempted app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " considered buggy"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JobScheduler.JobStatus"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return v1

    .line 1311
    :cond_7e
    iget-boolean v2, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v2, :cond_a7

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v2

    if-eqz v2, :cond_8d

    goto :goto_a7

    .line 1317
    :cond_8d
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/JobStatus;->getBucketWithBackupExemption(I)I

    move-result v1

    if-eqz v0, :cond_a6

    const/4 v0, 0x1

    if-ge v1, v0, :cond_a6

    .line 1323
    iget-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mIsDowngradedDueToBuggyApp:Z

    if-nez v1, :cond_a5

    .line 1325
    const-string v1, "job_scheduler.value_job_quota_reduced_due_to_buggy_uid"

    .line 1327
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUid()I

    move-result v2

    .line 1325
    invoke-static {v1, v2}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1328
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsDowngradedDueToBuggyApp:Z

    :cond_a5
    return v0

    :cond_a6
    return v1

    :cond_a7
    :goto_a7
    const/4 p0, 0x0

    return p0
.end method

.method public getEstimatedNetworkDownloadBytes()J
    .registers 3

    .line 1642
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    return-wide v0
.end method

.method public getEstimatedNetworkUploadBytes()J
    .registers 3

    .line 1646
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    return-wide v0
.end method

.method public getFilteredDebugTags()[Ljava/lang/String;
    .registers 5

    .line 1474
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredDebugTags:[Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 1477
    :cond_5
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getDebugTagsArraySet()Landroid/util/ArraySet;

    move-result-object v0

    .line 1478
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredDebugTags:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 1479
    :goto_14
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredDebugTags:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_28

    .line 1480
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/job/controllers/JobStatus;->applyBasicPiiFilters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_28
    return-object v2
.end method

.method public getFilteredTraceTag()Ljava/lang/String;
    .registers 2

    .line 1490
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredTraceTag:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 1493
    :cond_5
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 1497
    :cond_f
    invoke-static {v0}, Lcom/android/server/job/controllers/JobStatus;->applyBasicPiiFilters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredTraceTag:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstForceBatchedTimeElapsed()J
    .registers 3

    .line 1411
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    return-wide v0
.end method

.method public getFlags()I
    .registers 1

    .line 1559
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getFlags()I

    move-result p0

    return p0
.end method

.method public getFractionRunTime()F
    .registers 13

    .line 1800
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1801
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-wide v7, 0x7fffffffffffffffL

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v6, :cond_1c

    iget-wide v10, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_1c

    return v9

    :cond_1c
    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_29

    .line 1805
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_28

    return v9

    :cond_28
    return v5

    .line 1806
    :cond_29
    iget-wide v10, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long p0, v10, v7

    if-nez p0, :cond_35

    cmp-long p0, v0, v2

    if-ltz p0, :cond_34

    return v9

    :cond_34
    return v5

    :cond_35
    cmp-long p0, v0, v2

    if-gtz p0, :cond_3a

    return v5

    :cond_3a
    cmp-long p0, v0, v10

    if-ltz p0, :cond_3f

    return v9

    :cond_3f
    sub-long/2addr v0, v2

    long-to-float p0, v0

    sub-long/2addr v10, v2

    long-to-float v0, v10

    div-float/2addr p0, v0

    return p0
.end method

.method public getInternalFlags()I
    .registers 1

    .line 1563
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    return p0
.end method

.method public getJob()Landroid/app/job/JobInfo;
    .registers 1

    .line 1105
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    return-object p0
.end method

.method public getJobId()I
    .registers 1

    .line 1109
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getId()I

    move-result p0

    return p0
.end method

.method public getLastFailedRunTime()J
    .registers 3

    .line 2419
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    return-wide v0
.end method

.method public getLastSuccessfulRunTime()J
    .registers 3

    .line 2415
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    return-wide v0
.end method

.method public getLatestRunTimeElapsed()J
    .registers 3

    .line 1759
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getLoggingJobId()J
    .registers 3

    .line 1114
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggingJobId:J

    return-wide v0
.end method

.method public getMinimumNetworkChunkBytes()J
    .registers 3

    .line 1650
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    return-wide v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 1

    .line 1434
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceHash()Ljava/lang/String;
    .registers 1

    .line 1439
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespaceHash:Ljava/lang/String;

    return-object p0
.end method

.method public getNumAbandonedFailures()I
    .registers 1

    .line 1194
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumAbandonedFailures:I

    return p0
.end method

.method public getNumAppliedFlexibleConstraints()I
    .registers 1

    .line 1702
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    return p0
.end method

.method public getNumDroppedFlexibleConstraints()I
    .registers 1

    .line 1715
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    return p0
.end method

.method public getNumFailures()I
    .registers 1

    .line 1187
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    return p0
.end method

.method public getNumPreviousAttempts()I
    .registers 2

    .line 1207
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getNumRequiredFlexibleConstraints()I
    .registers 2

    .line 1707
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getNumSystemStops()I
    .registers 1

    .line 1202
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    return p0
.end method

.method public getOriginalLatestRunTimeElapsed()J
    .registers 3

    .line 1763
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getPendingJobReasons(Lcom/android/server/job/restrictions/JobRestriction;)[I
    .registers 5

    .line 2253
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v0, v0

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    or-int/2addr v1, v2

    const/high16 v2, 0x3600000

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 2255
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->constraintsToPendingJobReasons(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_27

    .line 2260
    invoke-virtual {p1}, Lcom/android/server/job/restrictions/JobRestriction;->getPendingReason()I

    move-result p1

    .line 2261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 2262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    .line 2266
    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5a

    .line 2267
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_46

    .line 2268
    const-string p0, "JobScheduler.JobStatus"

    const-string p1, "App in NEVER bucket querying pending job reason"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xf

    .line 2270
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 2271
    :cond_46
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    if-eqz p0, :cond_53

    const/4 p0, 0x1

    .line 2272
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 2274
    :cond_53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2278
    :cond_5a
    :goto_5a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p1, p0, [I

    :goto_60
    if-ge v1, p0, :cond_71

    .line 2280
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    :cond_71
    return-object p1
.end method

.method public getPendingJobReasonsHistory()Ljava/util/List;
    .registers 5

    .line 2321
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2323
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 2325
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    add-int/lit8 v2, v1, -0xa

    const/4 v3, 0x0

    .line 2327
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2326
    invoke-interface {p0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 2325
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1f
    return-object v0
.end method

.method public getPersistedUtcTimes()Landroid/util/Pair;
    .registers 1

    .line 1821
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    return-object p0
.end method

.method public getSatisfiedConstraintFlags()I
    .registers 1

    .line 1575
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    return p0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .registers 1

    .line 1211
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getSourcePackageName()Ljava/lang/String;
    .registers 1

    .line 1221
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceTag()Ljava/lang/String;
    .registers 1

    .line 1449
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceUid()I
    .registers 1

    .line 1225
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    return p0
.end method

.method public getSourceUserId()I
    .registers 1

    .line 1229
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    return p0
.end method

.method public getStandbyBucket()I
    .registers 1

    .line 1362
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    return p0
.end method

.method public getStandbyBucketReason()I
    .registers 1

    .line 1368
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mStandbyBucketReason:I

    return p0
.end method

.method public getStopReason()I
    .registers 1

    .line 1785
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    return p0
.end method

.method public getTimeoutBlamePackageName()Ljava/lang/String;
    .registers 2

    .line 1258
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldBlameSourceForTimeout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1259
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    return-object p0

    .line 1261
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeoutBlameUid()I
    .registers 2

    .line 1268
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldBlameSourceForTimeout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1269
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    return p0

    .line 1271
    :cond_9
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return p0
.end method

.method public getTimeoutBlameUserId()I
    .registers 2

    .line 1278
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldBlameSourceForTimeout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1279
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    return p0

    .line 1281
    :cond_9
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public getTriggerContentMaxDelay()J
    .registers 5

    .line 1735
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_10

    const-wide/32 v0, 0x1d4c0

    return-wide v0

    :cond_10
    const-wide/16 v2, 0x3e8

    .line 1739
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTriggerContentUpdateDelay()J
    .registers 5

    .line 1727
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_f

    const-wide/16 v0, 0x2710

    return-wide v0

    :cond_f
    const-wide/16 v2, 0x1f4

    .line 1731
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUid()I
    .registers 1

    .line 1453
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return p0
.end method

.method public getUserId()I
    .registers 1

    .line 1233
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public getUserVisibleJobSummary()Landroid/app/job/UserVisibleJobSummary;
    .registers 9

    .line 1860
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

    if-nez v0, :cond_25

    .line 1861
    new-instance v1, Landroid/app/job/UserVisibleJobSummary;

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 1862
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1863
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    .line 1864
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Landroid/app/job/UserVisibleJobSummary;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

    .line 1866
    :cond_25
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

    return-object p0
.end method

.method public getWakelockTag()Ljava/lang/String;
    .registers 3

    .line 1504
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    if-nez v0, :cond_4f

    .line 1505
    const-string v0, "*job*"

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1508
    const-string v1, "e"

    goto :goto_2c

    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v1

    if-eqz v1, :cond_29

    const-string/jumbo v1, "u"

    goto :goto_2c

    :cond_29
    const-string/jumbo v1, "r"

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    .line 1512
    :cond_4f
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    return-object p0
.end method

.method public getWhenStandbyDeferred()J
    .registers 3

    .line 1398
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    return-wide v0
.end method

.method public getWorkCount()I
    .registers 3

    .line 992
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 993
    :goto_b
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-nez p0, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_14
    add-int/2addr v0, v1

    return v0
.end method

.method public hasBatteryNotLowConstraint()Z
    .registers 2

    const/4 v0, 0x2

    .line 1665
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasChargingConstraint()Z
    .registers 2

    const/4 v0, 0x1

    .line 1661
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasConnectivityConstraint()Z
    .registers 2

    .line 1657
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final hasConstraint(I)Z
    .registers 3

    .line 1723
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr v0, p1

    if-nez v0, :cond_d

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public hasContentTriggerConstraint()Z
    .registers 2

    .line 1692
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v0, 0x4000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasDeadlineConstraint()Z
    .registers 2

    const/high16 v0, 0x40000000    # 2.0f

    .line 1682
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasExecutingWorkLocked()Z
    .registers 1

    .line 1002
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public hasFlexibilityConstraint()Z
    .registers 2

    .line 1697
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasIdleConstraint()Z
    .registers 2

    const/4 v0, 0x4

    .line 1686
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public final hasMediaBackupExemption()Z
    .registers 5

    .line 2562
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    if-nez v0, :cond_e

    .line 2563
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 2567
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mHasExemptedMediaUrisOnly:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2568
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2569
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 2570
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_3c

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 2572
    invoke-interface {v2, v3}, Lcom/android/server/job/JobSchedulerInternal;->getCloudMediaProviderPackage(I)Ljava/lang/String;

    move-result-object v2

    .line 2571
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    return v1

    .line 2578
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v2, 0x190

    if-ne v0, v2, :cond_55

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 2580
    invoke-interface {v2, p0}, Lcom/android/server/job/JobSchedulerInternal;->getCloudMediaProviderPackage(I)Ljava/lang/String;

    move-result-object p0

    .line 2579
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_55

    return v1

    :cond_55
    const/4 p0, 0x0

    return p0
.end method

.method public hasPowerConstraint()Z
    .registers 2

    const/4 v0, 0x3

    .line 1670
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasStorageNotLowConstraint()Z
    .registers 2

    const/16 v0, 0x8

    .line 1674
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasTimingDelayConstraint()Z
    .registers 2

    const/high16 v0, -0x80000000

    .line 1678
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public incrementCumulativeExecutionTime(J)V
    .registers 5

    .line 1751
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    return-void
.end method

.method public isAbandoned()Z
    .registers 1

    .line 1125
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsAbandoned:Z

    return p0
.end method

.method public isConstraintSatisfied(I)Z
    .registers 2

    .line 2336
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isConstraintsSatisfied()Z
    .registers 2

    .line 2543
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result p0

    return p0
.end method

.method public final isConstraintsSatisfied(I)Z
    .registers 5

    .line 2547
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    return v2

    :cond_7
    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 2555
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const v1, -0x7f5ffff1

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 2558
    :cond_11
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_17

    return v2

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public isExpeditedQuotaApproved()Z
    .registers 1

    .line 2340
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    return p0
.end method

.method public isPersisted()Z
    .registers 1

    .line 1743
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result p0

    return p0
.end method

.method public isPreparedLocked()Z
    .registers 1

    .line 1101
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    return p0
.end method

.method public isProxyJob()Z
    .registers 1

    .line 1167
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    return p0
.end method

.method public isReady()Z
    .registers 2

    .line 2426
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result p0

    return p0
.end method

.method public final isReady(I)Z
    .registers 5

    .line 2508
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    if-nez v0, :cond_f

    .line 2509
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2510
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_17

    :cond_16
    return v1

    .line 2518
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    if-nez v0, :cond_2d

    .line 2519
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result p0

    if-eqz p0, :cond_2f

    :cond_2d
    const/4 p0, 0x1

    return p0

    :cond_2f
    return v1
.end method

.method public isRequestedExpeditedJob()Z
    .registers 1

    .line 1830
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isUserBgRestricted()Z
    .registers 1

    .line 1899
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    return p0
.end method

.method public isUserVisibleJob()Z
    .registers 2

    .line 1873
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public matches(ILjava/lang/String;I)Z
    .registers 5

    .line 2587
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, p3, :cond_16

    iget p3, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    if-ne p3, p1, :cond_16

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 2588
    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public maybeAddForegroundExemption(Ljava/util/function/Predicate;)V
    .registers 4

    .line 1580
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_29

    .line 1584
    :cond_11
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    goto :goto_29

    .line 1587
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1588
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/JobStatus;->addInternalFlags(I)V

    :cond_29
    :goto_29
    return-void
.end method

.method public maybeLogBucketMismatch()V
    .registers 3

    .line 1389
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    if-nez v0, :cond_26

    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " became active but still in NEVER bucket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1390
    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1392
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    :cond_26
    return-void
.end method

.method public final populatePendingJobReasonsHistoryMap(ZJI)V
    .registers 9

    .line 2288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    add-long/2addr v0, p2

    const/4 p2, 0x0

    if-eqz p1, :cond_21

    .line 2293
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    new-instance p3, Landroid/app/job/PendingJobReasonsInfo;

    .line 2296
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    if-eqz p0, :cond_16

    const/4 p2, 0x1

    .line 2298
    :cond_16
    filled-new-array {p2}, [I

    move-result-object p0

    invoke-direct {p3, v0, v1, p0}, Landroid/app/job/PendingJobReasonsInfo;-><init>(J[I)V

    .line 2293
    invoke-interface {p1, p3}, Ljava/util/List;->addLast(Ljava/lang/Object;)V

    return-void

    .line 2302
    :cond_21
    invoke-virtual {p0, p4}, Lcom/android/server/job/controllers/JobStatus;->constraintsToPendingJobReasons(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 2303
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_32

    .line 2305
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2308
    :cond_32
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p4, p3, [I

    :goto_38
    if-ge p2, p3, :cond_49

    .line 2310
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_38

    .line 2312
    :cond_49
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    new-instance p1, Landroid/app/job/PendingJobReasonsInfo;

    invoke-direct {p1, v0, v1, p4}, Landroid/app/job/PendingJobReasonsInfo;-><init>(J[I)V

    invoke-interface {p0, p1}, Ljava/util/List;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public prepareLocked()V
    .registers 8

    .line 1067
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-eqz v0, :cond_1b

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JobScheduler.JobStatus"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    const/4 v0, 0x1

    .line 1071
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    const/4 v0, 0x0

    .line 1073
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 1075
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 1077
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1078
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 1077
    invoke-static/range {v1 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->createFromClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    :cond_3f
    return-void
.end method

.method public printUniqueId(Ljava/io/PrintWriter;)V
    .registers 3

    .line 1171
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 1172
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1173
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_12

    .line 1175
    :cond_d
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1177
    :goto_12
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1178
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1179
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method

.method public readinessStatusWithConstraint(IZ)Z
    .registers 11

    .line 2440
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x2000000

    const/high16 v4, 0x1000000

    const/4 v5, 0x0

    const/high16 v6, 0x400000

    if-eq p1, v6, :cond_3b

    if-eq p1, v4, :cond_36

    if-eq p1, v3, :cond_31

    if-eq p1, v2, :cond_2c

    if-eqz p2, :cond_1a

    or-int p2, v0, p1

    :goto_18
    move v0, p2

    goto :goto_1d

    :cond_1a
    not-int p2, p1

    and-int/2addr p2, v0

    goto :goto_18

    .line 2464
    :goto_1d
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p2, :cond_27

    and-int v7, v0, p2

    if-ne p2, v7, :cond_27

    move p2, v1

    goto :goto_28

    :cond_27
    move p2, v5

    :goto_28
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    move v7, v5

    goto :goto_3f

    .line 2447
    :cond_2c
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 2448
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    goto :goto_3f

    .line 2451
    :cond_31
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 2452
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    goto :goto_3f

    .line 2455
    :cond_36
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 2456
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    goto :goto_3f

    .line 2443
    :cond_3b
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 2444
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    :goto_3f
    const/high16 p2, 0x200000

    if-eq p1, p2, :cond_44

    or-int/2addr v0, p2

    .line 2479
    :cond_44
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result p2

    if-eq p1, v6, :cond_67

    if-eq p1, v4, :cond_64

    if-eq p1, v3, :cond_61

    if-eq p1, v2, :cond_5e

    .line 2495
    iget p1, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p1, :cond_5a

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_5a

    goto :goto_5b

    :cond_5a
    move v1, v5

    :goto_5b
    iput-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return p2

    .line 2486
    :cond_5e
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    return p2

    .line 2489
    :cond_61
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    return p2

    .line 2492
    :cond_64
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    return p2

    .line 2483
    :cond_67
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    return p2
.end method

.method public final removeDynamicConstraints(I)V
    .registers 3

    .line 2409
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p1, :cond_f

    .line 2410
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return-void
.end method

.method public removeInternalFlags(I)V
    .registers 3

    .line 1571
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    return-void
.end method

.method public setAbandoned(Z)V
    .registers 2

    .line 1130
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mIsAbandoned:Z

    return-void
.end method

.method public setBackgroundNotRestrictedConstraintSatisfied(JZZ)Z
    .registers 5

    .line 1967
    iput-boolean p4, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    const/high16 p4, 0x400000

    .line 1968
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1970
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public setBatteryNotLowConstraintSatisfied(JZ)Z
    .registers 5

    const/4 v0, 0x2

    .line 1909
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setChargingConstraintSatisfied(JZ)Z
    .registers 5

    const/4 v0, 0x1

    .line 1904
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setConnectivityConstraintSatisfied(JZ)Z
    .registers 5

    const/high16 v0, 0x10000000

    .line 1944
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setConstraintSatisfied(IJZ)Z
    .registers 11

    .line 2032
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    if-ne v0, p4, :cond_d

    return v2

    .line 2036
    :cond_d
    sget-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v0, :cond_47

    .line 2037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constraint "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    invoke-static {p1}, Lcom/android/server/job/controllers/JobStatus;->constraintsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_2c

    .line 2039
    const-string v3, "NOT "

    goto :goto_2e

    :cond_2c
    const-string v3, ""

    :goto_2e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "satisfied for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2037
    const-string v3, "JobScheduler.JobStatus"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-nez p4, :cond_51

    .line 2041
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_51

    move v0, v1

    goto :goto_52

    :cond_51
    move v0, v2

    .line 2042
    :goto_52
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v4, p1

    and-int/2addr v3, v4

    if-eqz p4, :cond_5a

    move v4, p1

    goto :goto_5b

    :cond_5a
    move v4, v2

    :goto_5b
    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const v4, -0x6b5ffff1

    and-int/2addr v4, v3

    .line 2043
    iput v4, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 2044
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v4, :cond_6e

    and-int v5, v3, v4

    if-ne v4, v5, :cond_6e

    move v4, v1

    goto :goto_6f

    :cond_6e
    move v4, v2

    :goto_6f
    iput-boolean v4, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 2059
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    aput-wide p2, v4, v5

    .line 2060
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    aput v3, v4, v5

    add-int/2addr v5, v1

    .line 2061
    rem-int/lit8 v5, v5, 0xa

    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    .line 2065
    invoke-virtual {p0, p1, p4}, Lcom/android/server/job/controllers/JobStatus;->readinessStatusWithConstraint(IZ)Z

    move-result p4

    if-eqz v0, :cond_8f

    if-nez p4, :cond_8f

    .line 2067
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->constraintToStopReason(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    goto :goto_95

    :cond_8f
    if-nez v0, :cond_95

    if-eqz p4, :cond_95

    .line 2069
    iput v2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 2072
    :cond_95
    :goto_95
    iget p1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int p1, p1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    or-int/2addr v0, v3

    const/high16 v3, 0x3600000

    or-int/2addr v0, v3

    and-int/2addr p1, v0

    .line 2074
    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/android/server/job/controllers/JobStatus;->populatePendingJobReasonsHistoryMap(ZJI)V

    .line 2075
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x19

    if-lt p1, p2, :cond_b9

    .line 2078
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    add-int/lit8 p1, p1, -0xa

    invoke-interface {p0, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 2079
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_b9
    return v1
.end method

.method public setContentTriggerConstraintSatisfied(JZ)Z
    .registers 5

    const/high16 v0, 0x4000000

    .line 1949
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setDeadlineConstraintSatisfied(JZ)Z
    .registers 5

    const/high16 v0, 0x40000000    # 2.0f

    .line 1929
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1e

    .line 1931
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result p1

    if-eqz p1, :cond_1b

    if-eqz p3, :cond_1b

    move p2, v0

    :cond_1b
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    return v0

    :cond_1e
    return p2
.end method

.method public setDeviceNotDozingConstraintSatisfied(JZZ)Z
    .registers 5

    .line 1955
    iput-boolean p4, p0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    const/high16 p4, 0x2000000

    .line 1956
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    if-nez p3, :cond_14

    .line 1958
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result p3

    if-eqz p3, :cond_15

    :cond_14
    move p2, p1

    :cond_15
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    return p1

    :cond_18
    return p2
.end method

.method public setExpeditedJobQuotaApproved(JZ)Z
    .registers 5

    .line 1998
    iget-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    const/4 p2, 0x0

    if-ne p1, p3, :cond_6

    return p2

    :cond_6
    const/4 p1, 0x1

    if-nez p3, :cond_11

    .line 2001
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, p1

    goto :goto_12

    :cond_11
    move v0, p2

    .line 2002
    :goto_12
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    .line 2003
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateExpeditedDependencies()V

    .line 2004
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result p3

    if-eqz v0, :cond_24

    if-nez p3, :cond_24

    const/16 p2, 0xa

    .line 2006
    iput p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    goto :goto_2a

    :cond_24
    if-nez v0, :cond_2a

    if-eqz p3, :cond_2a

    .line 2008
    iput p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    :cond_2a
    :goto_2a
    return p1
.end method

.method public setFirstForceBatchedTimeElapsed(J)V
    .registers 3

    .line 1415
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    return-void
.end method

.method public setFlexibilityConstraintSatisfied(JZ)Z
    .registers 5

    const/high16 v0, 0x200000

    .line 1988
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setIdleConstraintSatisfied(JZ)Z
    .registers 5

    const/4 v0, 0x4

    .line 1939
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setNumAppliedFlexibleConstraints(I)V
    .registers 2

    .line 2357
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    return-void
.end method

.method public setNumDroppedFlexibleConstraints(I)V
    .registers 3

    .line 2362
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 2363
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    .line 2362
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    return-void
.end method

.method public setOriginalLatestRunTimeElapsed(J)V
    .registers 3

    .line 1767
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    return-void
.end method

.method public setPrefetchConstraintSatisfied(JZ)Z
    .registers 5

    const/high16 v0, 0x800000

    .line 1919
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setQuotaConstraintSatisfied(JZ)Z
    .registers 5

    const/high16 v0, 0x1000000

    .line 1978
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1980
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public setStandbyBucket(II)V
    .registers 6

    const v0, 0x10000007

    const/4 v1, 0x5

    if-ne p1, v1, :cond_a

    .line 1374
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    goto :goto_11

    .line 1375
    :cond_a
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    if-ne v2, v1, :cond_11

    .line 1377
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->removeDynamicConstraints(I)V

    .line 1380
    :cond_11
    :goto_11
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 1381
    iput p2, p0, Lcom/android/server/job/controllers/JobStatus;->mStandbyBucketReason:I

    const/4 p1, 0x0

    .line 1382
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    return-void
.end method

.method public setStorageNotLowConstraintSatisfied(JZ)Z
    .registers 5

    const/16 v0, 0x8

    .line 1914
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setTimingDelayConstraintSatisfied(JZ)Z
    .registers 5

    const/high16 v0, -0x80000000

    .line 1924
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setTrackingController(I)V
    .registers 3

    .line 2352
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    return-void
.end method

.method public setTransportAffinitiesSatisfied(Z)V
    .registers 2

    .line 1775
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mTransportAffinitiesSatisfied:Z

    return-void
.end method

.method public setUidActive(Z)Z
    .registers 3

    .line 2023
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eq p1, v0, :cond_8

    .line 2024
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public setWhenStandbyDeferred(J)V
    .registers 3

    .line 1403
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    return-void
.end method

.method public final shouldBlameSourceForTimeout()Z
    .registers 1

    .line 1251
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p0

    return p0
.end method

.method public shouldTreatAsExpeditedJob()Z
    .registers 2

    .line 1838
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public shouldTreatAsUserInitiatedJob()Z
    .registers 2

    .line 1850
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1851
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1c

    .line 1852
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_37

    .line 1044
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 1045
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 1047
    :cond_11
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_1a

    .line 1048
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    goto :goto_2b

    .line 1049
    :cond_1a
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2b

    .line 1050
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1052
    :cond_2b
    :goto_2b
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 1053
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 1054
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    iput v0, p1, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 1055
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    goto :goto_45

    .line 1058
    :cond_37
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Ljava/util/ArrayList;)V

    .line 1059
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 1060
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Ljava/util/ArrayList;)V

    .line 1061
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 1063
    :goto_45
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 2689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2690
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2691
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 2692
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2694
    :cond_24
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2695
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2696
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2697
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 2698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2699
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2700
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toShortStringExceptUniqueId()Ljava/lang/String;
    .registers 3

    .line 2708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2709
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 2710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2711
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2712
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 2593
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2594
    const-string v0, "JobStatus{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2595
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2596
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    const-string v8, ":"

    if-eqz v0, :cond_2b

    .line 2597
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2599
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 2601
    :cond_2b
    const-string v0, " #"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2603
    :goto_30
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2604
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2605
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 2606
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2607
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2608
    const-string v0, " u="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2609
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2610
    const-string v0, " s="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2612
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_7b

    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-eqz v0, :cond_79

    goto :goto_7b

    :cond_79
    move-object v0, p0

    goto :goto_9b

    .line 2614
    :cond_7b
    :goto_7b
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 2615
    const-string v0, " TIME="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    .line 2617
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2618
    iget-wide v2, v0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    .line 2620
    :goto_9b
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object p0

    if-eqz p0, :cond_a8

    .line 2621
    const-string p0, " NET"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2623
    :cond_a8
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result p0

    if-eqz p0, :cond_b5

    .line 2624
    const-string p0, " CHARGING"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    :cond_b5
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result p0

    if-eqz p0, :cond_c2

    .line 2627
    const-string p0, " BATNOTLOW"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    :cond_c2
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    move-result p0

    if-eqz p0, :cond_cf

    .line 2630
    const-string p0, " STORENOTLOW"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2632
    :cond_cf
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result p0

    if-eqz p0, :cond_dc

    .line 2633
    const-string p0, " IDLE"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2635
    :cond_dc
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p0

    if-eqz p0, :cond_e9

    .line 2636
    const-string p0, " PERIODIC"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2638
    :cond_e9
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result p0

    if-eqz p0, :cond_f6

    .line 2639
    const-string p0, " PERSISTED"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2641
    :cond_f6
    iget p0, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v2, 0x2000000

    and-int/2addr p0, v2

    if-nez p0, :cond_102

    .line 2642
    const-string p0, " WAIT:DEV_NOT_DOZING"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2644
    :cond_102
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object p0

    if-eqz p0, :cond_11c

    .line 2645
    const-string p0, " URIS="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2646
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2648
    :cond_11c
    iget p0, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz p0, :cond_12a

    .line 2649
    const-string p0, " failures="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2650
    iget p0, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2652
    :cond_12a
    iget p0, v0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    if-eqz p0, :cond_138

    .line 2653
    const-string p0, " system stops="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2654
    iget p0, v0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2656
    :cond_138
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result p0

    if-eqz p0, :cond_144

    .line 2657
    const-string p0, " READY"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_167

    .line 2659
    :cond_144
    const-string p0, " satisfied:0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2660
    iget p0, v0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    const/high16 v2, 0x3600000

    or-int/2addr p0, v2

    .line 2661
    const-string v2, " unsatisfied:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p0

    xor-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2664
    :goto_167
    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2665
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unprepareLocked()V
    .registers 3

    .line 1083
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-nez v0, :cond_24

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hasn\'t been prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    if-eqz p0, :cond_38

    .line 1086
    const-string v0, "Was already unprepared at "

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_24
    const/4 v0, 0x0

    .line 1090
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 1092
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 1094
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v0, :cond_38

    .line 1095
    invoke-virtual {v0}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    const/4 v0, 0x0

    .line 1096
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    :cond_38
    return-void
.end method

.method public final updateExpeditedDependencies()V
    .registers 2

    const/high16 v0, 0x2000000

    .line 2018
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

    return-void
.end method

.method public updateMediaBackupExemptionStatus()Z
    .registers 3

    .line 1424
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasMediaBackupExemption()Z

    move-result v0

    .line 1425
    iget-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    if-ne v1, v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1428
    :cond_a
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final updateNetworkBytesLocked()V
    .registers 11

    .line 1593
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v4, -0x1

    if-gez v0, :cond_12

    .line 1596
    iput-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 1598
    :cond_12
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_20

    .line 1601
    iput-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 1605
    :cond_20
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    .line 1607
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_97

    const/4 v0, 0x0

    .line 1608
    :goto_2d
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_97

    .line 1609
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-eqz v1, :cond_55

    cmp-long v1, v6, v2

    if-lez v1, :cond_55

    .line 1614
    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    cmp-long v1, v8, v4

    if-eqz v1, :cond_53

    add-long/2addr v8, v6

    .line 1615
    iput-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    goto :goto_55

    .line 1617
    :cond_53
    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 1620
    :cond_55
    :goto_55
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-eqz v1, :cond_75

    cmp-long v1, v6, v2

    if-lez v1, :cond_75

    .line 1625
    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v1, v8, v4

    if-eqz v1, :cond_73

    add-long/2addr v8, v6

    .line 1626
    iput-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    goto :goto_75

    .line 1628
    :cond_73
    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 1631
    :cond_75
    :goto_75
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide v6

    .line 1632
    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    cmp-long v1, v8, v4

    if-nez v1, :cond_8a

    .line 1633
    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    goto :goto_94

    :cond_8a
    cmp-long v1, v6, v4

    if-eqz v1, :cond_94

    .line 1635
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    :cond_94
    :goto_94
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_97
    return-void
.end method

.method public wouldBeReadyWithConstraint(I)Z
    .registers 3

    const/4 v0, 0x1

    .line 2434
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/JobStatus;->readinessStatusWithConstraint(IZ)Z

    move-result p0

    return p0
.end method

.method public writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 2720
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 2722
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2723
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000003L

    .line 2724
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2726
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
