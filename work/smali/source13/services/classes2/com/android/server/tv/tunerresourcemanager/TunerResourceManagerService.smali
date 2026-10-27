.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
.super Lcom/android/server/SystemService;
.source "TunerResourceManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;,
        Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final INVALID_CLIENT_ID:I = -0x1

.field private static final INVALID_FE_COUNT:I = -0x1

.field private static final INVALID_THREAD_ID:J = -0x1L

.field private static final MAX_CLIENT_PRIORITY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "TunerResourceManagerService"

.field private static final TRMS_LOCK_TIMEOUT:J = 0x1f4L


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCasResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CasResource;",
            ">;"
        }
    .end annotation
.end field

.field private mCiCamResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CiCamResource;",
            ">;"
        }
    .end annotation
.end field

.field private mClientProfiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/ClientProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontendExistingNums:Landroid/util/SparseIntArray;

.field private mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

.field private mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

.field private mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

.field private mFrontendResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/FrontendResource;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontendResourcesBackup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/FrontendResource;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontendUsedNums:Landroid/util/SparseIntArray;

.field private mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLnbResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/LnbResource;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMediaResourceManager:Landroid/media/IResourceManagerService;

.field private mNextUnusedClientId:I

.field private mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

.field private mResourceRequestCount:I

.field private mTunerApiLockHolder:I

.field private mTunerApiLockHolderThreadId:J

.field private mTunerApiLockNestedCount:I

.field private final mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

.field private mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCasResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCiCamResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientProfiles(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrontendExistingNums(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrontendExistingNumsBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrontendMaxUsableNums(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrontendMaxUsableNumsBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrontendResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrontendResourcesBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrontendUsedNums(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrontendUsedNumsBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLnbResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPriorityCongfig(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$macquireLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJJ)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->acquireLockInternal(IJJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->dumpMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->dumpSIA(Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceDescramblerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->enforceDescramblerAccessPermission(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->enforceTrmAccessPermission(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->enforceTunerAccessPermission(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMaxNumberOfFrontendsInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getMaxNumberOfFrontendsInternal(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreleaseLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJZZ)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLockInternal(IJZZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveClientProfile(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeClientProfile(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMaxNumberOfFrontendsInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setMaxNumberOfFrontendsInternal(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mvalidateResourceHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->validateResourceHandle(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 69
    const-string v0, "TunerResourceManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    .line 83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    .line 85
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    .line 87
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    .line 89
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    .line 94
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    .line 95
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    .line 96
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    .line 111
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-direct {v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    .line 114
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    .line 117
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 119
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 120
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    .line 121
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    .line 122
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    .line 123
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 127
    return-void
.end method

.method private acquireLockInternal(IJJ)Z
    .registers 26
    .param p1, "clientId"    # I
    .param p2, "clientThreadId"    # J
    .param p4, "timeoutMS"    # J

    .line 1375
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    const-string v7, "TunerResourceManagerService"

    const-string v8, ", "

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1378
    .local v9, "begin":J
    const-string v0, "acquireLockInternal()"

    invoke-direct {v1, v2, v5, v6, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->lockForTunerApiLock(IJLjava/lang/String;)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_1a

    .line 1379
    return v11

    .line 1383
    :cond_1a
    :try_start_1a
    iget v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1c} :catch_1eb
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1e7

    const/4 v12, -0x1

    if-ne v0, v12, :cond_21

    const/4 v14, 0x1

    goto :goto_22

    :cond_21
    move v14, v11

    .line 1384
    .local v14, "available":Z
    :goto_22
    if-ne v2, v0, :cond_37

    move v15, v14

    .end local v14    # "available":Z
    .local v15, "available":Z
    :try_start_25
    iget-wide v13, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_27} :catch_32
    .catchall {:try_start_25 .. :try_end_27} :catchall_2d

    cmp-long v13, v3, v13

    if-nez v13, :cond_38

    const/4 v13, 0x1

    goto :goto_39

    .line 1459
    .end local v15    # "available":Z
    :catchall_2d
    move-exception v0

    move-wide/from16 v18, v9

    goto/16 :goto_22f

    .line 1454
    :catch_32
    move-exception v0

    move-wide/from16 v18, v9

    goto/16 :goto_1ee

    .line 1384
    .restart local v14    # "available":Z
    :cond_37
    move v15, v14

    .end local v14    # "available":Z
    .restart local v15    # "available":Z
    :cond_38
    move v13, v11

    .line 1386
    .local v13, "nestedSelf":Z
    :goto_39
    const/4 v14, 0x0

    .line 1389
    .local v14, "recovery":Z
    :goto_3a
    const-string v0, "acquireLockInternal("

    if-nez v15, :cond_fa

    if-nez v13, :cond_fa

    .line 1391
    :try_start_40
    invoke-direct {v1, v9, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getElapsedTime(J)J

    move-result-wide v16
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_44} :catch_1eb
    .catchall {:try_start_40 .. :try_end_44} :catchall_1e7

    sub-long v11, v5, v16

    .line 1392
    .local v11, "leftOverMS":J
    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    move-wide/from16 v18, v9

    .end local v9    # "begin":J
    .local v18, "begin":J
    const-string v9, "("

    if-gtz v16, :cond_98

    .line 1393
    :try_start_50
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v14

    .end local v14    # "recovery":Z
    .local v16, "recovery":Z
    const-string v14, "FAILED:acquireLockInternal("

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, ") - timed out, but will grant the lock to the callee by stealing it from the current holder:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v14, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v13

    .end local v13    # "nestedSelf":Z
    .local v10, "nestedSelf":Z
    iget-wide v13, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, "), who likely failed to call releaseLock(), to prevent this from becoming an unrecoverable error"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const/4 v14, 0x1

    .line 1404
    .end local v16    # "recovery":Z
    .restart local v14    # "recovery":Z
    goto/16 :goto_101

    .line 1408
    .end local v10    # "nestedSelf":Z
    .restart local v13    # "nestedSelf":Z
    :cond_98
    move v10, v13

    move/from16 v16, v14

    .end local v13    # "nestedSelf":Z
    .end local v14    # "recovery":Z
    .restart local v10    # "nestedSelf":Z
    .restart local v16    # "recovery":Z
    iget-object v13, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v13, v11, v12, v14}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1413
    iget v13, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_a9

    const/4 v13, 0x1

    goto :goto_aa

    :cond_a9
    const/4 v13, 0x0

    :goto_aa
    move v15, v13

    .line 1415
    if-nez v15, :cond_ef

    .line 1416
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ") - woken up from cond wait, but "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v13, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move v9, v15

    .end local v15    # "available":Z
    .local v9, "available":Z
    iget-wide v14, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ") is already holding the lock. Going to wait again if timeout hasn\'t reached yet"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f0

    .line 1415
    .end local v9    # "available":Z
    .restart local v15    # "available":Z
    :cond_ef
    move v9, v15

    .line 1421
    .end local v11    # "leftOverMS":J
    .end local v15    # "available":Z
    .restart local v9    # "available":Z
    :goto_f0
    move v15, v9

    move v13, v10

    move/from16 v14, v16

    move-wide/from16 v9, v18

    const/4 v11, 0x0

    const/4 v12, -0x1

    goto/16 :goto_3a

    .line 1389
    .end local v10    # "nestedSelf":Z
    .end local v16    # "recovery":Z
    .end local v18    # "begin":J
    .local v9, "begin":J
    .restart local v13    # "nestedSelf":Z
    .restart local v14    # "recovery":Z
    .restart local v15    # "available":Z
    :cond_fa
    move-wide/from16 v18, v9

    move v10, v13

    move/from16 v16, v14

    .line 1424
    .end local v9    # "begin":J
    .end local v13    # "nestedSelf":Z
    .end local v14    # "recovery":Z
    .restart local v10    # "nestedSelf":Z
    .restart local v16    # "recovery":Z
    .restart local v18    # "begin":J
    move/from16 v14, v16

    .end local v16    # "recovery":Z
    .restart local v14    # "recovery":Z
    :goto_101
    if-nez v15, :cond_174

    if-eqz v14, :cond_106

    goto :goto_174

    .line 1439
    :cond_106
    if-eqz v10, :cond_148

    .line 1441
    iget v9, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    const/4 v11, 0x1

    add-int/2addr v9, v11

    iput v9, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 1442
    sget-boolean v9, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v9, :cond_145

    .line 1443
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ") - nested count incremented to "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v9, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto/16 :goto_1cd

    .line 1442
    :cond_145
    const/4 v0, 0x1

    goto/16 :goto_1cd

    .line 1448
    :cond_148
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ") - should not reach here"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_1cd

    .line 1425
    :cond_174
    :goto_174
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_1a4

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SUCCESS:acquireLockInternal("

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ")"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_1a4
    iget v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    if-eqz v0, :cond_1c6

    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Something is wrong as nestedCount("

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v9, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ") is not zero. Will overriding it to 1 anyways"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_1c6
    iput v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    .line 1437
    iput-wide v3, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    .line 1438
    const/4 v0, 0x1

    iput v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I
    :try_end_1cd
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_1cd} :catch_1e5
    .catchall {:try_start_50 .. :try_end_1cd} :catchall_22e

    .line 1453
    :goto_1cd
    if-nez v15, :cond_1d6

    if-nez v10, :cond_1d6

    if-eqz v14, :cond_1d4

    goto :goto_1d6

    :cond_1d4
    const/4 v11, 0x0

    goto :goto_1d7

    :cond_1d6
    :goto_1d6
    move v11, v0

    .line 1459
    :goto_1d7
    iget-object v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 1460
    iget-object v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1453
    :cond_1e4
    return v11

    .line 1454
    .end local v10    # "nestedSelf":Z
    .end local v14    # "recovery":Z
    .end local v15    # "available":Z
    :catch_1e5
    move-exception v0

    goto :goto_1ee

    .line 1459
    .end local v18    # "begin":J
    .restart local v9    # "begin":J
    :catchall_1e7
    move-exception v0

    move-wide/from16 v18, v9

    .end local v9    # "begin":J
    .restart local v18    # "begin":J
    goto :goto_22f

    .line 1454
    .end local v18    # "begin":J
    .restart local v9    # "begin":J
    :catch_1eb
    move-exception v0

    move-wide/from16 v18, v9

    .line 1455
    .end local v9    # "begin":J
    .local v0, "ie":Ljava/lang/InterruptedException;
    .restart local v18    # "begin":J
    :goto_1ee
    :try_start_1ee
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception thrown in acquireLockInternal("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21e
    .catchall {:try_start_1ee .. :try_end_21e} :catchall_22e

    .line 1457
    nop

    .line 1459
    iget-object v7, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v7

    if-eqz v7, :cond_22c

    .line 1460
    iget-object v7, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1457
    :cond_22c
    const/4 v7, 0x0

    return v7

    .line 1459
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :catchall_22e
    move-exception v0

    :goto_22f
    iget-object v7, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v7

    if-eqz v7, :cond_23c

    .line 1460
    iget-object v7, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1462
    :cond_23c
    throw v0
.end method

.method private addCasResource(Lcom/android/server/tv/tunerresourcemanager/CasResource;)V
    .registers 4
    .param p1, "newCas"    # Lcom/android/server/tv/tunerresourcemanager/CasResource;

    .line 1947
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    return-void
.end method

.method private addCiCamResource(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;)V
    .registers 4
    .param p1, "newCiCam"    # Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    .line 1952
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getCiCamId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
    return-void
.end method

.method private addClientProfile(ILcom/android/server/tv/tunerresourcemanager/ClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V
    .registers 6
    .param p1, "clientId"    # I
    .param p2, "profile"    # Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    .param p3, "listener"    # Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    .line 1991
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    invoke-direct {p0, p1, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addResourcesReclaimListener(ILandroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V

    .line 1993
    return-void
.end method

.method private addFrontendResource(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V
    .registers 7
    .param p1, "newFe"    # Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 1858
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 1859
    .local v1, "fe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupId()I

    move-result v3

    if-ne v2, v3, :cond_5c

    .line 1860
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getHandle()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandle(I)V

    .line 1861
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandles(Ljava/util/Collection;)V

    .line 1862
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

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1863
    .local v2, "excGroupmemberFeHandle":I
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    .line 1864
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getHandle()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandle(I)V

    .line 1865
    .end local v2    # "excGroupmemberFeHandle":I
    goto :goto_38

    .line 1866
    :cond_54
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getHandle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandle(I)V

    .line 1867
    goto :goto_5d

    .line 1869
    .end local v1    # "fe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    :cond_5c
    goto :goto_c

    .line 1871
    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->increFrontendNum(Landroid/util/SparseIntArray;I)V

    .line 1874
    return-void
.end method

.method private addLnbResource(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .registers 4
    .param p1, "newLnb"    # Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 1909
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    return-void
.end method

.method private addResourcesReclaimListener(ILandroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V
    .registers 7
    .param p1, "clientId"    # I
    .param p2, "listener"    # Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    .line 1555
    const-string v0, "TunerResourceManagerService"

    if-nez p2, :cond_25

    .line 1556
    sget-boolean v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v1, :cond_24

    .line 1557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener is null when client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_24
    return-void

    .line 1562
    :cond_25
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;I)V

    .line 1566
    .local v1, "record":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;
    :try_start_2a
    invoke-interface {p2}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_32} :catch_3d

    .line 1570
    nop

    .line 1572
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    return-void

    .line 1567
    :catch_3d
    move-exception v2

    .line 1568
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Listener already died."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    return-void
.end method

.method private clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .registers 5
    .param p1, "profile"    # Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 2036
    if-nez p1, :cond_3

    .line 2037
    return-void

    .line 2040
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

    check-cast v1, Ljava/lang/Integer;

    .line 2041
    .local v1, "lnbHandle":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->removeOwner()V

    .line 2042
    .end local v1    # "lnbHandle":Ljava/lang/Integer;
    goto :goto_b

    .line 2044
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCasSystemId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_39

    .line 2045
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCasSystemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 2048
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCiCamId()I

    move-result v0

    if-eq v0, v1, :cond_4e

    .line 2049
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCiCamId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->removeOwner(I)V

    .line 2052
    :cond_4e
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 2053
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->reclaimAllResources()V

    .line 2054
    return-void
.end method

.method private clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .registers 8
    .param p1, "profile"    # Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 2006
    if-nez p1, :cond_3

    .line 2007
    return-void

    .line 2009
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2010
    .local v1, "feId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    .line 2011
    .local v2, "fe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getOwnerClientId()I

    move-result v3

    .line 2012
    .local v3, "ownerClientId":I
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v4

    if-ne v3, v4, :cond_2d

    .line 2013
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->removeOwner()V

    .line 2014
    goto :goto_b

    .line 2016
    :cond_2d
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v4

    .line 2017
    .local v4, "ownerClientProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    if-eqz v4, :cond_3a

    .line 2018
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->stopSharingFrontend(I)V

    .line 2021
    .end local v1    # "feId":Ljava/lang/Integer;
    .end local v2    # "fe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    .end local v3    # "ownerClientId":I
    .end local v4    # "ownerClientProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    :cond_3a
    goto :goto_b

    .line 2023
    :cond_3b
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPrimaryFrontend()I

    move-result v0

    .line 2024
    .local v0, "primaryFeId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_51

    .line 2025
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v1

    .line 2026
    .local v1, "primaryFe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    if-eqz v1, :cond_51

    .line 2027
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->decreFrontendNum(Landroid/util/SparseIntArray;I)V

    .line 2031
    .end local v1    # "primaryFe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    :cond_51
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseFrontend()V

    .line 2032
    return-void
.end method

.method private decreFrontendNum(Landroid/util/SparseIntArray;I)V
    .registers 5
    .param p1, "targetNums"    # Landroid/util/SparseIntArray;
    .param p2, "frontendType"    # I

    .line 1802
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1803
    .local v1, "num":I
    if-eq v1, v0, :cond_c

    .line 1804
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1806
    :cond_c
    return-void
.end method

.method private dumpMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .registers 9
    .param p2, "headline"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "pw"    # Landroid/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/IndentingPrintWriter;",
            ")V"
        }
    .end annotation

    .line 1830
    .local p1, "targetMap":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz p1, :cond_48

    .line 1831
    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1832
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1833
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1834
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {p4, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1836
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_10

    .line 1837
    :cond_42
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1838
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1840
    :cond_48
    return-void
.end method

.method private dumpSIA(Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .registers 8
    .param p1, "array"    # Landroid/util/SparseIntArray;
    .param p2, "headline"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 1844
    if-eqz p1, :cond_3d

    .line 1845
    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1847
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 1848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {p4, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1847
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1851
    .end local v0    # "i":I
    :cond_37
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1852
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1854
    :cond_3d
    return-void
.end method

.method private enforceDescramblerAccessPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "apiName"    # Ljava/lang/String;

    .line 2095
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TunerResourceManagerService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_TV_DESCRAMBLER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    return-void
.end method

.method private enforceTrmAccessPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "apiName"    # Ljava/lang/String;

    .line 2085
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TunerResourceManagerService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.TUNER_RESOURCE_ACCESS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    return-void
.end method

.method private enforceTunerAccessPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "apiName"    # Ljava/lang/String;

    .line 2090
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TunerResourceManagerService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_TV_TUNER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    return-void
.end method

.method private generateResourceHandle(II)I
    .registers 6
    .param p1, "resourceType"    # I
    .param p2, "resourceId"    # I

    .line 2063
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private getElapsedTime(J)J
    .registers 9
    .param p1, "begin"    # J

    .line 1342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1344
    .local v0, "now":J
    cmp-long v2, v0, p1

    if-ltz v2, :cond_b

    .line 1345
    sub-long v2, v0, p1

    .local v2, "elapsed":J
    goto :goto_1d

    .line 1347
    .end local v2    # "elapsed":J
    :cond_b
    const-wide v2, 0x7fffffffffffffffL

    sub-long/2addr v2, p1

    add-long/2addr v2, v0

    .line 1348
    .restart local v2    # "elapsed":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1d

    .line 1349
    const-wide v2, 0x7fffffffffffffffL

    .line 1352
    :cond_1d
    :goto_1d
    return-wide v2
.end method

.method private getFrontendHighestClientPriority(I)I
    .registers 7
    .param p1, "clientId"    # I

    .line 1724
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1725
    .local v0, "ownerClient":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    if-nez v0, :cond_8

    .line 1726
    const/4 v1, 0x0

    return v1

    .line 1730
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v1

    .line 1733
    .local v1, "highestPriority":I
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1734
    .local v3, "shareeId":I
    invoke-direct {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v4

    .line 1735
    .local v4, "priority":I
    if-le v4, v1, :cond_2b

    .line 1736
    move v1, v4

    .line 1738
    .end local v3    # "shareeId":I
    .end local v4    # "priority":I
    :cond_2b
    goto :goto_14

    .line 1739
    :cond_2c
    return v1
.end method

.method private getMaxNumberOfFrontendsInternal(I)I
    .registers 6
    .param p1, "frontendType"    # I

    .line 1767
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1768
    .local v0, "existingNum":I
    if-ne v0, v1, :cond_22

    .line 1769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existingNum is -1 for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TunerResourceManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    return v1

    .line 1772
    :cond_22
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1773
    .local v2, "maxUsableNum":I
    if-ne v2, v1, :cond_2b

    .line 1774
    return v0

    .line 1776
    :cond_2b
    return v2
.end method

.method private increFrontendNum(Landroid/util/SparseIntArray;I)V
    .registers 5
    .param p1, "targetNums"    # Landroid/util/SparseIntArray;
    .param p2, "frontendType"    # I

    .line 1793
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1794
    .local v1, "num":I
    if-ne v1, v0, :cond_c

    .line 1795
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_11

    .line 1797
    :cond_c
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1799
    :goto_11
    return-void
.end method

.method private isFrontendMaxNumUseReached(I)Z
    .registers 6
    .param p1, "frontendType"    # I

    .line 1781
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1782
    .local v0, "maxUsableNum":I
    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    .line 1783
    return v2

    .line 1785
    :cond_b
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1786
    .local v3, "useNum":I
    if-ne v3, v1, :cond_14

    .line 1787
    const/4 v3, 0x0

    .line 1789
    :cond_14
    if-lt v3, v0, :cond_17

    const/4 v2, 0x1

    :cond_17
    return v2
.end method

.method private lockForTunerApiLock(IJLjava/lang/String;)Z
    .registers 10
    .param p1, "clientId"    # I
    .param p2, "timeoutMS"    # J
    .param p4, "callerFunction"    # Ljava/lang/String;

    .line 1357
    const-string v0, "TunerResourceManagerService"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p2, p3, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1358
    const/4 v0, 0x1

    return v0

    .line 1360
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAILED to lock mLockForTRMSLock in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clientId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timeoutMS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTunerApiLockHolder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_45} :catch_46

    .line 1363
    return v1

    .line 1365
    :catch_46
    move-exception v2

    .line 1366
    .local v2, "ie":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception thrown in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1368
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1370
    :cond_74
    return v1
.end method

.method private releaseLockInternal(IJZZ)Z
    .registers 13
    .param p1, "clientId"    # I
    .param p2, "timeoutMS"    # J
    .param p4, "ignoreNestedCount"    # Z
    .param p5, "suppressError"    # Z

    .line 1468
    const-string/jumbo v0, "releaseLockInternal()"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->lockForTunerApiLock(IJLjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1469
    return v1

    .line 1473
    :cond_b
    :try_start_b
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_12d

    const/4 v2, -0x1

    const-string/jumbo v3, "releaseLockInternal("

    const-string v4, "TunerResourceManagerService"

    const-string v5, ", "

    if-ne v0, p1, :cond_b9

    .line 1475
    :try_start_17
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 1476
    if-nez p4, :cond_65

    if-gtz v0, :cond_22

    goto :goto_65

    .line 1488
    :cond_22
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_aa

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - NOT signaling because nested count is not zero ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 1477
    :cond_65
    :goto_65
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_9d

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUCCESS:releaseLockInternal("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") - signaling!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_9d
    iput v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    .line 1484
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    .line 1485
    iput v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 1486
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_aa
    .catchall {:try_start_17 .. :try_end_aa} :catchall_12d

    .line 1495
    :cond_aa
    :goto_aa
    nop

    .line 1515
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 1516
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1495
    :cond_b8
    return v6

    .line 1496
    :cond_b9
    if-ne v0, v2, :cond_ee

    .line 1497
    if-nez p5, :cond_df

    .line 1498
    :try_start_bd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") - called while there is no current holder"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catchall {:try_start_bd .. :try_end_df} :catchall_12d

    .line 1503
    :cond_df
    nop

    .line 1515
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 1516
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1503
    :cond_ed
    return v1

    .line 1505
    :cond_ee
    if-nez p5, :cond_11e

    .line 1506
    :try_start_f0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") - called while someone else:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "is the current holder"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catchall {:try_start_f0 .. :try_end_11e} :catchall_12d

    .line 1512
    :cond_11e
    nop

    .line 1515
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 1516
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1512
    :cond_12c
    return v1

    .line 1515
    :catchall_12d
    move-exception v0

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 1516
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1518
    :cond_13b
    throw v0
.end method

.method private releaseLowerPriorityClientCasResources(I)V
    .registers 2
    .param p1, "releasingCasResourceNum"    # I

    .line 1981
    return-void
.end method

.method private removeCasResource(I)V
    .registers 6
    .param p1, "removingId"    # I

    .line 1956
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 1957
    .local v0, "cas":Lcom/android/server/tv/tunerresourcemanager/CasResource;
    if-nez v0, :cond_7

    .line 1958
    return-void

    .line 1960
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1961
    .local v2, "ownerId":I
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCas()V

    .line 1962
    .end local v2    # "ownerId":I
    goto :goto_f

    .line 1963
    :cond_27
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    return-void
.end method

.method private removeCiCamResource(I)V
    .registers 6
    .param p1, "removingId"    # I

    .line 1967
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    .line 1968
    .local v0, "ciCam":Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
    if-nez v0, :cond_7

    .line 1969
    return-void

    .line 1971
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1972
    .local v2, "ownerId":I
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCiCam()V

    .line 1973
    .end local v2    # "ownerId":I
    goto :goto_f

    .line 1974
    :cond_27
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    return-void
.end method

.method private removeClientProfile(I)V
    .registers 5
    .param p1, "clientId"    # I

    .line 1996
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

    .line 1997
    .local v1, "shareOwnerId":I
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1998
    .end local v1    # "shareOwnerId":I
    goto :goto_c

    .line 1999
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 2000
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    return-void
.end method

.method private removeFrontendResource(I)V
    .registers 7
    .param p1, "removingHandle"    # I

    .line 1877
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    .line 1878
    .local v0, "fe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    if-nez v0, :cond_7

    .line 1879
    return-void

    .line 1881
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1882
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getOwnerClientId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 1883
    .local v1, "ownerClient":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
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

    .line 1884
    .local v3, "shareOwnerId":I
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1885
    .end local v3    # "shareOwnerId":I
    goto :goto_1d

    .line 1886
    :cond_35
    invoke-direct {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1888
    .end local v1    # "ownerClient":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
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

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1889
    .local v2, "excGroupmemberFeHandle":I
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    .line 1890
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getHandle()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->removeExclusiveGroupMemberFeId(I)V

    .line 1891
    .end local v2    # "excGroupmemberFeHandle":I
    goto :goto_40

    .line 1892
    :cond_5c
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->decreFrontendNum(Landroid/util/SparseIntArray;I)V

    .line 1893
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1894
    return-void
.end method

.method private removeLnbResource(I)V
    .registers 5
    .param p1, "removingHandle"    # I

    .line 1913
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v0

    .line 1914
    .local v0, "lnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    if-nez v0, :cond_7

    .line 1915
    return-void

    .line 1917
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1918
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    .line 1920
    :cond_10
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    return-void
.end method

.method private replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .registers 6
    .param p1, "srcCounts"    # Landroid/util/SparseIntArray;
    .param p2, "dstCounts"    # Landroid/util/SparseIntArray;

    .line 1819
    if-eqz p2, :cond_1c

    .line 1820
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    .line 1821
    if-eqz p1, :cond_1c

    .line 1822
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 1823
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1822
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1827
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method private replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/FrontendResource;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/FrontendResource;",
            ">;)V"
        }
    .end annotation

    .line 1810
    .local p1, "srcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/tv/tunerresourcemanager/FrontendResource;>;"
    .local p2, "dstMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/tv/tunerresourcemanager/FrontendResource;>;"
    if-eqz p2, :cond_10

    .line 1811
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 1812
    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 1813
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1816
    :cond_10
    return-void
.end method

.method private setMaxNumberOfFrontendsInternal(II)Z
    .registers 6
    .param p1, "frontendType"    # I
    .param p2, "maxUsableNum"    # I

    .line 1754
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1755
    .local v0, "usedNum":I
    if-eq v0, v1, :cond_3b

    if-gt v0, p2, :cond_c

    goto :goto_3b

    .line 1759
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "max number of frontend for frontendType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be set to a value lower than the current usage count. (requested max num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current usage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TunerResourceManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    const/4 v1, 0x0

    return v1

    .line 1756
    :cond_3b
    :goto_3b
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1757
    const/4 v1, 0x1

    return v1
.end method

.method private transferFeCiCamOwner(II)Z
    .registers 8
    .param p1, "currentOwnerId"    # I
    .param p2, "newOwnerId"    # I

    .line 1030
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1031
    .local v0, "currentOwnerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 1034
    .local v1, "newOwnerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCiCamId()I

    move-result v2

    .line 1035
    .local v2, "ciCamId":I
    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useCiCam(I)V

    .line 1038
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v3

    .line 1039
    .local v3, "ciCam":Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
    invoke-virtual {v3, p2}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->setOwner(I)V

    .line 1042
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCiCam()V

    .line 1043
    const/4 v4, 0x1

    return v4
.end method

.method private transferFeOwner(II)Z
    .registers 9
    .param p1, "currentOwnerId"    # I
    .param p2, "newOwnerId"    # I

    .line 1006
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1007
    .local v0, "currentOwnerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 1009
    .local v1, "newOwnerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->shareFrontend(I)V

    .line 1010
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->stopSharingFrontend(I)V

    .line 1011
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1012
    .local v3, "inUseHandle":I
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->setOwner(I)V

    .line 1013
    .end local v3    # "inUseHandle":I
    goto :goto_16

    .line 1015
    :cond_2e
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPrimaryFrontend()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPrimaryFrontend(I)V

    .line 1016
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPrimaryFrontend(I)V

    .line 1018
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1019
    .restart local v3    # "inUseHandle":I
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getOwnerClientId()I

    move-result v4

    .line 1020
    .local v4, "ownerId":I
    if-eq v4, p2, :cond_88

    .line 1021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "something is wrong in transferFeOwner:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "TunerResourceManagerService"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 v2, 0x0

    return v2

    .line 1025
    .end local v3    # "inUseHandle":I
    .end local v4    # "ownerId":I
    :cond_88
    goto :goto_41

    .line 1026
    :cond_89
    const/4 v2, 0x1

    return v2
.end method

.method private transferLnbOwner(II)Z
    .registers 9
    .param p1, "currentOwnerId"    # I
    .param p2, "newOwnerId"    # I

    .line 1047
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1048
    .local v0, "currentOwnerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 1050
    .local v1, "newOwnerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1051
    .local v2, "inUseLnbHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseLnbHandles()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1053
    .local v4, "lnbHandle":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useLnb(I)V

    .line 1056
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v5

    .line 1057
    .local v5, "lnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    invoke-virtual {v5, p2}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->setOwner(I)V

    .line 1059
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1060
    .end local v4    # "lnbHandle":Ljava/lang/Integer;
    .end local v5    # "lnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    goto :goto_15

    .line 1063
    :cond_37
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1064
    .restart local v4    # "lnbHandle":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseLnb(I)V

    .line 1065
    .end local v4    # "lnbHandle":Ljava/lang/Integer;
    goto :goto_3b

    .line 1067
    :cond_4f
    const/4 v3, 0x1

    return v3
.end method

.method private updateAndGetOwnerClientPriority(I)I
    .registers 4
    .param p1, "clientId"    # I

    .line 1710
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1711
    .local v0, "profile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1712
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v1

    return v1
.end method

.method private updateCasClientMappingOnNewGrant(II)V
    .registers 5
    .param p1, "grantingId"    # I
    .param p2, "ownerClientId"    # I

    .line 1676
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 1677
    .local v0, "grantingCas":Lcom/android/server/tv/tunerresourcemanager/CasResource;
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 1678
    .local v1, "ownerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 1679
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useCas(I)V

    .line 1680
    return-void
.end method

.method private updateCasClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V
    .registers 4
    .param p1, "releasingCas"    # Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .param p2, "ownerClientId"    # I

    .line 1691
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1692
    .local v0, "ownerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 1693
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCas()V

    .line 1694
    return-void
.end method

.method private updateCiCamClientMappingOnNewGrant(II)V
    .registers 5
    .param p1, "grantingId"    # I
    .param p2, "ownerClientId"    # I

    .line 1683
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    .line 1684
    .local v0, "grantingCiCam":Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 1685
    .local v1, "ownerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->setOwner(I)V

    .line 1686
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useCiCam(I)V

    .line 1687
    return-void
.end method

.method private updateCiCamClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V
    .registers 4
    .param p1, "releasingCiCam"    # Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
    .param p2, "ownerClientId"    # I

    .line 1698
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1699
    .local v0, "ownerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->removeOwner(I)V

    .line 1700
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCiCam()V

    .line 1701
    return-void
.end method

.method private updateFrontendClientMappingOnNewGrant(II)V
    .registers 8
    .param p1, "grantingHandle"    # I
    .param p2, "ownerClientId"    # I

    .line 1650
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    .line 1651
    .local v0, "grantingFrontend":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 1652
    .local v1, "ownerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->setOwner(I)V

    .line 1653
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->increFrontendNum(Landroid/util/SparseIntArray;I)V

    .line 1654
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useFrontend(I)V

    .line 1655
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1656
    .local v3, "exclusiveGroupMember":I
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->setOwner(I)V

    .line 1657
    invoke-virtual {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useFrontend(I)V

    .line 1658
    .end local v3    # "exclusiveGroupMember":I
    goto :goto_1f

    .line 1659
    :cond_3a
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPrimaryFrontend(I)V

    .line 1660
    return-void
.end method

.method private updateLnbClientMappingOnNewGrant(II)V
    .registers 5
    .param p1, "grantingHandle"    # I
    .param p2, "ownerClientId"    # I

    .line 1663
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v0

    .line 1664
    .local v0, "grantingLnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 1665
    .local v1, "ownerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->setOwner(I)V

    .line 1666
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useLnb(I)V

    .line 1667
    return-void
.end method

.method private updateLnbClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .registers 4
    .param p1, "releasingLnb"    # Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 1670
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getOwnerClientId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1671
    .local v0, "ownerProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->removeOwner()V

    .line 1672
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseLnb(I)V

    .line 1673
    return-void
.end method

.method private validateResourceHandle(II)Z
    .registers 4
    .param p1, "resourceType"    # I
    .param p2, "resourceHandle"    # I

    .line 2077
    const/4 v0, -0x1

    if-eq p2, v0, :cond_d

    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x18

    if-eq v0, p1, :cond_b

    goto :goto_d

    .line 2081
    :cond_b
    const/4 v0, 0x1

    return v0

    .line 2079
    :cond_d
    :goto_d
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 651
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 652
    const-string v0, "TunerResourceManagerService"

    const-string v1, "Native media resource manager service has died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_b
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    const/4 v1, 0x0

    :try_start_f
    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    .line 656
    monitor-exit v0

    .line 657
    return-void

    .line 656
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw v1
.end method

.method protected checkClientExists(I)Z
    .registers 4
    .param p1, "clientId"    # I

    .line 2058
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected checkIsForeground(I)Z
    .registers 8
    .param p1, "pid"    # I

    .line 1633
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1634
    return v1

    .line 1636
    :cond_6
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1637
    .local v0, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v0, :cond_d

    .line 1638
    return v1

    .line 1640
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1641
    .local v3, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_29

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_29

    .line 1643
    const/4 v1, 0x1

    return v1

    .line 1645
    .end local v3    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_29
    goto :goto_11

    .line 1646
    :cond_2a
    return v1
.end method

.method protected clearResourceMapInternal(I)V
    .registers 4
    .param p1, "resourceType"    # I

    .line 787
    packed-switch p1, :pswitch_data_1c

    goto :goto_1a

    .line 789
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 790
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-direct {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 791
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-direct {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 792
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-direct {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 793
    nop

    .line 798
    :goto_1a
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method protected clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .registers 5
    .param p1, "profile"    # Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    .line 1318
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->isPriorityOverwritten()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1320
    return-void

    .line 1322
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v0

    .line 1323
    .local v0, "pid":I
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v1

    .line 1324
    .local v1, "currentIsForeground":Z
    nop

    .line 1325
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getUseCase()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result v2

    .line 1324
    invoke-virtual {p1, v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPriority(I)V

    .line 1326
    return-void
.end method

.method protected getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .registers 4
    .param p1, "systemId"    # I

    .line 1926
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;

    return-object v0
.end method

.method protected getCasResources()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CasResource;",
            ">;"
        }
    .end annotation

    .line 1937
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    return-object v0
.end method

.method protected getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
    .registers 4
    .param p1, "ciCamId"    # I

    .line 1932
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    return-object v0
.end method

.method protected getCiCamResources()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CiCamResource;",
            ">;"
        }
    .end annotation

    .line 1942
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    return-object v0
.end method

.method protected getClientPriority(IZ)I
    .registers 5
    .param p1, "useCase"    # I
    .param p2, "isForeground"    # Z

    .line 1620
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClientPriority useCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :cond_2c
    if-eqz p2, :cond_35

    .line 1626
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->getForegroundPriority(I)I

    move-result v0

    return v0

    .line 1628
    :cond_35
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->getBackgroundPriority(I)I

    move-result v0

    return v0
.end method

.method protected getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    .registers 4
    .param p1, "clientId"    # I

    .line 1986
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    return-object v0
.end method

.method protected getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    .registers 4
    .param p1, "frontendHandle"    # I

    .line 1745
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    return-object v0
.end method

.method protected getFrontendResources()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/FrontendResource;",
            ">;"
        }
    .end annotation

    .line 1750
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    return-object v0
.end method

.method protected getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    .registers 4
    .param p1, "lnbHandle"    # I

    .line 1899
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    return-object v0
.end method

.method protected getLnbResources()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/LnbResource;",
            ">;"
        }
    .end annotation

    .line 1904
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    return-object v0
.end method

.method protected getResourceIdFromHandle(I)I
    .registers 3
    .param p1, "resourceHandle"    # I

    .line 2070
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 2071
    return p1

    .line 2073
    :cond_4
    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method protected hasUnusedFrontendInternal(I)Z
    .registers 5
    .param p1, "frontendType"    # I

    .line 740
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 741
    .local v1, "fr":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v2

    if-ne v2, p1, :cond_26

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->isInUse()Z

    move-result v2

    if-nez v2, :cond_26

    .line 742
    const/4 v0, 0x1

    return v0

    .line 744
    .end local v1    # "fr":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    :cond_26
    goto :goto_c

    .line 745
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method protected isHigherPriorityInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .registers 9
    .param p1, "challengerProfile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .param p2, "holderProfile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    .line 1238
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_2c

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHigherPriority(challengerProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", holderProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_2c
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    const/4 v2, 0x1

    if-nez v0, :cond_37

    .line 1244
    const-string v0, "TvInputManager is null. Can\'t compare the priority."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    return v2

    .line 1250
    :cond_37
    iget-object v0, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-nez v0, :cond_40

    .line 1251
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    goto :goto_48

    .line 1252
    :cond_40
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v0

    :goto_48
    nop

    .line 1253
    .local v0, "challengerPid":I
    iget-object v1, p2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-nez v1, :cond_52

    .line 1254
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    goto :goto_5a

    .line 1255
    :cond_52
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v3, p2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v1

    :goto_5a
    nop

    .line 1257
    .local v1, "holderPid":I
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 1258
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v4

    .line 1257
    invoke-virtual {p0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result v3

    .line 1259
    .local v3, "challengerPriority":I
    iget v4, p2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result v4

    .line 1260
    .local v4, "holderPriority":I
    if-le v3, v4, :cond_72

    goto :goto_73

    :cond_72
    const/4 v2, 0x0

    :goto_73
    return v2
.end method

.method protected isLowestPriorityInternal(II)Z
    .registers 9
    .param p1, "clientId"    # I
    .param p2, "frontendType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 752
    .local v0, "requestClient":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 753
    return v1

    .line 755
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 756
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    .line 759
    .local v2, "clientPriority":I
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 760
    .local v4, "fr":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v5

    if-ne v5, p2, :cond_3f

    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->isInUse()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 761
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getOwnerClientId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v5

    .line 764
    .local v5, "priority":I
    if-le v2, v5, :cond_3f

    .line 765
    const/4 v1, 0x0

    return v1

    .line 768
    .end local v4    # "fr":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    .end local v5    # "priority":I
    :cond_3f
    goto :goto_1b

    .line 769
    :cond_40
    return v1
.end method

.method public onStart()V
    .registers 2

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->onStart(Z)V

    .line 132
    return-void
.end method

.method protected onStart(Z)V
    .registers 6
    .param p1, "isForTesting"    # Z

    .line 136
    if-nez p1, :cond_e

    .line 137
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService-IA;)V

    const-string/jumbo v1, "tv_tuner_resource_mgr"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 139
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tv_input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 140
    nop

    .line 141
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 142
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->parse()V

    .line 144
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-nez v0, :cond_59

    .line 145
    const-string/jumbo v0, "media.resource_manager"

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 146
    .local v0, "mediaResourceManagerBinder":Landroid/os/IBinder;
    const-string v1, "TunerResourceManagerService"

    if-nez v0, :cond_46

    .line 147
    const-string v2, "Resource Manager Service not available."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 151
    :cond_46
    const/4 v2, 0x0

    :try_start_47
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_52

    .line 155
    nop

    .line 156
    invoke-static {v0}, Landroid/media/IResourceManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    goto :goto_59

    .line 152
    :catch_52
    move-exception v2

    .line 153
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Could not link to death of native resource manager service."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 159
    .end local v0    # "mediaResourceManagerBinder":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_59
    :goto_59
    return-void
.end method

.method protected reclaimResource(II)Z
    .registers 13
    .param p1, "reclaimingClientId"    # I
    .param p2, "resourceType"    # I

    .line 1584
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 1588
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1590
    .local v0, "profile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 1591
    return v1

    .line 1593
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v2

    .line 1594
    .local v2, "shareFeClientIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "Failed to reclaim resources on client "

    const-string v7, "TunerResourceManagerService"

    if-eqz v4, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1596
    .local v4, "clientId":I
    :try_start_28
    iget-object v8, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    invoke-virtual {v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->getListener()Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    move-result-object v8

    invoke-interface {v8}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->onReclaimResources()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3b} :catch_44

    .line 1600
    nop

    .line 1601
    invoke-virtual {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1602
    .end local v4    # "clientId":I
    goto :goto_13

    .line 1597
    .restart local v4    # "clientId":I
    :catch_44
    move-exception v1

    .line 1598
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1599
    return v5

    .line 1604
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "clientId":I
    :cond_5a
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_7e

    .line 1605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reclaiming resources because higher priority client request resource type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_7e
    :try_start_7e
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->getListener()Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->onReclaimResources()V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_91} :catch_96

    .line 1613
    nop

    .line 1614
    invoke-direct {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1615
    return v1

    .line 1610
    :catch_96
    move-exception v1

    .line 1611
    .restart local v1    # "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1612
    return v5
.end method

.method protected registerClientProfileInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    .registers 10
    .param p1, "profile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .param p2, "listener"    # Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
    .param p3, "clientId"    # [I

    .line 662
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_23

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerClientProfile(clientProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_23
    const/4 v0, -0x1

    const/4 v2, 0x0

    aput v0, p3, v2

    .line 667
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_31

    .line 668
    const-string v0, "TvInputManager is null. Can\'t register client profile."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void

    .line 672
    :cond_31
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    aput v0, p3, v2

    .line 674
    iget-object v0, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-nez v0, :cond_42

    .line 675
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    goto :goto_4a

    .line 676
    :cond_42
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v0

    :goto_4a
    nop

    .line 679
    .local v0, "pid":I
    iget-object v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-eqz v3, :cond_72

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-eqz v3, :cond_72

    .line 681
    :try_start_53
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-interface {v3, v4, v0}, Landroid/media/IResourceManagerService;->overridePid(II)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5a} :catch_5b

    .line 685
    goto :goto_72

    .line 682
    :catch_5b
    move-exception v3

    .line 683
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not overridePid in resourceManagerSercice, remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_72
    :goto_72
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    aget v3, p3, v2

    invoke-direct {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;-><init>(I)V

    iget-object v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 689
    invoke-virtual {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->tvInputSessionId(Ljava/lang/String;)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    move-result-object v1

    iget v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 690
    invoke-virtual {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->useCase(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    move-result-object v1

    .line 691
    invoke-virtual {v1, v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->processId(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    move-result-object v1

    .line 692
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 693
    .local v1, "clientProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 694
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result v3

    .line 693
    invoke-virtual {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPriority(I)V

    .line 696
    aget v2, p3, v2

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addClientProfile(ILcom/android/server/tv/tunerresourcemanager/ClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V

    .line 697
    return-void
.end method

.method protected releaseCasSessionInternal(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V
    .registers 5
    .param p1, "cas"    # Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .param p2, "ownerClientId"    # I

    .line 1290
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseCasSession(sessionResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_27
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V

    .line 1294
    return-void
.end method

.method protected releaseCiCamInternal(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V
    .registers 5
    .param p1, "ciCam"    # Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
    .param p2, "ownerClientId"    # I

    .line 1298
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseCiCamInternal(ciCamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getCiCamId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_27
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCiCamClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V

    .line 1302
    return-void
.end method

.method protected releaseFrontendInternal(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;I)V
    .registers 7
    .param p1, "fe"    # Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    .param p2, "clientId"    # I

    .line 1265
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_31

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseFrontend(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getOwnerClientId()I

    move-result v0

    if-ne p2, v0, :cond_5e

    .line 1269
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getOwnerClientId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1270
    .local v0, "ownerClient":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    if-eqz v0, :cond_5e

    .line 1271
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1272
    .local v2, "shareOwnerId":I
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    .line 1274
    .end local v2    # "shareOwnerId":I
    goto :goto_49

    .line 1277
    .end local v0    # "ownerClient":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    :cond_5e
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1278
    return-void
.end method

.method protected releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .registers 4
    .param p1, "lnb"    # Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 1282
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseLnb(lnbHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_27
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateLnbClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    .line 1286
    return-void
.end method

.method protected requestCasSessionInternal(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z
    .registers 14
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    .param p2, "casSessionHandle"    # [I

    .line 1139
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCasSession(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_23
    iget v0, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 1144
    .local v0, "cas":Lcom/android/server/tv/tunerresourcemanager/CasResource;
    if-nez v0, :cond_40

    .line 1145
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    iget v2, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    invoke-direct {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(I)V

    const v2, 0x7fffffff

    .line 1146
    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    move-result-object v1

    .line 1147
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 1148
    invoke-direct {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCasResource(Lcom/android/server/tv/tunerresourcemanager/CasResource;)V

    .line 1150
    :cond_40
    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, p2, v1

    .line 1151
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    .line 1152
    .local v3, "requestClient":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1153
    const/4 v4, -0x1

    .line 1155
    .local v4, "lowestPriorityOwnerId":I
    const/16 v5, 0x3e9

    .line 1156
    .local v5, "currentLowestPriority":I
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->isFullyUsed()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-nez v6, :cond_6b

    .line 1157
    nop

    .line 1158
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v2

    .line 1157
    invoke-direct {p0, v8, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v2

    aput v2, p2, v1

    .line 1159
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    iget v2, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasClientMappingOnNewGrant(II)V

    .line 1160
    return v7

    .line 1162
    :cond_6b
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_73
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1164
    .local v9, "ownerId":I
    invoke-direct {p0, v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v10

    .line 1165
    .local v10, "priority":I
    if-le v5, v10, :cond_8b

    .line 1166
    move v4, v9

    .line 1167
    move v5, v10

    .line 1169
    .end local v9    # "ownerId":I
    .end local v10    # "priority":I
    :cond_8b
    goto :goto_73

    .line 1173
    :cond_8c
    if-le v4, v2, :cond_ae

    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    if-le v2, v5, :cond_ae

    .line 1174
    invoke-virtual {p0, v4, v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 1176
    return v1

    .line 1178
    :cond_9b
    nop

    .line 1179
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v2

    .line 1178
    invoke-direct {p0, v8, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v2

    aput v2, p2, v1

    .line 1180
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    iget v2, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasClientMappingOnNewGrant(II)V

    .line 1181
    return v7

    .line 1183
    :cond_ae
    return v1
.end method

.method protected requestCiCamInternal(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[I)Z
    .registers 14
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;
    .param p2, "ciCamHandle"    # [I

    .line 1188
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCiCamInternal(TunerCiCamRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_23
    iget v0, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    .line 1193
    .local v0, "ciCam":Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
    if-nez v0, :cond_40

    .line 1194
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    iget v2, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    invoke-direct {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;-><init>(I)V

    const v2, 0x7fffffff

    .line 1195
    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    move-result-object v1

    .line 1196
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    .line 1197
    invoke-direct {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCiCamResource(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;)V

    .line 1199
    :cond_40
    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, p2, v1

    .line 1200
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    .line 1201
    .local v3, "requestClient":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1202
    const/4 v4, -0x1

    .line 1204
    .local v4, "lowestPriorityOwnerId":I
    const/16 v5, 0x3e9

    .line 1205
    .local v5, "currentLowestPriority":I
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->isFullyUsed()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x5

    if-nez v6, :cond_6b

    .line 1206
    nop

    .line 1207
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getCiCamId()I

    move-result v2

    .line 1206
    invoke-direct {p0, v8, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v2

    aput v2, p2, v1

    .line 1208
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    iget v2, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCiCamClientMappingOnNewGrant(II)V

    .line 1209
    return v7

    .line 1211
    :cond_6b
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_73
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1213
    .local v9, "ownerId":I
    invoke-direct {p0, v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v10

    .line 1214
    .local v10, "priority":I
    if-le v5, v10, :cond_8b

    .line 1215
    move v4, v9

    .line 1216
    move v5, v10

    .line 1218
    .end local v9    # "ownerId":I
    .end local v10    # "priority":I
    :cond_8b
    goto :goto_73

    .line 1222
    :cond_8c
    if-le v4, v2, :cond_ae

    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    if-le v2, v5, :cond_ae

    .line 1223
    invoke-virtual {p0, v4, v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 1225
    return v1

    .line 1227
    :cond_9b
    nop

    .line 1228
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getCiCamId()I

    move-result v2

    .line 1227
    invoke-direct {p0, v8, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v2

    aput v2, p2, v1

    .line 1229
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    iget v2, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCiCamClientMappingOnNewGrant(II)V

    .line 1230
    return v7

    .line 1232
    :cond_ae
    return v1
.end method

.method protected requestDemuxInternal(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z
    .registers 6
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;
    .param p2, "demuxHandle"    # [I

    .line 1306
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestDemux(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_23
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v2

    aput v2, p2, v1

    .line 1311
    return v0
.end method

.method protected requestDescramblerInternal(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z
    .registers 5
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    .param p2, "descramblerHandle"    # [I

    .line 1331
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestDescrambler(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_23
    const/4 v0, 0x2

    .line 1336
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v0

    aput v0, p2, v1

    .line 1337
    const/4 v0, 0x1

    return v0
.end method

.method protected requestFrontendInternal(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z
    .registers 13
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    .param p2, "frontendHandle"    # [I

    .line 924
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestFrontend(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_23
    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p2, v0

    .line 929
    iget v2, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v2

    .line 931
    .local v2, "requestClient":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    if-nez v2, :cond_30

    .line 932
    return v0

    .line 934
    :cond_30
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 935
    const/4 v3, -0x1

    .line 936
    .local v3, "grantingFrontendHandle":I
    const/4 v4, -0x1

    .line 938
    .local v4, "inUseLowestPriorityFrHandle":I
    const/16 v5, 0x3e9

    .line 939
    .local v5, "currentLowestPriority":I
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_43
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 940
    .local v7, "fr":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v8

    iget v9, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    if-ne v8, v9, :cond_8d

    .line 941
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->isInUse()Z

    move-result v8

    if-nez v8, :cond_7c

    .line 944
    iget v8, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    invoke-direct {p0, v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->isFrontendMaxNumUseReached(I)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 945
    goto :goto_43

    .line 948
    :cond_66
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_75

    .line 949
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getHandle()I

    move-result v3

    .line 950
    goto :goto_8e

    .line 951
    :cond_75
    if-ne v3, v1, :cond_8d

    .line 955
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getHandle()I

    move-result v3

    goto :goto_8d

    .line 957
    :cond_7c
    if-ne v3, v1, :cond_8d

    .line 960
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getOwnerClientId()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendHighestClientPriority(I)I

    move-result v8

    .line 961
    .local v8, "priority":I
    if-le v5, v8, :cond_8d

    .line 962
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getHandle()I

    move-result v4

    .line 963
    move v5, v8

    .line 967
    .end local v7    # "fr":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    .end local v8    # "priority":I
    :cond_8d
    :goto_8d
    goto :goto_43

    .line 970
    :cond_8e
    :goto_8e
    const/4 v6, 0x1

    if-eq v3, v1, :cond_99

    .line 971
    aput v3, p2, v0

    .line 972
    iget v0, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-direct {p0, v3, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateFrontendClientMappingOnNewGrant(II)V

    .line 973
    return v6

    .line 978
    :cond_99
    if-eq v4, v1, :cond_b9

    .line 979
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v1

    if-le v1, v5, :cond_b9

    .line 980
    nop

    .line 981
    invoke-virtual {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getOwnerClientId()I

    move-result v1

    .line 980
    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v1

    if-nez v1, :cond_b1

    .line 983
    return v0

    .line 985
    :cond_b1
    aput v4, p2, v0

    .line 986
    iget v0, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-direct {p0, v4, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateFrontendClientMappingOnNewGrant(II)V

    .line 988
    return v6

    .line 991
    :cond_b9
    return v0
.end method

.method protected requestLnbInternal(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z
    .registers 12
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;
    .param p2, "lnbHandle"    # [I

    .line 1087
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestLnb(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_23
    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p2, v0

    .line 1092
    iget v2, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v2

    .line 1093
    .local v2, "requestClient":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1094
    const/4 v3, -0x1

    .line 1095
    .local v3, "grantingLnbHandle":I
    const/4 v4, -0x1

    .line 1097
    .local v4, "inUseLowestPriorityLnbHandle":I
    const/16 v5, 0x3e9

    .line 1098
    .local v5, "currentLowestPriority":I
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResources()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_40
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_67

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 1099
    .local v7, "lnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->isInUse()Z

    move-result v8

    if-nez v8, :cond_57

    .line 1101
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getHandle()I

    move-result v3

    .line 1102
    goto :goto_67

    .line 1106
    :cond_57
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getOwnerClientId()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v8

    .line 1107
    .local v8, "priority":I
    if-le v5, v8, :cond_66

    .line 1108
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getHandle()I

    move-result v4

    .line 1109
    move v5, v8

    .line 1112
    .end local v7    # "lnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    .end local v8    # "priority":I
    :cond_66
    goto :goto_40

    .line 1115
    :cond_67
    :goto_67
    const/4 v6, 0x1

    if-le v3, v1, :cond_72

    .line 1116
    aput v3, p2, v0

    .line 1117
    iget v0, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-direct {p0, v3, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateLnbClientMappingOnNewGrant(II)V

    .line 1118
    return v6

    .line 1123
    :cond_72
    if-le v4, v1, :cond_92

    .line 1124
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v1

    if-le v1, v5, :cond_92

    .line 1125
    invoke-virtual {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getOwnerClientId()I

    move-result v1

    const/4 v7, 0x3

    invoke-virtual {p0, v1, v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 1127
    return v0

    .line 1129
    :cond_8a
    aput v4, p2, v0

    .line 1130
    iget v0, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-direct {p0, v4, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateLnbClientMappingOnNewGrant(II)V

    .line 1131
    return v6

    .line 1134
    :cond_92
    return v0
.end method

.method protected restoreResourceMapInternal(I)V
    .registers 4
    .param p1, "resourceType"    # I

    .line 801
    packed-switch p1, :pswitch_data_22

    goto :goto_21

    .line 803
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 804
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 805
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 806
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 807
    nop

    .line 812
    :goto_21
    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method protected setFrontendInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .registers 7
    .param p1, "infos"    # [Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;

    .line 816
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_1c

    .line 817
    const-string/jumbo v0, "updateFrontendInfo:"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    .line 819
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 826
    .end local v0    # "i":I
    :cond_1c
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 829
    .local v0, "updatingFrontendHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    array-length v3, p1

    if-ge v2, v3, :cond_8a

    .line 830
    aget-object v3, p1, v2

    iget v3, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:I

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    if-eqz v3, :cond_67

    .line 831
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_5b

    .line 832
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frontend handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v2

    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_5b
    aget-object v3, p1, v2

    iget v3, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_87

    .line 837
    :cond_67
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    aget-object v4, p1, v2

    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:I

    invoke-direct {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;-><init>(I)V

    aget-object v4, p1, v2

    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->type:I

    .line 838
    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->type(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    move-result-object v3

    aget-object v4, p1, v2

    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->exclusiveGroupId:I

    .line 839
    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->exclusiveGroupId(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    move-result-object v3

    .line 840
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    .line 841
    .local v3, "newFe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    invoke-direct {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addFrontendResource(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V

    .line 829
    .end local v3    # "newFe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 845
    .end local v2    # "i":I
    :cond_8a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 847
    .local v2, "removingHandle":I
    invoke-direct {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeFrontendResource(I)V

    .line 848
    .end local v2    # "removingHandle":I
    goto :goto_8e

    .line 849
    :cond_a2
    return-void
.end method

.method protected setLnbInfoListInternal([I)V
    .registers 7
    .param p1, "lnbHandles"    # [I

    .line 853
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_2c

    .line 854
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, p1

    if-ge v0, v2, :cond_2c

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLnbInfo(lnbHanle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 862
    .end local v0    # "i":I
    :cond_2c
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResources()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 865
    .local v0, "updatingLnbHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3a
    array-length v3, p1

    if-ge v2, v3, :cond_82

    .line 866
    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v3

    if-eqz v3, :cond_71

    .line 867
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_67

    .line 868
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lnb handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_67
    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 873
    :cond_71
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;

    aget v4, p1, v2

    invoke-direct {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;-><init>(I)V

    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v3

    .line 874
    .local v3, "newLnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    invoke-direct {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addLnbResource(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    .line 865
    .end local v3    # "newLnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 878
    .end local v2    # "i":I
    :cond_82
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_86
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 879
    .local v2, "removingHandle":I
    invoke-direct {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeLnbResource(I)V

    .line 880
    .end local v2    # "removingHandle":I
    goto :goto_86

    .line 881
    :cond_9a
    return-void
.end method

.method protected shareFrontendInternal(II)V
    .registers 6
    .param p1, "selfClientId"    # I
    .param p2, "targetClientId"    # I

    .line 996
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shareFrontend from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_27
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1000
    .local v1, "feId":I
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useFrontend(I)V

    .line 1001
    .end local v1    # "feId":I
    goto :goto_33

    .line 1002
    :cond_4b
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->shareFrontend(I)V

    .line 1003
    return-void
.end method

.method protected storeResourceMapInternal(I)V
    .registers 4
    .param p1, "resourceType"    # I

    .line 773
    packed-switch p1, :pswitch_data_22

    goto :goto_21

    .line 775
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 776
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 777
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 778
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 779
    nop

    .line 784
    :goto_21
    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method protected transferOwnerInternal(III)Z
    .registers 6
    .param p1, "resourceType"    # I
    .param p2, "currentOwnerId"    # I
    .param p3, "newOwnerId"    # I

    .line 1072
    sparse-switch p1, :sswitch_data_2e

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transferOwnerInternal. unsupported resourceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const/4 v0, 0x0

    return v0

    .line 1076
    :sswitch_1e
    invoke-direct {p0, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->transferFeCiCamOwner(II)Z

    move-result v0

    return v0

    .line 1078
    :sswitch_23
    invoke-direct {p0, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->transferLnbOwner(II)Z

    move-result v0

    return v0

    .line 1074
    :sswitch_28
    invoke-direct {p0, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->transferFeOwner(II)Z

    move-result v0

    return v0

    nop

    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_28
        0x3 -> :sswitch_23
        0x5 -> :sswitch_1e
    .end sparse-switch
.end method

.method protected unregisterClientProfileInternal(I)V
    .registers 6
    .param p1, "clientId"    # I

    .line 701
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_23

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterClientProfile(clientId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeClientProfile(I)V

    .line 706
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-eqz v0, :cond_4a

    .line 708
    :try_start_2a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/media/IResourceManagerService;->overridePid(II)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_32} :catch_33

    .line 712
    goto :goto_4a

    .line 709
    :catch_33
    move-exception v0

    .line 710
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not overridePid in resourceManagerSercice when unregister, remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4a
    :goto_4a
    return-void
.end method

.method protected updateCasInfoInternal(II)V
    .registers 6
    .param p1, "casSystemId"    # I
    .param p2, "maxSessionNum"    # I

    .line 885
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_2d

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCasInfo(casSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSessionNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_2d
    if-nez p2, :cond_36

    .line 892
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeCasResource(I)V

    .line 893
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeCiCamResource(I)V

    .line 894
    return-void

    .line 897
    :cond_36
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 898
    .local v0, "cas":Lcom/android/server/tv/tunerresourcemanager/CasResource;
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v1

    .line 899
    .local v1, "ciCam":Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
    if-eqz v0, :cond_52

    .line 900
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getUsedSessionNum()I

    move-result v2

    if-le v2, p2, :cond_49

    .line 902
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getUsedSessionNum()I

    .line 905
    :cond_49
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->updateMaxSessionNum(I)V

    .line 906
    if-eqz v1, :cond_51

    .line 907
    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->updateMaxSessionNum(I)V

    .line 909
    :cond_51
    return-void

    .line 912
    :cond_52
    new-instance v2, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    invoke-direct {v2, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(I)V

    .line 913
    invoke-virtual {v2, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    move-result-object v2

    .line 914
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 915
    new-instance v2, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    invoke-direct {v2, p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;-><init>(I)V

    .line 916
    invoke-virtual {v2, p2}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    move-result-object v2

    .line 917
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v1

    .line 918
    invoke-direct {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCasResource(Lcom/android/server/tv/tunerresourcemanager/CasResource;)V

    .line 919
    invoke-direct {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCiCamResource(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;)V

    .line 920
    return-void
.end method

.method protected updateClientPriorityInternal(III)Z
    .registers 8
    .param p1, "clientId"    # I
    .param p2, "priority"    # I
    .param p3, "niceValue"    # I

    .line 718
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_37

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateClientPriority(clientId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", priority="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", niceValue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_37
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 725
    .local v0, "profile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    if-nez v0, :cond_5b

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find client profile with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when trying to update the client priority."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v1, 0x0

    return v1

    .line 732
    :cond_5b
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->overwritePriority(I)V

    .line 733
    invoke-virtual {v0, p3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setNiceValue(I)V

    .line 735
    const/4 v1, 0x1

    return v1
.end method
