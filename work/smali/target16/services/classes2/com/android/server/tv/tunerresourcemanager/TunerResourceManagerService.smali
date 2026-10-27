.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
.super Lcom/android/server/SystemService;
.source "TunerResourceManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public mCasResources:Ljava/util/Map;

.field public mCiCamResources:Ljava/util/Map;

.field public mClientProfiles:Ljava/util/Map;

.field public mDemuxResources:Ljava/util/Map;

.field public mFrontendExistingNums:Landroid/util/SparseIntArray;

.field public mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

.field public mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

.field public mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

.field public mFrontendResources:Ljava/util/Map;

.field public mFrontendResourcesBackup:Ljava/util/Map;

.field public mFrontendUsedNums:Landroid/util/SparseIntArray;

.field public mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

.field public mListeners:Ljava/util/Map;

.field public mLnbResources:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public final mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mMediaResourceManager:Landroid/media/IResourceManagerService;

.field public mNextUnusedClientId:I

.field public mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

.field public mResourceRequestCount:I

.field public mTunerApiLockHolder:I

.field public mTunerApiLockHolderThreadId:J

.field public mTunerApiLockNestedCount:I

.field public final mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

.field public mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCasResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCiCamResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClientProfiles(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDemuxResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendExistingNums(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendExistingNumsBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendMaxUsableNums(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendMaxUsableNumsBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendResourcesBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendUsedNums(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendUsedNumsBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLnbResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPriorityCongfig(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$macquireLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJJ)Z
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->acquireLockInternal(IJJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->dumpMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->dumpSIA(Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceDescramblerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->enforceDescramblerAccessPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->enforceTrmAccessPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->enforceTunerAccessPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetMaxNumberOfFrontendsInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;I)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getMaxNumberOfFrontendsInternal(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreleaseLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJZZ)Z
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLockInternal(IJZZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveClientProfile(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeClientProfile(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMaxNumberOfFrontendsInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setMaxNumberOfFrontendsInternal(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mvalidateResourceHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJ)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->validateResourceHandle(IJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 74
    const-string v0, "TunerResourceManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    .line 96
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    .line 98
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    .line 100
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    .line 105
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    .line 106
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    .line 107
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    .line 124
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-direct {v0}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    .line 127
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const-wide/16 v0, -0x1

    .line 135
    iput-wide v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    .line 136
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    return-void
.end method


# virtual methods
.method public final acquireLockInternal(IJJ)Z
    .registers 27

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    .line 1747
    const-string v7, "TunerResourceManagerService"

    const-string v8, ", "

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1750
    const-string v0, "acquireLockInternal()"

    invoke-virtual {v1, v2, v5, v6, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->lockForTunerApiLock(IJLjava/lang/String;)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_1a

    return v11

    .line 1755
    :cond_1a
    :try_start_1a
    iget v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const/4 v12, -0x1

    if-ne v0, v12, :cond_21

    const/4 v14, 0x1

    goto :goto_22

    :cond_21
    move v14, v11

    :goto_22
    if-ne v2, v0, :cond_36

    move v15, v14

    const/4 v0, 0x1

    .line 1756
    iget-wide v13, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_28} :catch_31
    .catchall {:try_start_1a .. :try_end_28} :catchall_2e

    cmp-long v13, v3, v13

    if-nez v13, :cond_38

    move v13, v0

    goto :goto_39

    :catchall_2e
    move-exception v0

    goto/16 :goto_1e7

    :catch_31
    move-exception v0

    move/from16 v18, v11

    goto/16 :goto_1b1

    :cond_36
    move v15, v14

    const/4 v0, 0x1

    :cond_38
    move v13, v11

    :goto_39
    move v14, v15

    .line 1761
    :goto_3a
    const-string v15, "acquireLockInternal("

    if-nez v14, :cond_e2

    if-nez v13, :cond_e2

    .line 1763
    :try_start_40
    invoke-virtual {v1, v9, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getElapsedTime(J)J

    move-result-wide v16
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_44} :catch_31
    .catchall {:try_start_40 .. :try_end_44} :catchall_2e

    move/from16 v18, v11

    sub-long v11, v5, v16

    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    move/from16 v17, v0

    .line 1764
    const-string v0, "("

    if-gtz v16, :cond_8f

    .line 1765
    :try_start_52
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FAILED:acquireLockInternal("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ") - timed out, but will grant the lock to the callee by stealing it from the current holder:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "), who likely failed to call releaseLock(), to prevent this from becoming an unrecoverable error"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v17

    goto :goto_e8

    :catch_8c
    move-exception v0

    goto/16 :goto_1b1

    .line 1780
    :cond_8f
    iget-object v14, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    move-wide/from16 v19, v9

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v14, v11, v12, v9}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1785
    iget v9, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_a0

    move/from16 v14, v17

    goto :goto_a2

    :cond_a0
    move/from16 v14, v18

    :goto_a2
    if-nez v14, :cond_d9

    .line 1788
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ") - woken up from cond wait, but "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") is already holding the lock. Going to wait again if timeout hasn\'t reached yet"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d9
    move v12, v10

    move/from16 v0, v17

    move/from16 v11, v18

    move-wide/from16 v9, v19

    goto/16 :goto_3a

    :cond_e2
    move/from16 v17, v0

    move/from16 v18, v11

    move/from16 v0, v18

    :goto_e8
    if-nez v14, :cond_148

    if-eqz v0, :cond_ed

    goto :goto_148

    :cond_ed
    if-eqz v13, :cond_124

    .line 1813
    iget v9, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 1814
    sget-boolean v9, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v9, :cond_121

    .line 1815
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ") - nested count incremented to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_121
    :goto_121
    move/from16 v9, v17

    goto :goto_198

    .line 1820
    :cond_124
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ") - should not reach here"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_121

    .line 1797
    :cond_148
    :goto_148
    sget-boolean v9, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v9, :cond_171

    .line 1798
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SUCCESS:acquireLockInternal("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    :cond_171
    iget v9, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    if-eqz v9, :cond_190

    .line 1803
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Something is wrong as nestedCount("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") is not zero. Will overriding it to 1 anyways"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_190
    iput v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    .line 1809
    iput-wide v3, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    move/from16 v9, v17

    .line 1810
    iput v9, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I
    :try_end_198
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_198} :catch_8c
    .catchall {:try_start_52 .. :try_end_198} :catchall_2e

    :goto_198
    if-nez v14, :cond_1a2

    if-nez v13, :cond_1a2

    if-eqz v0, :cond_19f

    goto :goto_1a2

    :cond_19f
    move/from16 v11, v18

    goto :goto_1a3

    :cond_1a2
    :goto_1a2
    move v11, v9

    .line 1831
    :goto_1a3
    iget-object v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 1832
    iget-object v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1b0
    return v11

    .line 1827
    :goto_1b1
    :try_start_1b1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception thrown in acquireLockInternal("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d9
    .catchall {:try_start_1b1 .. :try_end_1d9} :catchall_2e

    .line 1831
    iget-object v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 1832
    iget-object v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1e6
    return v18

    .line 1831
    :goto_1e7
    iget-object v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 1832
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1834
    :cond_1f4
    throw v0
.end method

.method public final addCasResource(Lcom/android/server/tv/tunerresourcemanager/CasResource;)V
    .registers 3

    .line 2375
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addCiCamResource(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;)V
    .registers 3

    .line 2380
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getCiCamId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addClientProfile(ILcom/android/server/tv/tunerresourcemanager/ClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V
    .registers 6

    .line 2419
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    invoke-virtual {p0, p1, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addResourcesReclaimListener(ILandroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V

    return-void
.end method

.method public final addDemuxResource(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V
    .registers 4

    .line 2290
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addFrontendResource(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V
    .registers 7

    .line 2271
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 2272
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupId()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 2273
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandle(J)V

    .line 2274
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandles(Ljava/util/Collection;)V

    .line 2275
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2276
    invoke-virtual {p0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    .line 2277
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandle(J)V

    goto :goto_38

    .line 2279
    :cond_54
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandle(J)V

    .line 2284
    :cond_5b
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2285
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->increFrontendNum(Landroid/util/SparseIntArray;I)V

    return-void
.end method

.method public final addLnbResource(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .registers 4

    .line 2337
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addResourcesReclaimListener(ILandroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V
    .registers 5

    if-nez p2, :cond_22

    .line 1928
    sget-boolean p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz p0, :cond_21

    .line 1929
    const-string p0, "TunerResourceManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Listener is null when client "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " registered!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void

    .line 1934
    :cond_22
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;I)V

    .line 1938
    :try_start_27
    invoke-interface {p2}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2f} :catch_40

    .line 1944
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1945
    :try_start_32
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    monitor-exit p2

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit p2
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_3d

    throw p0

    .line 1940
    :catch_40
    const-string p0, "TunerResourceManagerService"

    const-string p1, "Listener already died."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public binderDied()V
    .registers 3

    .line 650
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 651
    const-string v0, "TunerResourceManagerService"

    const-string v1, "Native media resource manager service has died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_b
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 654
    :try_start_f
    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    .line 655
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw p0
.end method

.method public checkClientExists(I)Z
    .registers 2

    .line 2495
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public checkIsForeground(I)Z
    .registers 5

    .line 2018
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 2021
    :cond_6
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_d

    return v0

    .line 2025
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2026
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_11

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_29
    return v0
.end method

.method public claimCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z
    .registers 16

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 1297
    aput-wide v0, p2, v2

    .line 1299
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1300
    :try_start_8
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 1304
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v1

    const/4 v3, 0x4

    if-nez v1, :cond_38

    .line 1307
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p0, v3, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide v4

    .line 1309
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    iget v6, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    invoke-direct {v1, v4, v5, v6}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(JI)V

    const v4, 0x7fffffff

    .line 1310
    invoke-virtual {v1, v4}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    move-result-object v1

    .line 1311
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v1

    .line 1312
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCasResource(Lcom/android/server/tv/tunerresourcemanager/CasResource;)V

    goto :goto_38

    :catchall_35
    move-exception p0

    goto/16 :goto_d6

    .line 1314
    :cond_38
    :goto_38
    iget v4, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v4

    .line 1315
    invoke-virtual {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1320
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->isFullyUsed()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_57

    .line 1321
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p0, v3, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasClientMappingOnNewGrant(II)V

    .line 1322
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getHandle()J

    move-result-wide p0

    aput-wide p0, p2, v2

    .line 1323
    monitor-exit v0

    return v6

    .line 1325
    :cond_57
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, -0x1

    const/16 v8, 0x3e9

    move v10, v2

    move v9, v7

    :cond_64
    :goto_64
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1327
    invoke-virtual {p0, v11}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v12

    if-le v8, v12, :cond_64

    .line 1331
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v8

    .line 1332
    invoke-virtual {p0, v11}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v9

    if-ne v8, v9, :cond_8a

    move v10, v6

    goto :goto_8b

    :cond_8a
    move v10, v2

    :goto_8b
    move v9, v11

    move v8, v12

    goto :goto_64

    :cond_8e
    if-eq v9, v7, :cond_bb

    .line 1339
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v5

    if-gt v5, v8, :cond_a4

    .line 1340
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v5

    if-ne v5, v8, :cond_bb

    if-eqz v10, :cond_bb

    .line 1344
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->resourceOwnershipRetentionEnabled()Z

    move-result v4

    if-nez v4, :cond_bb

    .line 1345
    :cond_a4
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getHandle()J

    move-result-wide v4

    aput-wide v4, p2, v2

    .line 1346
    invoke-virtual {p0, v9, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result p2

    if-nez p2, :cond_b2

    .line 1349
    monitor-exit v0

    return v2

    .line 1351
    :cond_b2
    iget p2, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasClientMappingOnNewGrant(II)V

    .line 1352
    monitor-exit v0

    return v6

    .line 1354
    :cond_bb
    monitor-exit v0

    return v2

    .line 1301
    :cond_bd
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request cas from unregistered client:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1354
    :goto_d6
    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_8 .. :try_end_d7} :catchall_35

    throw p0
.end method

.method public claimCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J[I)Z
    .registers 15

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 1390
    aput-wide v0, p2, v2

    const/4 v0, -0x1

    .line 1391
    aput v0, p3, v2

    .line 1392
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1393
    :try_start_b
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 1397
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v3

    if-nez v3, :cond_3b

    .line 1400
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide v3

    .line 1402
    new-instance v5, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    iget v6, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    invoke-direct {v5, v3, v4, v6}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;-><init>(JI)V

    const v3, 0x7fffffff

    .line 1403
    invoke-virtual {v5, v3}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    move-result-object v3

    .line 1404
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v3

    .line 1405
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCiCamResource(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;)V

    goto :goto_3b

    :catchall_38
    move-exception p0

    goto/16 :goto_cb

    .line 1407
    :cond_3b
    :goto_3b
    iget v4, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v4

    .line 1408
    invoke-virtual {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1413
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->isFullyUsed()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_5a

    .line 1414
    iget p3, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCiCamClientMappingOnNewGrant(II)V

    .line 1415
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getHandle()J

    move-result-wide p0

    aput-wide p0, p2, v2

    .line 1416
    monitor-exit v1

    return v6

    .line 1418
    :cond_5a
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/16 v5, 0x3e9

    move v7, v0

    move v8, v2

    :cond_66
    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1420
    invoke-virtual {p0, v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v10

    if-le v5, v10, :cond_66

    .line 1424
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v5

    .line 1425
    invoke-virtual {p0, v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v7

    if-ne v5, v7, :cond_8c

    move v8, v6

    goto :goto_8d

    :cond_8c
    move v8, v2

    :goto_8d
    move v7, v9

    move v5, v10

    goto :goto_66

    :cond_90
    if-eq v7, v0, :cond_b0

    .line 1432
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p0

    if-gt p0, v5, :cond_a6

    .line 1433
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p0

    if-ne p0, v5, :cond_b0

    if-eqz v8, :cond_b0

    .line 1437
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->resourceOwnershipRetentionEnabled()Z

    move-result p0

    if-nez p0, :cond_b0

    .line 1438
    :cond_a6
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getHandle()J

    move-result-wide p0

    aput-wide p0, p2, v2

    .line 1439
    aput v7, p3, v2

    .line 1440
    monitor-exit v1

    return v6

    .line 1442
    :cond_b0
    monitor-exit v1

    return v2

    .line 1394
    :cond_b2
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Request ciCam from unregistered client:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1442
    :goto_cb
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_b .. :try_end_cc} :catchall_38

    throw p0
.end method

.method public claimDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J[I)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 1585
    aput-wide v2, p2, v4

    const/4 v2, -0x1

    .line 1586
    aput v2, p3, v4

    .line 1587
    iget-object v2, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1588
    :try_start_f
    iget v3, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {v0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 1596
    iget-object v3, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_2b

    .line 1599
    invoke-virtual {v0, v5, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide v0

    aput-wide v0, p2, v4

    .line 1600
    monitor-exit v2

    return v5

    :catchall_28
    move-exception v0

    goto/16 :goto_10b

    .line 1603
    :cond_2b
    iget v3, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {v0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    if-nez v3, :cond_35

    .line 1605
    monitor-exit v2

    return v4

    .line 1607
    :cond_35
    invoke-virtual {v0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1614
    iget v6, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->desiredFilterTypes:I

    if-eqz v6, :cond_3e

    move v6, v5

    goto :goto_3f

    :cond_3e
    move v6, v4

    .line 1618
    :goto_3f
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResources()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/16 v8, 0x21

    const/4 v9, 0x0

    const/16 v10, 0x3e9

    move v13, v4

    move-object v11, v9

    move v12, v10

    move v9, v8

    move-object v10, v11

    :goto_55
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    if-eqz v6, :cond_6b

    .line 1619
    iget v15, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->desiredFilterTypes:I

    invoke-virtual {v14, v15}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->hasSufficientCaps(I)Z

    move-result v15

    if-eqz v15, :cond_79

    .line 1620
    :cond_6b
    invoke-virtual {v14}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v15

    if-nez v15, :cond_7c

    .line 1621
    invoke-virtual {v14}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->getNumOfCaps()I

    move-result v15

    if-le v8, v15, :cond_79

    move-object v10, v14

    move v8, v15

    :cond_79
    move/from16 v16, v4

    goto :goto_b4

    :cond_7c
    if-nez v10, :cond_79

    .line 1631
    invoke-virtual {v14}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v15

    if-lt v12, v15, :cond_79

    move/from16 v16, v4

    .line 1633
    invoke-virtual {v14}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->getNumOfCaps()I

    move-result v4

    if-le v12, v15, :cond_aa

    .line 1638
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v9

    .line 1639
    invoke-virtual {v14}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v12

    if-ne v9, v12, :cond_a4

    move v13, v5

    goto :goto_a6

    :cond_a4
    move/from16 v13, v16

    :goto_a6
    move v9, v4

    move v4, v5

    move v12, v15

    goto :goto_b1

    :cond_aa
    if-le v9, v4, :cond_af

    move v9, v4

    move v4, v5

    goto :goto_b1

    :cond_af
    move/from16 v4, v16

    :goto_b1
    if-eqz v4, :cond_b4

    move-object v11, v14

    :cond_b4
    :goto_b4
    move/from16 v4, v16

    goto :goto_55

    :cond_b7
    move/from16 v16, v4

    if-eqz v10, :cond_cc

    .line 1663
    invoke-virtual {v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v3

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateDemuxClientMappingOnNewGrant(JI)V

    .line 1664
    invoke-virtual {v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    aput-wide v0, p2, v16

    .line 1665
    monitor-exit v2

    return v5

    :cond_cc
    if-eqz v11, :cond_f0

    .line 1671
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v0

    if-gt v0, v12, :cond_e2

    .line 1672
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v0

    if-ne v0, v12, :cond_f0

    if-eqz v13, :cond_f0

    .line 1676
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->resourceOwnershipRetentionEnabled()Z

    move-result v0

    if-nez v0, :cond_f0

    .line 1677
    :cond_e2
    invoke-virtual {v11}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    aput-wide v0, p2, v16

    .line 1678
    invoke-virtual {v11}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v0

    aput v0, p3, v16

    .line 1679
    monitor-exit v2

    return v5

    .line 1681
    :cond_f0
    monitor-exit v2

    return v16

    .line 1589
    :cond_f2
    new-instance v0, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request demux from unregistered client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1681
    :goto_10b
    monitor-exit v2
    :try_end_10c
    .catchall {:try_start_f .. :try_end_10c} :catchall_28

    throw v0
.end method

.method public claimFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J[I)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 999
    aput-wide v2, p2, v4

    const/4 v2, -0x1

    .line 1000
    aput v2, p3, v4

    .line 1001
    iget-object v3, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1002
    :try_start_f
    iget v5, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v5

    if-nez v5, :cond_34

    .line 1003
    const-string v0, "TunerResourceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request frontend from unregistered client: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    monitor-exit v3

    return v4

    :catchall_31
    move-exception v0

    goto/16 :goto_146

    .line 1008
    :cond_34
    iget v5, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 1009
    const-string v0, "TunerResourceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Release frontend before requesting another one. Client id: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    monitor-exit v3

    return v4

    .line 1013
    :cond_5e
    iget v5, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v5

    .line 1014
    invoke-virtual {v0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1021
    iget v6, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->desiredId:I

    const/4 v7, 0x1

    if-eq v6, v2, :cond_6e

    move v2, v7

    goto :goto_6f

    :cond_6e
    move v2, v4

    .line 1023
    :goto_6f
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    const/16 v9, 0x3e9

    move v11, v4

    move v10, v9

    move-object v9, v8

    :cond_81
    :goto_81
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 1024
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getResourceIdFromHandle(J)I

    move-result v13

    .line 1025
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v14

    iget v15, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    if-ne v14, v15, :cond_81

    if-eqz v2, :cond_a3

    iget v14, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->desiredId:I

    if-ne v13, v14, :cond_81

    .line 1027
    :cond_a3
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v13

    if-nez v13, :cond_c2

    .line 1030
    iget v13, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    invoke-virtual {v0, v13}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->isFrontendMaxNumUseReached(I)Z

    move-result v13

    if-eqz v13, :cond_b2

    goto :goto_81

    .line 1034
    :cond_b2
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_be

    move-object v8, v12

    goto :goto_10d

    :cond_be
    if-nez v8, :cond_81

    move-object v8, v12

    goto :goto_81

    :cond_c2
    if-nez v8, :cond_81

    .line 1045
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendHighestClientPriority(I)I

    move-result v13

    if-le v10, v13, :cond_81

    .line 1050
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v14

    .line 1051
    invoke-virtual {v14}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPrimaryFrontend()J

    move-result-wide v14

    .line 1052
    invoke-virtual {v0, v14, v15}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v14

    .line 1053
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v15

    invoke-virtual {v14}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v14

    if-eq v15, v14, :cond_f3

    .line 1054
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->isFrontendMaxNumUseReached(I)Z

    move-result v14

    if-eqz v14, :cond_f3

    goto :goto_81

    .line 1060
    :cond_f3
    invoke-virtual {v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v9

    .line 1061
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v10

    if-ne v9, v10, :cond_107

    move v9, v7

    goto :goto_108

    :cond_107
    move v9, v4

    :goto_108
    move v11, v9

    move-object v9, v12

    move v10, v13

    goto/16 :goto_81

    :cond_10d
    :goto_10d
    if-eqz v8, :cond_120

    .line 1069
    invoke-virtual {v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v5

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateFrontendClientMappingOnNewGrant(JI)V

    .line 1071
    invoke-virtual {v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    aput-wide v0, p2, v4

    .line 1072
    monitor-exit v3

    return v7

    :cond_120
    if-eqz v9, :cond_144

    .line 1078
    invoke-virtual {v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v0

    if-gt v0, v10, :cond_136

    .line 1079
    invoke-virtual {v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v0

    if-ne v0, v10, :cond_144

    if-eqz v11, :cond_144

    .line 1083
    invoke-virtual {v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->resourceOwnershipRetentionEnabled()Z

    move-result v0

    if-nez v0, :cond_144

    .line 1084
    :cond_136
    invoke-virtual {v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    aput-wide v0, p2, v4

    .line 1085
    invoke-virtual {v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v0

    aput v0, p3, v4

    .line 1086
    monitor-exit v3

    return v7

    .line 1088
    :cond_144
    monitor-exit v3

    return v4

    :goto_146
    monitor-exit v3
    :try_end_147
    .catchall {:try_start_f .. :try_end_147} :catchall_31

    throw v0
.end method

.method public claimLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J[I)Z
    .registers 15

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 1223
    aput-wide v0, p2, v2

    const/4 v0, -0x1

    .line 1224
    aput v0, p3, v2

    .line 1225
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1226
    :try_start_b
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 1230
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 1231
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1237
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    move v7, v2

    move-object v6, v4

    :cond_2d
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 1238
    invoke-virtual {v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v10

    if-nez v10, :cond_42

    move-object v4, v8

    goto :goto_66

    .line 1245
    :cond_42
    invoke-virtual {v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v10

    if-le v5, v10, :cond_2d

    .line 1249
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v5

    .line 1250
    invoke-virtual {v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v6

    if-ne v5, v6, :cond_60

    move v7, v9

    goto :goto_61

    :cond_60
    move v7, v2

    :goto_61
    move-object v6, v8

    move v5, v10

    goto :goto_2d

    :catchall_64
    move-exception p0

    goto :goto_b8

    :cond_66
    :goto_66
    if-eqz v4, :cond_79

    .line 1257
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v5

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {p0, v5, v6, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateLnbClientMappingOnNewGrant(JI)V

    .line 1258
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide p0

    aput-wide p0, p2, v2

    .line 1259
    monitor-exit v0

    return v9

    :cond_79
    if-eqz v6, :cond_9d

    .line 1265
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p0

    if-gt p0, v5, :cond_8f

    .line 1266
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p0

    if-ne p0, v5, :cond_9d

    if-eqz v7, :cond_9d

    .line 1270
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->resourceOwnershipRetentionEnabled()Z

    move-result p0

    if-nez p0, :cond_9d

    .line 1271
    :cond_8f
    invoke-virtual {v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide p0

    aput-wide p0, p2, v2

    .line 1272
    invoke-virtual {v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result p0

    aput p0, p3, v2

    .line 1273
    monitor-exit v0

    return v9

    .line 1275
    :cond_9d
    monitor-exit v0

    return v2

    .line 1227
    :cond_9f
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Request lnb from unregistered client:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1275
    :goto_b8
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_b .. :try_end_b9} :catchall_64

    throw p0
.end method

.method public clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 2473
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseLnbHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2474
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->removeOwner()V

    goto :goto_b

    .line 2477
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCasSystemId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_39

    .line 2478
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCasSystemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 2481
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCiCamId()I

    move-result v0

    if-eq v0, v1, :cond_4e

    .line 2482
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCiCamId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 2485
    :cond_4e
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseDemuxHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2486
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->removeOwner()V

    goto :goto_56

    .line 2489
    :cond_6e
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 2490
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->reclaimAllResources()V

    return-void
.end method

.method public final clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 2442
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2443
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v1

    .line 2444
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v2

    .line 2445
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2d

    .line 2446
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->removeOwner()V

    goto :goto_b

    .line 2449
    :cond_2d
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 2451
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->stopSharingFrontend(I)V

    goto :goto_b

    .line 2455
    :cond_3b
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPrimaryFrontend()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_54

    .line 2457
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 2459
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->decreFrontendNum(Landroid/util/SparseIntArray;I)V

    .line 2463
    :cond_54
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseFrontend()V

    return-void
.end method

.method public clearResourceMapInternal(I)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    .line 794
    :cond_3
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 795
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 796
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 797
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .registers 4

    .line 1690
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->isPriorityOverwritten()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1694
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v0

    .line 1695
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v0

    .line 1697
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getUseCase()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p0

    .line 1696
    invoke-virtual {p1, p0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPriority(I)V

    return-void
.end method

.method public final decreFrontendNum(Landroid/util/SparseIntArray;I)V
    .registers 4

    const/4 p0, -0x1

    .line 2215
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, p0, :cond_c

    add-int/lit8 v0, v0, -0x1

    .line 2217
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_c
    return-void
.end method

.method public final dumpMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .registers 6

    if-eqz p1, :cond_45

    .line 2244
    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2245
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2246
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 2247
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2248
    invoke-virtual {p4, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_10

    .line 2250
    :cond_3f
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2251
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_45
    return-void
.end method

.method public final dumpSIA(Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .registers 6

    if-eqz p1, :cond_3a

    .line 2258
    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2259
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p0, 0x0

    .line 2260
    :goto_9
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-ge p0, p2, :cond_34

    .line 2261
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2262
    invoke-virtual {p4, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    .line 2264
    :cond_34
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2265
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_3a
    return-void
.end method

.method public final enforceDescramblerAccessPermission(Ljava/lang/String;)V
    .registers 4

    .line 2539
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TunerResourceManagerService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_TV_DESCRAMBLER"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceTrmAccessPermission(Ljava/lang/String;)V
    .registers 4

    .line 2529
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TunerResourceManagerService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission.TUNER_RESOURCE_ACCESS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceTunerAccessPermission(Ljava/lang/String;)V
    .registers 4

    .line 2534
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TunerResourceManagerService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_TV_TUNER"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final generateResourceHandle(II)J
    .registers 7

    int-to-long v0, p1

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 p1, 0x38

    shl-long/2addr v0, p1

    int-to-long p1, p2

    const/16 v2, 0x18

    shl-long/2addr p1, v2

    or-long/2addr p1, v0

    .line 2507
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    int-to-long v0, v0

    const-wide/32 v2, 0xffffff

    and-long/2addr v0, v2

    or-long p0, p1, v0

    return-wide p0
.end method

.method public getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .registers 2

    .line 2354
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;

    return-object p0
.end method

.method public getCasResources()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CasResource;",
            ">;"
        }
    .end annotation

    .line 2365
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    return-object p0
.end method

.method public getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
    .registers 2

    .line 2360
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    return-object p0
.end method

.method public getCiCamResources()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CiCamResource;",
            ">;"
        }
    .end annotation

    .line 2370
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    return-object p0
.end method

.method public getClientPriority(IZ)I
    .registers 5

    .line 2005
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 2006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClientPriority useCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    if-eqz p2, :cond_30

    .line 2011
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->getForegroundPriority(I)I

    move-result p0

    return p0

    .line 2013
    :cond_30
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->getBackgroundPriority(I)I

    move-result p0

    return p0
.end method

.method public getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    .registers 2

    .line 2414
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    return-object p0
.end method

.method public getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;
    .registers 3

    .line 2158
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    return-object p0
.end method

.method public getDemuxResources()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/server/tv/tunerresourcemanager/DemuxResource;",
            ">;"
        }
    .end annotation

    .line 2163
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    return-object p0
.end method

.method public final getElapsedTime(J)J
    .registers 7

    .line 1714
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-ltz p0, :cond_a

    sub-long/2addr v0, p1

    return-wide v0

    :cond_a
    const-wide v2, 0x7fffffffffffffffL

    sub-long p0, v2, p1

    add-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-gez p2, :cond_19

    return-wide v2

    :cond_19
    return-wide p0
.end method

.method public final getFrontendHighestClientPriority(I)I
    .registers 4

    .line 2126
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2132
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result p1

    .line 2135
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2136
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v1

    if-le v1, p1, :cond_14

    move p1, v1

    goto :goto_14

    :cond_2c
    return p1
.end method

.method public getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    .registers 3

    .line 2147
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    return-object p0
.end method

.method public getFrontendResources()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/server/tv/tunerresourcemanager/FrontendResource;",
            ">;"
        }
    .end annotation

    .line 2152
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    return-object p0
.end method

.method public getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    .registers 3

    .line 2327
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    return-object p0
.end method

.method public getLnbResources()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/server/tv/tunerresourcemanager/LnbResource;",
            ">;"
        }
    .end annotation

    .line 2332
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    return-object p0
.end method

.method public final getMaxNumberOfFrontendsInternal(I)I
    .registers 4

    .line 2180
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_20

    .line 2182
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "existingNum is -1 for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2185
    :cond_20
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v1, :cond_29

    return v0

    :cond_29
    return p0
.end method

.method public getResourceIdFromHandle(J)I
    .registers 5

    .line 0
    const-wide/16 v0, -0x1

    cmp-long p0, p1, v0

    if-nez p0, :cond_8

    long-to-int p0, p1

    return p0

    :cond_8
    const/16 p0, 0x18

    shr-long p0, p1, p0

    long-to-int p0, p0

    return p0
.end method

.method public hasUnusedFrontendInternal(I)Z
    .registers 4

    .line 745
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 746
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v1

    if-ne v1, p1, :cond_c

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public final increFrontendNum(Landroid/util/SparseIntArray;I)V
    .registers 5

    const/4 p0, -0x1

    .line 2206
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_c

    .line 2208
    invoke-virtual {p1, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :cond_c
    add-int/2addr v0, v1

    .line 2210
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public final isFrontendMaxNumUseReached(I)Z
    .registers 5

    .line 2194
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    return v2

    .line 2198
    :cond_b
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v1, :cond_14

    move p0, v2

    :cond_14
    if-lt p0, v0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    return v2
.end method

.method public isHigherPriorityInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .registers 7

    .line 1450
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_27

    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHigherPriority(challengerProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", holderProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :cond_27
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    const/4 v2, 0x1

    if-nez v0, :cond_32

    .line 1456
    const-string p0, "TvInputManager is null. Can\'t compare the priority."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1462
    :cond_32
    iget-object v1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-nez v1, :cond_3b

    .line 1463
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    goto :goto_3f

    .line 1464
    :cond_3b
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v0

    .line 1465
    :goto_3f
    iget-object v1, p2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-nez v1, :cond_48

    .line 1466
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    goto :goto_4e

    .line 1467
    :cond_48
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {v3, v1}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v1

    .line 1469
    :goto_4e
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 1470
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v0

    .line 1469
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p1

    .line 1471
    iget p2, p2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p0

    if-le p1, p0, :cond_65

    return v2

    :cond_65
    const/4 p0, 0x0

    return p0
.end method

.method public isLowestPriorityInternal(II)Z
    .registers 7

    .line 756
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_8

    return v0

    .line 760
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 761
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p1

    .line 764
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 765
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v3

    if-ne v3, p2, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 766
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v2

    if-le p1, v2, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_3f
    return v0
.end method

.method public final lockForTunerApiLock(IJLjava/lang/String;)Z
    .registers 9

    .line 1729
    const-string v0, "TunerResourceManagerService"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p2, p3, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 p0, 0x1

    return p0

    .line 1732
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAILED to lock mLockForTRMSLock in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", clientId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", timeoutMS:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", mTunerApiLockHolder:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3d} :catch_3e

    return v1

    :catch_3e
    move-exception p1

    .line 1738
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception thrown in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_68

    .line 1740
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_68
    return v1
.end method

.method public onStart()V
    .registers 2

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->onStart(Z)V

    return-void
.end method

.method public onStart(Z)V
    .registers 4

    if-nez p1, :cond_e

    .line 150
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService-IA;)V

    const-string/jumbo v1, "tv_tuner_resource_mgr"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 152
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tv_input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 154
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->parse()V

    const/4 v0, 0x0

    if-nez p1, :cond_45

    .line 159
    const-string/jumbo p1, "ro.tuner.lazyhal"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_45

    .line 162
    const-string/jumbo p1, "tuner.server.enable"

    const-string/jumbo v1, "true"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_45
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-nez p1, :cond_69

    .line 167
    const-string/jumbo p1, "media.resource_manager"

    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 168
    const-string v1, "TunerResourceManagerService"

    if-nez p1, :cond_5a

    .line 169
    const-string p0, "Resource Manager Service not available."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_5a
    :try_start_5a
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5d} :catch_64

    .line 178
    invoke-static {p1}, Landroid/media/IResourceManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    return-void

    .line 175
    :catch_64
    const-string p0, "Could not link to death of native resource manager service."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    return-void
.end method

.method public reclaimResource(II)Z
    .registers 10

    .line 1958
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 1963
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1964
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_12

    .line 1966
    monitor-exit v0

    return v2

    :catchall_f
    move-exception p0

    goto/16 :goto_b3

    .line 1968
    :cond_12
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v1

    .line 1969
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_f

    .line 1971
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1972
    iget-object v4, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1973
    :try_start_2e
    iget-object v5, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    .line 1974
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_59

    if-eqz v1, :cond_1b

    .line 1977
    :try_start_39
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->getListener()Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->onReclaimResources()V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_1b

    :catch_41
    move-exception v1

    .line 1979
    const-string v4, "TunerResourceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to reclaim resources on client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :catchall_59
    move-exception p0

    .line 1974
    :try_start_5a
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p0

    .line 1984
    :cond_5c
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_7e

    .line 1985
    const-string v0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reclaiming resources because higher priority client request resource type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", clientId:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_7e
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1990
    :try_start_81
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    .line 1991
    monitor-exit p2
    :try_end_8e
    .catchall {:try_start_81 .. :try_end_8e} :catchall_b0

    if-eqz p0, :cond_af

    .line 1994
    :try_start_90
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->getListener()Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->onReclaimResources()V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_97} :catch_98

    goto :goto_af

    :catch_98
    move-exception p0

    .line 1996
    const-string p2, "TunerResourceManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to reclaim resources on client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_af
    :goto_af
    return v2

    :catchall_b0
    move-exception p0

    .line 1991
    :try_start_b1
    monitor-exit p2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw p0

    .line 1969
    :goto_b3
    :try_start_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_f

    throw p0
.end method

.method public registerClientProfileInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    .registers 10

    .line 661
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_20

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerClientProfile(clientProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 665
    aput v0, p3, v2

    .line 666
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_2e

    .line 667
    const-string p0, "TvInputManager is null. Can\'t register client profile."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 671
    :cond_2e
    iget v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    aput v3, p3, v2

    .line 673
    iget-object v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-nez v3, :cond_3f

    .line 674
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    goto :goto_43

    .line 675
    :cond_3f
    invoke-virtual {v0, v3}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v0

    .line 678
    :goto_43
    iget-object v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-eqz v3, :cond_68

    .line 680
    :try_start_4b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-interface {v3, v4, v0}, Landroid/media/IResourceManagerService;->overridePid(II)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_52} :catch_53

    goto :goto_68

    :catch_53
    move-exception v3

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not overridePid in resourceManagerSercice, remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_68
    :goto_68
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    aget v3, p3, v2

    invoke-direct {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;-><init>(I)V

    iget-object v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 688
    invoke-virtual {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->tvInputSessionId(Ljava/lang/String;)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    move-result-object v1

    iget v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 689
    invoke-virtual {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->useCase(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    move-result-object v1

    .line 690
    invoke-virtual {v1, v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->processId(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    move-result-object v1

    .line 691
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 692
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 693
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p1

    .line 692
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPriority(I)V

    .line 695
    aget p1, p3, v2

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addClientProfile(ILcom/android/server/tv/tunerresourcemanager/ClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V

    return-void
.end method

.method public releaseCasSessionInternal(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V
    .registers 5

    .line 1539
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseCasSession(sessionResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :cond_24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V

    return-void
.end method

.method public releaseCiCamInternal(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V
    .registers 5

    .line 1547
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseCiCamInternal(ciCamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getCiCamId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCiCamClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V

    return-void
.end method

.method public releaseDemuxInternal(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V
    .registers 5

    .line 1523
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseDemux(DemuxHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateDemuxClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V

    return-void
.end method

.method public releaseFrontendInternal(JI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1478
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 1479
    const-string v0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseFrontend(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", clientId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v0, 0x0

    .line 1481
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->validateResourceHandle(IJ)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1485
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->unclaimFrontend(JI)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 1487
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1488
    invoke-virtual {p0, p2, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    goto :goto_39

    .line 1492
    :cond_4d
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1493
    :try_start_50
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1494
    monitor-exit p1

    return-void

    :catchall_59
    move-exception p0

    monitor-exit p1
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_59

    throw p0

    .line 1483
    :cond_5c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "frontendHandle can\'t be invalid"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .registers 5

    .line 1531
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseLnb(lnbHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateLnbClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    return-void
.end method

.method public final releaseLockInternal(IJZZ)Z
    .registers 13

    .line 1840
    const-string/jumbo v0, "releaseLockInternal()"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->lockForTunerApiLock(IJLjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    .line 1845
    :cond_b
    :try_start_b
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_5a

    const/4 v2, -0x1

    const-string/jumbo v3, "releaseLockInternal("

    const-string v4, "TunerResourceManagerService"

    const-string v5, ", "

    if-ne v0, p1, :cond_a7

    .line 1847
    :try_start_17
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    if-nez p4, :cond_5d

    if-gtz v0, :cond_22

    goto :goto_5d

    .line 1860
    :cond_22
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_99

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") - NOT signaling because nested count is not zero ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    :catchall_5a
    move-exception p1

    goto/16 :goto_109

    .line 1849
    :cond_5d
    :goto_5d
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_8c

    .line 1850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUCCESS:releaseLockInternal("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") - signaling!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :cond_8c
    iput v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const-wide/16 p1, -0x1

    .line 1856
    iput-wide p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    .line 1857
    iput v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 1858
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_99
    .catchall {:try_start_17 .. :try_end_99} :catchall_5a

    .line 1887
    :cond_99
    :goto_99
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 1888
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_a6
    return v6

    :cond_a7
    if-ne v0, v2, :cond_d6

    if-nez p5, :cond_c8

    .line 1870
    :try_start_ab
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") - called while there is no current holder"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_ab .. :try_end_c8} :catchall_5a

    .line 1887
    :cond_c8
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_d5

    .line 1888
    :goto_d0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_d5
    return v1

    :cond_d6
    if-nez p5, :cond_ff

    .line 1878
    :try_start_d8
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") - called while someone else:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "is the current holder"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_d8 .. :try_end_ff} :catchall_5a

    .line 1887
    :cond_ff
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_108

    goto :goto_d0

    :cond_108
    return v1

    :goto_109
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p2

    if-eqz p2, :cond_116

    .line 1888
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1890
    :cond_116
    throw p1
.end method

.method public final removeCasResource(I)V
    .registers 4

    .line 2384
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2388
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2389
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCas()V

    goto :goto_f

    .line 2391
    :cond_27
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeCiCamResource(I)V
    .registers 4

    .line 2395
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2399
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2400
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCiCam()V

    goto :goto_f

    .line 2402
    :cond_27
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeClientProfile(I)V
    .registers 4

    .line 2425
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2426
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    goto :goto_c

    .line 2428
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 2429
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2431
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    if-eqz p0, :cond_4e

    .line 2433
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->getListener()Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_4e
    return-void
.end method

.method public final removeDemuxResource(J)V
    .registers 5

    .line 2314
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2318
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2319
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseDemuxInternal(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V

    .line 2321
    :cond_10
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeFrontendResource(J)V
    .registers 8

    .line 2294
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2298
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2299
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 2300
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2301
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    goto :goto_1d

    .line 2303
    :cond_35
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 2305
    :cond_38
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2306
    invoke-virtual {p0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    .line 2307
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->removeExclusiveGroupMemberFeId(J)V

    goto :goto_40

    .line 2309
    :cond_5c
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->decreFrontendNum(Landroid/util/SparseIntArray;I)V

    .line 2310
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeLnbResource(J)V
    .registers 5

    .line 2341
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2345
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2346
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    .line 2348
    :cond_10
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .registers 5

    if-eqz p2, :cond_1c

    .line 2233
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    if-eqz p1, :cond_1c

    const/4 p0, 0x0

    .line 2235
    :goto_8
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p0, v0, :cond_1c

    .line 2236
    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public final replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3

    if-eqz p2, :cond_10

    .line 2224
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_10

    .line 2225
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_10

    .line 2226
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_10
    return-void
.end method

.method public requestCasSessionInternal(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1283
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCasSession(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->claimCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_28

    return p1

    .line 1289
    :cond_28
    aget-wide v0, p2, p1

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_31

    return p1

    :cond_31
    const/4 p0, 0x1

    return p0
.end method

.method public requestCiCamInternal(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1362
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 1363
    const-string v0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCiCamInternal(TunerCiCamRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x1

    .line 1365
    new-array v1, v0, [I

    .line 1366
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->claimCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J[I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2b

    return v3

    .line 1369
    :cond_2b
    aget-wide v4, p2, v3

    const-wide/16 v6, -0x1

    cmp-long p2, v4, v6

    if-nez p2, :cond_34

    return v3

    .line 1372
    :cond_34
    aget p2, v1, v3

    const/4 v1, -0x1

    if-eq p2, v1, :cond_66

    const/4 v1, 0x5

    .line 1373
    invoke-virtual {p0, p2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result p2

    if-nez p2, :cond_41

    return v3

    .line 1377
    :cond_41
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1378
    :try_start_44
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->isFullyUsed()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1379
    const-string p0, "TunerResourceManagerService"

    const-string p1, "Reclaimed ciCam still fully used"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    monitor-exit p2

    return v3

    :catchall_59
    move-exception p0

    goto :goto_64

    .line 1382
    :cond_5b
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCiCamClientMappingOnNewGrant(II)V

    .line 1383
    monitor-exit p2

    goto :goto_66

    :goto_64
    monitor-exit p2
    :try_end_65
    .catchall {:try_start_44 .. :try_end_65} :catchall_59

    throw p0

    :cond_66
    :goto_66
    return v0
.end method

.method public requestDemuxInternal(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1556
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 1557
    const-string v0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDemux(request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x1

    .line 1559
    new-array v1, v0, [I

    .line 1560
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->claimDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J[I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2b

    return v3

    .line 1563
    :cond_2b
    aget-wide v4, p2, v3

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_34

    return v3

    .line 1566
    :cond_34
    aget v1, v1, v3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_65

    .line 1567
    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v1

    if-nez v1, :cond_40

    return v3

    .line 1571
    :cond_40
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1572
    :try_start_43
    aget-wide v4, p2, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1573
    const-string p0, "TunerResourceManagerService"

    const-string p1, "Reclaimed demux still in use"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    monitor-exit v1

    return v3

    :catchall_58
    move-exception p0

    goto :goto_63

    .line 1576
    :cond_5a
    aget-wide v2, p2, v3

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateDemuxClientMappingOnNewGrant(JI)V

    .line 1577
    monitor-exit v1

    goto :goto_65

    :goto_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_43 .. :try_end_64} :catchall_58

    throw p0

    :cond_65
    :goto_65
    return v0
.end method

.method public requestDescramblerInternal(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[J)Z
    .registers 5

    .line 1703
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestDescrambler(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TunerResourceManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 1708
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide p0

    aput-wide p0, p2, v0

    const/4 p0, 0x1

    return p0
.end method

.method public requestFrontendInternal(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J)Z
    .registers 11

    .line 968
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 969
    const-string v0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestFrontend(request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x1

    .line 971
    new-array v1, v0, [I

    .line 972
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->claimFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J[I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2b

    return v3

    .line 975
    :cond_2b
    aget-wide v4, p2, v3

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_34

    return v3

    .line 978
    :cond_34
    aget v1, v1, v3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_65

    .line 979
    invoke-virtual {p0, v1, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v1

    if-nez v1, :cond_40

    return v3

    .line 983
    :cond_40
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 984
    :try_start_43
    aget-wide v4, p2, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 985
    const-string p0, "TunerResourceManagerService"

    const-string p1, "Reclaimed frontend still in use"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    monitor-exit v1

    return v3

    :catchall_58
    move-exception p0

    goto :goto_63

    .line 988
    :cond_5a
    aget-wide v2, p2, v3

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateFrontendClientMappingOnNewGrant(JI)V

    .line 989
    monitor-exit v1

    goto :goto_65

    :goto_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_43 .. :try_end_64} :catchall_58

    throw p0

    :cond_65
    :goto_65
    return v0
.end method

.method public requestLnbInternal(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1195
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 1196
    const-string v0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestLnb(request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x1

    .line 1198
    new-array v1, v0, [I

    .line 1199
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->claimLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J[I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2b

    return v3

    .line 1202
    :cond_2b
    aget-wide v4, p2, v3

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_34

    return v3

    .line 1205
    :cond_34
    aget v1, v1, v3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_66

    const/4 v2, 0x3

    .line 1206
    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v1

    if-nez v1, :cond_41

    return v3

    .line 1210
    :cond_41
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1211
    :try_start_44
    aget-wide v4, p2, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1212
    const-string p0, "TunerResourceManagerService"

    const-string p1, "Reclaimed lnb still in use"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    monitor-exit v1

    return v3

    :catchall_59
    move-exception p0

    goto :goto_64

    .line 1215
    :cond_5b
    aget-wide v2, p2, v3

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateLnbClientMappingOnNewGrant(JI)V

    .line 1216
    monitor-exit v1

    goto :goto_66

    :goto_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_44 .. :try_end_65} :catchall_59

    throw p0

    :cond_66
    :goto_66
    return v0
.end method

.method public restoreResourceMapInternal(I)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    .line 808
    :cond_3
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 809
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 810
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 811
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public setDemuxInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V
    .registers 8

    .line 858
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const/4 v1, 0x0

    const-string v2, "TunerResourceManagerService"

    if-eqz v0, :cond_1d

    .line 859
    const-string/jumbo v0, "updateDemuxInfo:"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 860
    :goto_e
    array-length v3, p1

    if-ge v0, v3, :cond_1d

    .line 861
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 868
    :cond_1d
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 871
    :goto_2a
    array-length v3, p1

    if-ge v1, v3, :cond_7f

    .line 872
    aget-object v3, p1, v1

    iget-wide v3, v3, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v3

    if-eqz v3, :cond_64

    .line 873
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_58

    .line 874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Demux handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    iget-wide v4, v4, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_58
    aget-object v3, p1, v1

    iget-wide v3, v3, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 879
    :cond_64
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;

    aget-object v4, p1, v1

    iget-wide v4, v4, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:J

    invoke-direct {v3, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;-><init>(J)V

    aget-object v4, p1, v1

    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->filterTypes:I

    .line 880
    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;->filterTypes(I)Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;

    move-result-object v3

    .line 881
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v3

    .line 882
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addDemuxResource(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V

    :goto_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 886
    :cond_7f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_83
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 888
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeDemuxResource(J)V

    goto :goto_83

    :cond_97
    return-void
.end method

.method public setFrontendInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .registers 8

    .line 821
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const/4 v1, 0x0

    const-string v2, "TunerResourceManagerService"

    if-eqz v0, :cond_1d

    .line 822
    const-string/jumbo v0, "updateFrontendInfo:"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 823
    :goto_e
    array-length v3, p1

    if-ge v0, v3, :cond_1d

    .line 824
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 831
    :cond_1d
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 834
    :goto_2a
    array-length v3, p1

    if-ge v1, v3, :cond_87

    .line 835
    aget-object v3, p1, v1

    iget-wide v3, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    if-eqz v3, :cond_64

    .line 836
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_58

    .line 837
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frontend handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    iget-wide v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_58
    aget-object v3, p1, v1

    iget-wide v3, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_84

    .line 842
    :cond_64
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    aget-object v4, p1, v1

    iget-wide v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:J

    invoke-direct {v3, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;-><init>(J)V

    aget-object v4, p1, v1

    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->type:I

    .line 843
    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->type(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    move-result-object v3

    aget-object v4, p1, v1

    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->exclusiveGroupId:I

    .line 844
    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->exclusiveGroupId(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    move-result-object v3

    .line 845
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    .line 846
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addFrontendResource(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V

    :goto_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 850
    :cond_87
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 852
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeFrontendResource(J)V

    goto :goto_8b

    :cond_9f
    return-void
.end method

.method public setLnbInfoListInternal([J)V
    .registers 8

    .line 893
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    move v0, v2

    .line 894
    :goto_8
    array-length v3, p1

    if-ge v0, v3, :cond_2a

    .line 895
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateLnbInfo(lnbHanle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, p1, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 902
    :cond_2a
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 905
    :goto_37
    array-length v3, p1

    if-ge v2, v3, :cond_7c

    .line 906
    aget-wide v3, p1, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 907
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_61

    .line 908
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lnb handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, p1, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_61
    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_79

    .line 913
    :cond_6b
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;

    aget-wide v4, p1, v2

    invoke-direct {v3, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;-><init>(J)V

    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v3

    .line 914
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addLnbResource(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    :goto_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 918
    :cond_7c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_80
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 919
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeLnbResource(J)V

    goto :goto_80

    :cond_94
    return-void
.end method

.method public final setMaxNumberOfFrontendsInternal(II)Z
    .registers 5

    .line 2167
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_35

    if-gt v0, p2, :cond_c

    goto :goto_35

    .line 2172
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "max number of frontend for frontendType: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be set to a value lower than the current usage count. (requested max num = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", current usage = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2169
    :cond_35
    :goto_35
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public shareFrontendInternal(II)V
    .registers 7

    .line 1095
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shareFrontend from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareeFeClientId()Ljava/lang/Integer;

    move-result-object v0

    .line 1099
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_44

    .line 1100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->stopSharingFrontend(I)V

    .line 1101
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseFrontend()V

    .line 1103
    :cond_44
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1104
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useFrontend(J)V

    goto :goto_50

    .line 1106
    :cond_68
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setShareeFeClientId(Ljava/lang/Integer;)V

    .line 1107
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->shareFrontend(I)V

    return-void
.end method

.method public storeResourceMapInternal(I)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    .line 780
    :cond_3
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 781
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 782
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 783
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public final transferFeCiCamOwner(II)Z
    .registers 5

    .line 1137
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    .line 1138
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1141
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCiCamId()I

    move-result v1

    .line 1142
    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useCiCam(I)V

    .line 1145
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object p0

    .line 1146
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 1149
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCiCam()V

    const/4 p0, 0x1

    return p0
.end method

.method public final transferFeOwner(II)Z
    .registers 7

    .line 1111
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1112
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 1114
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->shareFrontend(I)V

    .line 1115
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->stopSharingFrontend(I)V

    const/4 p1, -0x1

    .line 1116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setShareeFeClientId(Ljava/lang/Integer;)V

    .line 1117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setShareeFeClientId(Ljava/lang/Integer;)V

    .line 1118
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1119
    invoke-virtual {p0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    goto :goto_25

    .line 1122
    :cond_3d
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPrimaryFrontend()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPrimaryFrontend(J)V

    const-wide/16 v1, -0x1

    .line 1123
    invoke-virtual {v0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPrimaryFrontend(J)V

    .line 1125
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1126
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v2

    if-eq v2, p2, :cond_51

    .line 1128
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "something is wrong in transferFeOwner:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_92
    const/4 p0, 0x1

    return p0
.end method

.method public final transferLnbOwner(II)Z
    .registers 9

    .line 1154
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    .line 1155
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1157
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1158
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseLnbHandles()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1160
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useLnb(J)V

    .line 1163
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v4

    .line 1164
    invoke-virtual {v4, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 1166
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1170
    :cond_37
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 1171
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseLnb(J)V

    goto :goto_3b

    :cond_4f
    const/4 p0, 0x1

    return p0
.end method

.method public transferOwnerInternal(III)Z
    .registers 5

    if-eqz p1, :cond_2b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_26

    const/4 v0, 0x5

    if-eq p1, v0, :cond_21

    .line 1187
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "transferOwnerInternal. unsupported resourceType: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1183
    :cond_21
    invoke-virtual {p0, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->transferFeCiCamOwner(II)Z

    move-result p0

    return p0

    .line 1185
    :cond_26
    invoke-virtual {p0, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->transferLnbOwner(II)Z

    move-result p0

    return p0

    .line 1181
    :cond_2b
    invoke-virtual {p0, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->transferFeOwner(II)Z

    move-result p0

    return p0
.end method

.method public final unclaimFrontend(JI)Ljava/util/Set;
    .registers 6

    .line 1499
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1500
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1504
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 1508
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result p1

    .line 1509
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    if-ne p1, p3, :cond_20

    .line 1511
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object p0

    goto :goto_2f

    :catchall_1e
    move-exception p0

    goto :goto_58

    .line 1513
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    const/4 p0, 0x0

    .line 1517
    :goto_2f
    monitor-exit v0

    return-object p0

    .line 1514
    :cond_31
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Client is not a sharee of the releasing fe."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1506
    :cond_39
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Releasing frontend does not exist."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1501
    :cond_41
    new-instance p0, Landroid/os/RemoteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Release frontend from unregistered client:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1517
    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_1e

    throw p0
.end method

.method public unregisterClientProfileInternal(I)V
    .registers 6

    .line 700
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 702
    const-string p0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering non exists client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    goto :goto_6c

    .line 705
    :cond_23
    sget-boolean v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v1, :cond_43

    .line 706
    const-string v1, "TunerResourceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterClientProfile(clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_43
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeClientProfile(I)V

    .line 710
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_21

    if-eqz p0, :cond_6a

    .line 712
    :try_start_4a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    const/4 v1, -0x1

    invoke-interface {p0, p1, v1}, Landroid/media/IResourceManagerService;->overridePid(II)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_52} :catch_53
    .catchall {:try_start_4a .. :try_end_52} :catchall_21

    goto :goto_6a

    :catch_53
    move-exception p0

    .line 714
    :try_start_54
    const-string p1, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not overridePid in resourceManagerSercice when unregister, remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_6a
    :goto_6a
    monitor-exit v0

    return-void

    :goto_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_54 .. :try_end_6d} :catchall_21

    throw p0
.end method

.method public final updateAndGetOwnerClientPriority(I)I
    .registers 2

    .line 2112
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    .line 2113
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 2114
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p0

    return p0
.end method

.method public final updateCasClientMappingOnNewGrant(II)V
    .registers 4

    .line 2076
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 2077
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2078
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 2079
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useCas(I)V

    return-void
.end method

.method public final updateCasClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V
    .registers 4

    .line 2090
    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeSession(I)V

    .line 2091
    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->hasOpenSessions(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2092
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2093
    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 2094
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCas()V

    :cond_13
    return-void
.end method

.method public updateCasInfoInternal(II)V
    .registers 7

    .line 925
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCasInfo(casSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSessionNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    if-nez p2, :cond_31

    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeCasResource(I)V

    .line 933
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeCiCamResource(I)V

    return-void

    .line 937
    :cond_31
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 938
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v1

    if-eqz v0, :cond_4d

    .line 940
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getUsedSessionNum()I

    move-result p0

    if-le p0, p2, :cond_44

    .line 942
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getUsedSessionNum()I

    .line 945
    :cond_44
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->updateMaxSessionNum(I)V

    if-eqz v1, :cond_4c

    .line 947
    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->updateMaxSessionNum(I)V

    :cond_4c
    return-void

    :cond_4d
    const/4 v0, 0x4

    .line 952
    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide v0

    .line 954
    new-instance v2, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    invoke-direct {v2, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(JI)V

    .line 955
    invoke-virtual {v2, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    move-result-object v0

    .line 956
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    const/4 v1, 0x5

    .line 957
    invoke-virtual {p0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide v1

    .line 959
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    invoke-direct {v3, v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;-><init>(JI)V

    .line 960
    invoke-virtual {v3, p2}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    move-result-object p1

    .line 961
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object p1

    .line 962
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCasResource(Lcom/android/server/tv/tunerresourcemanager/CasResource;)V

    .line 963
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCiCamResource(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;)V

    return-void
.end method

.method public final updateCiCamClientMappingOnNewGrant(II)V
    .registers 4

    .line 2083
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    .line 2084
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2085
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 2086
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useCiCam(I)V

    return-void
.end method

.method public final updateCiCamClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V
    .registers 3

    .line 2100
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2101
    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 2102
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCiCam()V

    return-void
.end method

.method public updateClientPriorityInternal(III)Z
    .registers 7

    .line 723
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_30

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateClientPriority(clientId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", priority="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", niceValue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_30
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    if-nez p0, :cond_51

    .line 731
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can not find client profile with id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " when trying to update the client priority."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 737
    :cond_51
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->overwritePriority(I)V

    .line 738
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setNiceValue(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateDemuxClientMappingOnNewGrant(JI)V
    .registers 5

    .line 2048
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2050
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2051
    invoke-virtual {v0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 2052
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useDemux(J)V

    :cond_10
    return-void
.end method

.method public final updateDemuxClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V
    .registers 4

    .line 2057
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2058
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->removeOwner()V

    .line 2059
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseDemux(J)V

    return-void
.end method

.method public final updateFrontendClientMappingOnNewGrant(JI)V
    .registers 9

    .line 2035
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    .line 2036
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 2037
    invoke-virtual {v0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 2038
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->increFrontendNum(Landroid/util/SparseIntArray;I)V

    .line 2039
    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useFrontend(J)V

    .line 2040
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2041
    invoke-virtual {p0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 2042
    invoke-virtual {v1, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useFrontend(J)V

    goto :goto_1f

    .line 2044
    :cond_3a
    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPrimaryFrontend(J)V

    return-void
.end method

.method public final updateLnbClientMappingOnNewGrant(JI)V
    .registers 5

    .line 2063
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v0

    .line 2064
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2065
    invoke-virtual {v0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 2066
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useLnb(J)V

    return-void
.end method

.method public final updateLnbClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .registers 4

    .line 2070
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2071
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->removeOwner()V

    .line 2072
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseLnb(J)V

    return-void
.end method

.method public final validateResourceHandle(IJ)Z
    .registers 6

    .line 0
    const-wide/16 v0, -0x1

    cmp-long p0, p2, v0

    if-eqz p0, :cond_14

    const/16 p0, 0x38

    shr-long/2addr p2, p0

    const-wide/16 v0, 0xff

    and-long/2addr p2, v0

    int-to-long p0, p1

    cmp-long p0, p2, p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method
