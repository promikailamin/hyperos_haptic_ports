.class public Lcom/android/server/blob/BlobStoreManagerService;
.super Lcom/android/server/SystemService;
.source "BlobStoreManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/blob/BlobStoreManagerService$Injector;,
        Lcom/android/server/blob/BlobStoreManagerService$LocalService;,
        Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;,
        Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;,
        Lcom/android/server/blob/BlobStoreManagerService$Stub;,
        Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;,
        Lcom/android/server/blob/BlobStoreManagerService$PackageChangedReceiver;,
        Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;,
        Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;
    }
.end annotation


# instance fields
.field private final mActiveBlobIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mBlobsLock:Ljava/lang/Object;

.field private final mBlobsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/blob/BlobHandle;",
            "Lcom/android/server/blob/BlobMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentMaxSessionId:J

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/blob/BlobStoreManagerService$Injector;

.field private final mKnownBlobIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mRandom:Ljava/util/Random;

.field private final mSaveBlobsInfoRunnable:Ljava/lang/Runnable;

.field private final mSaveSessionsRunnable:Ljava/lang/Runnable;

.field private final mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

.field private final mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/blob/BlobStoreSession;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStatsCallbackImpl:Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

.field private mStatsManager:Landroid/app/StatsManager;


# direct methods
.method public static synthetic $r8$lambda$5JiLp6FArwNHRjy3qCl1v6pO75A(Lcom/android/server/blob/BlobStoreManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessions()V

    return-void
.end method

.method public static synthetic $r8$lambda$IjuYShneZHng_C5xDNH-7QjfNTg(Lcom/android/server/blob/BlobStoreManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBackgroundHandler(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBlobsLock(Lcom/android/server/blob/BlobStoreManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentMaxSessionId(Lcom/android/server/blob/BlobStoreManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mabandonSessionInternal(Lcom/android/server/blob/BlobStoreManagerService;JILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreManagerService;->abandonSessionInternal(JILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$macquireLeaseInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JILjava/lang/String;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/blob/BlobStoreManagerService;->acquireLeaseInternal(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateSessionInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)J
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->createSessionInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mdeleteBlobInternal(Lcom/android/server/blob/BlobStoreManagerService;JI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobInternal(JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpBlobsLocked(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->dumpBlobsLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpSessionsLocked(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->dumpSessionsLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mforEachBlob(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlob(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mforEachSessionInUser(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->forEachSessionInUser(Ljava/util/function/Consumer;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLeaseInfoInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/app/blob/LeaseInfo;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->getLeaseInfoInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/app/blob/LeaseInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLeasedBlobsInternal(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getLeasedBlobsInternal(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRemainingLeaseQuotaBytesInternal(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)J
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getRemainingLeaseQuotaBytesInternal(ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mhandleUserRemoved(Lcom/android/server/blob/BlobStoreManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->handleUserRemoved(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAllowedBlobStoreAccess(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->isAllowedBlobStoreAccess(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monStateChangedInternal(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreSession;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->onStateChangedInternal(Lcom/android/server/blob/BlobStoreSession;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenBlobInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->openBlobInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mopenSessionInternal(Lcom/android/server/blob/BlobStoreManagerService;JILjava/lang/String;)Lcom/android/server/blob/BlobStoreSession;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreManagerService;->openSessionInternal(JILjava/lang/String;)Lcom/android/server/blob/BlobStoreSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpullBlobData(Lcom/android/server/blob/BlobStoreManagerService;ILjava/util/List;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->pullBlobData(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mqueryBlobsForUserInternal(Lcom/android/server/blob/BlobStoreManagerService;I)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->queryBlobsForUserInternal(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreleaseAllLeasesInternal(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->releaseAllLeasesInternal(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseLeaseInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->releaseLeaseInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mverifyCallingPackage(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->verifyCallingPackage(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sminitializeMessageHandler()Landroid/os/Handler;
    .registers 1

    invoke-static {}, Lcom/android/server/blob/BlobStoreManagerService;->initializeMessageHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 185
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/blob/BlobStoreManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService;-><init>(Landroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$Injector;)V

    .line 186
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$Injector;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/blob/BlobStoreManagerService$Injector;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 149
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 156
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 160
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    .line 164
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    .line 168
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mRandom:Ljava/util/Random;

    .line 174
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    invoke-direct {v0, p0}, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    .line 179
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl-IA;)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsCallbackImpl:Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

    .line 181
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveBlobsInfoRunnable:Ljava/lang/Runnable;

    .line 182
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveSessionsRunnable:Ljava/lang/Runnable;

    .line 192
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mInjector:Lcom/android/server/blob/BlobStoreManagerService$Injector;

    .line 194
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreManagerService$Injector;->initializeMessageHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    .line 195
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreManagerService$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 196
    return-void
.end method

.method private abandonSessionInternal(JILjava/lang/String;)V
    .registers 10
    .param p1, "sessionId"    # J
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreManagerService;->openSessionInternal(JILjava/lang/String;)Lcom/android/server/blob/BlobStoreSession;

    move-result-object v1

    .line 392
    .local v1, "session":Lcom/android/server/blob/BlobStoreSession;
    invoke-virtual {v1}, Lcom/android/server/blob/BlobStoreSession;->open()V

    .line 393
    invoke-virtual {v1}, Lcom/android/server/blob/BlobStoreSession;->abandon()V

    .line 394
    sget-boolean v2, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v2, :cond_3d

    .line 395
    const-string v2, "BlobStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abandoned session with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_3d
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 399
    .end local v1    # "session":Lcom/android/server/blob/BlobStoreSession;
    monitor-exit v0

    .line 400
    return-void

    .line 399
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private acquireLeaseInternal(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JILjava/lang/String;)V
    .registers 22
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "descriptionResId"    # I
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "leaseExpiryTimeMillis"    # J
    .param p6, "callingUid"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;

    .line 456
    move-object v1, p0

    move-object v2, p1

    move/from16 v10, p6

    move-object/from16 v11, p7

    iget-object v12, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 457
    :try_start_9
    invoke-direct {p0, v10, v11}, Lcom/android/server/blob/BlobStoreManagerService;->getLeasedBlobsCountLocked(ILjava/lang/String;)I

    move-result v0

    .line 458
    .local v0, "leasesCount":I
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getMaxLeasedBlobs()I

    move-result v3

    if-ge v0, v3, :cond_110

    .line 465
    const-wide/16 v3, 0x0

    cmp-long v5, p4, v3

    if-eqz v5, :cond_3a

    iget-wide v5, v2, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_3a

    iget-wide v3, v2, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    cmp-long v3, p4, v3

    if-gtz v3, :cond_26

    goto :goto_3a

    .line 467
    :cond_26
    const/16 v3, 0x12b

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    move/from16 v4, p6

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 470
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Lease expiry cannot be later than blobs expiry time"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "descriptionResId":I
    .end local p3    # "description":Ljava/lang/CharSequence;
    .end local p4    # "leaseExpiryTimeMillis":J
    .end local p6    # "callingUid":I
    .end local p7    # "callingPackage":Ljava/lang/String;
    throw v3

    .line 474
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "descriptionResId":I
    .restart local p3    # "description":Ljava/lang/CharSequence;
    .restart local p4    # "leaseExpiryTimeMillis":J
    .restart local p6    # "callingUid":I
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :cond_3a
    :goto_3a
    iget-object v3, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata;

    move-object v13, v3

    .line 475
    .local v13, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    if-eqz v13, :cond_c4

    invoke-virtual {v13, v11, v10}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_4d

    goto/16 :goto_c4

    .line 490
    :cond_4d
    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v3

    .line 491
    invoke-direct {p0, v10, v11}, Lcom/android/server/blob/BlobStoreManagerService;->getRemainingLeaseQuotaBytesInternal(ILjava/lang/String;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_ac

    .line 500
    const/16 v3, 0x12b

    .line 501
    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v5

    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v7

    const/4 v9, 0x1

    .line 500
    move/from16 v4, p6

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 504
    move-object v3, v13

    move-object/from16 v4, p7

    move/from16 v5, p6

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/blob/BlobMetadata;->addOrReplaceLeasee(Ljava/lang/String;IILjava/lang/CharSequence;J)V

    .line 506
    sget-boolean v3, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v3, :cond_a7

    .line 507
    const-string v3, "BlobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Acquired lease on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; callingUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callingPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_a7
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 511
    .end local v0    # "leasesCount":I
    .end local v13    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    monitor-exit v12

    .line 512
    return-void

    .line 493
    .restart local v0    # "leasesCount":I
    .restart local v13    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    :cond_ac
    const/16 v3, 0x12b

    .line 494
    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v5

    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v7

    const/4 v9, 0x5

    .line 493
    move/from16 v4, p6

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 496
    new-instance v3, Landroid/os/LimitExceededException;

    const-string v4, "Total amount of data with an active lease is exceeding the max limit"

    invoke-direct {v3, v4}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "descriptionResId":I
    .end local p3    # "description":Ljava/lang/CharSequence;
    .end local p4    # "leaseExpiryTimeMillis":J
    .end local p6    # "callingUid":I
    .end local p7    # "callingPackage":Ljava/lang/String;
    throw v3

    .line 477
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "descriptionResId":I
    .restart local p3    # "description":Ljava/lang/CharSequence;
    .restart local p4    # "leaseExpiryTimeMillis":J
    .restart local p6    # "callingUid":I
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :cond_c4
    :goto_c4
    if-nez v13, :cond_d3

    .line 478
    const/16 v3, 0x12b

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    move/from16 v4, p6

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    goto :goto_e3

    .line 482
    :cond_d3
    const/16 v3, 0x12b

    .line 483
    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v5

    invoke-virtual {v13}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v7

    const/4 v9, 0x3

    .line 482
    move/from16 v4, p6

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 486
    :goto_e3
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caller not allowed to access "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; callingUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callingPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "descriptionResId":I
    .end local p3    # "description":Ljava/lang/CharSequence;
    .end local p4    # "leaseExpiryTimeMillis":J
    .end local p6    # "callingUid":I
    .end local p7    # "callingPackage":Ljava/lang/String;
    throw v3

    .line 459
    .end local v13    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "descriptionResId":I
    .restart local p3    # "description":Ljava/lang/CharSequence;
    .restart local p4    # "leaseExpiryTimeMillis":J
    .restart local p6    # "callingUid":I
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :cond_110
    const/16 v3, 0x12b

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x6

    move/from16 v4, p6

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 462
    new-instance v3, Landroid/os/LimitExceededException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many leased blobs for the caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "descriptionResId":I
    .end local p3    # "description":Ljava/lang/CharSequence;
    .end local p4    # "leaseExpiryTimeMillis":J
    .end local p6    # "callingUid":I
    .end local p7    # "callingPackage":Ljava/lang/String;
    throw v3

    .line 511
    .end local v0    # "leasesCount":I
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "descriptionResId":I
    .restart local p3    # "description":Ljava/lang/CharSequence;
    .restart local p4    # "leaseExpiryTimeMillis":J
    .restart local p6    # "callingUid":I
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :catchall_135
    move-exception v0

    monitor-exit v12
    :try_end_137
    .catchall {:try_start_9 .. :try_end_137} :catchall_135

    throw v0
.end method

.method private addActiveBlobIdLocked(J)V
    .registers 5
    .param p1, "id"    # J

    .line 333
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 335
    return-void
.end method

.method private addSessionForUserLocked(Lcom/android/server/blob/BlobStoreSession;I)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/blob/BlobStoreSession;
    .param p2, "userId"    # I

    .line 320
    invoke-direct {p0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 321
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->addActiveBlobIdLocked(J)V

    .line 322
    return-void
.end method

.method private createSessionInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)J
    .registers 20
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 351
    move-object/from16 v1, p0

    move/from16 v10, p2

    move-object/from16 v11, p3

    iget-object v12, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 352
    :try_start_9
    invoke-direct {v1, v10, v11}, Lcom/android/server/blob/BlobStoreManagerService;->getSessionsCountLocked(ILjava/lang/String;)I

    move-result v0

    .line 353
    .local v0, "sessionsCount":I
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getMaxActiveSessions()I

    move-result v2

    if-ge v0, v2, :cond_6b

    .line 358
    invoke-direct/range {p0 .. p0}, Lcom/android/server/blob/BlobStoreManagerService;->generateNextSessionIdLocked()J

    move-result-wide v2

    move-wide v13, v2

    .line 359
    .local v13, "sessionId":J
    new-instance v15, Lcom/android/server/blob/BlobStoreSession;

    iget-object v3, v1, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/blob/BlobStoreManagerService;->mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    move-object v2, v15

    move-wide v4, v13

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/blob/BlobStoreSession;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V

    move-object v2, v15

    .line 362
    .local v2, "session":Lcom/android/server/blob/BlobStoreSession;
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/blob/BlobStoreManagerService;->addSessionForUserLocked(Lcom/android/server/blob/BlobStoreSession;I)V

    .line 363
    sget-boolean v3, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v3, :cond_64

    .line 364
    const-string v3, "BlobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created session for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_86

    move-object/from16 v5, p1

    :try_start_44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; callingUid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", callingPackage="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 363
    :cond_64
    move-object/from16 v5, p1

    .line 367
    :goto_66
    invoke-direct/range {p0 .. p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 368
    monitor-exit v12

    return-wide v13

    .line 354
    .end local v2    # "session":Lcom/android/server/blob/BlobStoreSession;
    .end local v13    # "sessionId":J
    :cond_6b
    move-object/from16 v5, p1

    new-instance v2, Landroid/os/LimitExceededException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many active sessions for the caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "callingUid":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v2

    .line 369
    .end local v0    # "sessionsCount":I
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_86
    move-exception v0

    move-object/from16 v5, p1

    :goto_89
    monitor-exit v12
    :try_end_8a
    .catchall {:try_start_44 .. :try_end_8a} :catchall_8b

    throw v0

    :catchall_8b
    move-exception v0

    goto :goto_89
.end method

.method private deleteBlobInternal(JI)V
    .registers 7
    .param p1, "blobId"    # J
    .param p3, "callingUid"    # I

    .line 626
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 627
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/blob/BlobStoreManagerService;J)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 635
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 636
    monitor-exit v0

    .line 637
    return-void

    .line 636
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V
    .registers 5
    .param p1, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 1176
    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->destroy()V

    .line 1177
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1178
    return-void
.end method

.method private deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V
    .registers 5
    .param p1, "blobStoreSession"    # Lcom/android/server/blob/BlobStoreSession;

    .line 1170
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->destroy()V

    .line 1171
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1172
    return-void
.end method

.method private dumpBlobsLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .registers 9
    .param p1, "fout"    # Landroid/util/IndentingPrintWriter;
    .param p2, "dumpArgs"    # Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "List of blobs ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1285
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "blobCount":I
    :goto_2c
    if-ge v0, v1, :cond_67

    .line 1286
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobMetadata;

    .line 1287
    .local v2, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-virtual {v2}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpBlob(J)Z

    move-result v3

    if-nez v3, :cond_41

    .line 1288
    goto :goto_64

    .line 1290
    :cond_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blob #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1292
    invoke-virtual {v2, p1, p2}, Lcom/android/server/blob/BlobMetadata;->dump(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    .line 1293
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1285
    .end local v2    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    :goto_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 1295
    .end local v0    # "i":I
    .end local v1    # "blobCount":I
    :cond_67
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1296
    const-string v0, "<empty>"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    :cond_74
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1299
    return-void
.end method

.method private dumpSessionsLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .registers 16
    .param p1, "fout"    # Landroid/util/IndentingPrintWriter;
    .param p2, "dumpArgs"    # Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    .line 1256
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "userCount":I
    :goto_7
    if-ge v0, v1, :cond_99

    .line 1257
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1258
    .local v2, "userId":I
    invoke-virtual {p2, v2}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpUser(I)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1259
    goto/16 :goto_95

    .line 1261
    :cond_17
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongSparseArray;

    .line 1262
    .local v3, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List of sessions in user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1263
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1262
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1265
    const/4 v4, 0x0

    .local v4, "j":I
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    .local v5, "sessionsCount":I
    :goto_51
    if-ge v4, v5, :cond_92

    .line 1266
    invoke-virtual {v3, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 1267
    .local v6, "sessionId":J
    invoke-virtual {v3, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/blob/BlobStoreSession;

    .line 1268
    .local v8, "session":Lcom/android/server/blob/BlobStoreSession;
    invoke-virtual {v8}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1269
    invoke-virtual {v8}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v10

    invoke-virtual {v8}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v11

    .line 1268
    invoke-virtual {p2, v9, v10, v11, v12}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpSession(Ljava/lang/String;IJ)Z

    move-result v9

    if-nez v9, :cond_70

    .line 1270
    goto :goto_8f

    .line 1272
    :cond_70
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Session #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1274
    invoke-virtual {v8, p1, p2}, Lcom/android/server/blob/BlobStoreSession;->dump(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    .line 1275
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1265
    .end local v6    # "sessionId":J
    .end local v8    # "session":Lcom/android/server/blob/BlobStoreSession;
    :goto_8f
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 1277
    .end local v4    # "j":I
    .end local v5    # "sessionsCount":I
    :cond_92
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1256
    .end local v2    # "userId":I
    .end local v3    # "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    :goto_95
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 1279
    .end local v0    # "i":I
    .end local v1    # "userCount":I
    :cond_99
    return-void
.end method

.method private forEachBlob(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/blob/BlobMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1375
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/blob/BlobMetadata;>;"
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1376
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    .line 1377
    monitor-exit v0

    .line 1378
    return-void

    .line 1377
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private forEachBlobLocked(Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/app/blob/BlobHandle;",
            "Lcom/android/server/blob/BlobMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1390
    .local p1, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;>;"
    const/4 v0, 0x0

    .local v0, "blobIdx":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "count":I
    :goto_7
    if-ge v0, v1, :cond_1f

    .line 1391
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/blob/BlobHandle;

    .line 1392
    .local v2, "blobHandle":Landroid/app/blob/BlobHandle;
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata;

    .line 1393
    .local v3, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1390
    .end local v2    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local v3    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1395
    .end local v0    # "blobIdx":I
    .end local v1    # "count":I
    :cond_1f
    return-void
.end method

.method private forEachBlobLocked(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/blob/BlobMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1382
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/blob/BlobMetadata;>;"
    const/4 v0, 0x0

    .local v0, "blobIdx":I
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "count":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 1383
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobMetadata;

    .line 1384
    .local v2, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1382
    .end local v2    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1386
    .end local v0    # "blobIdx":I
    .end local v1    # "count":I
    :cond_17
    return-void
.end method

.method private forEachSessionInUser(Ljava/util/function/Consumer;I)V
    .registers 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/blob/BlobStoreSession;",
            ">;I)V"
        }
    .end annotation

    .line 1365
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/blob/BlobStoreSession;>;"
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1366
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 1367
    .local v1, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .local v3, "count":I
    :goto_c
    if-ge v2, v3, :cond_1a

    .line 1368
    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobStoreSession;

    .line 1369
    .local v4, "session":Lcom/android/server/blob/BlobStoreSession;
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1367
    .end local v4    # "session":Lcom/android/server/blob/BlobStoreSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1371
    .end local v1    # "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1a
    monitor-exit v0

    .line 1372
    return-void

    .line 1371
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private generateNextSessionIdLocked()J
    .registers 10

    .line 238
    const/4 v0, 0x0

    .line 241
    .local v0, "n":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    .line 242
    .local v1, "randomLong":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_11

    move-wide v6, v4

    goto :goto_15

    :cond_11
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 243
    .local v6, "sessionId":J
    :goto_15
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_26

    cmp-long v3, v6, v4

    if-eqz v3, :cond_26

    .line 244
    return-wide v6

    .line 246
    .end local v1    # "randomLong":J
    :cond_26
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "n":I
    .local v1, "n":I
    const/16 v2, 0x20

    if-ge v0, v2, :cond_2e

    move v0, v1

    goto :goto_1

    .line 247
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to allocate session ID"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAllPackages()Landroid/util/SparseArray;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 998
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 999
    .local v0, "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    .line 1000
    .local v1, "allUsers":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_46

    aget v4, v1, v3

    .line 1001
    .local v4, "userId":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 1002
    .local v5, "userPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1003
    iget-object v6, p0, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v7, 0xc2000

    .line 1007
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    .line 1004
    invoke-virtual {v6, v7, v8, v4, v9}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v6

    .line 1008
    .local v6, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "count":I
    :goto_31
    if-ge v7, v8, :cond_43

    .line 1009
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 1010
    .local v9, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v10, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1008
    .end local v9    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    .line 1000
    .end local v4    # "userId":I
    .end local v5    # "userPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v6    # "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v7    # "i":I
    .end local v8    # "count":I
    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1013
    :cond_46
    return-object v0
.end method

.method private getCommittedBlobsCountLocked(ILjava/lang/String;)I
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 432
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 433
    .local v0, "blobsCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)V

    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    .line 438
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    return v1
.end method

.method private getLeaseInfoInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/app/blob/LeaseInfo;
    .registers 9
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 654
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/blob/BlobMetadata;

    .line 656
    .local v1, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    if-eqz v1, :cond_19

    invoke-virtual {v1, p3, p2}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 661
    invoke-virtual {v1, p3, p2}, Lcom/android/server/blob/BlobMetadata;->getLeaseInfo(Ljava/lang/String;I)Landroid/app/blob/LeaseInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 658
    :cond_19
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller not allowed to access "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "callingUid":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v2

    .line 662
    .end local v1    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method private getLeasedBlobsCountLocked(ILjava/lang/String;)I
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 444
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 445
    .local v0, "blobsCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)V

    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    .line 450
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    return v1
.end method

.method private getLeasedBlobsInternal(ILjava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobHandle;",
            ">;"
        }
    .end annotation

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v0, "leasedBlobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/blob/BlobHandle;>;"
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_8
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v2, p2, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda15;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-direct {p0, v2}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    .line 648
    monitor-exit v1

    .line 649
    return-object v0

    .line 648
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw v2
.end method

.method private getRemainingLeaseQuotaBytesInternal(ILjava/lang/String;)J
    .registers 9
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 576
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_3
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getAppDataBytesLimit()J

    move-result-wide v1

    .line 578
    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->getTotalUsageBytesLocked(ILjava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 579
    .local v1, "remainingQuota":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_13

    move-wide v3, v1

    :cond_13
    monitor-exit v0

    return-wide v3

    .line 580
    .end local v1    # "remainingQuota":J
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private getSessionsCountLocked(ILjava/lang/String;)I
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 340
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 341
    .local v0, "sessionsCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;-><init>(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 345
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 341
    invoke-direct {p0, v1, v2}, Lcom/android/server/blob/BlobStoreManagerService;->forEachSessionInUser(Ljava/util/function/Consumer;I)V

    .line 346
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    return v1
.end method

.method private getUserSessionsLocked(I)Landroid/util/LongSparseArray;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/blob/BlobStoreSession;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 267
    .local v0, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    if-nez v0, :cond_15

    .line 268
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    move-object v0, v1

    .line 269
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    :cond_15
    return-object v0
.end method

.method private handleUserRemoved(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1074
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1075
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 1076
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 1077
    .local v1, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    if-eqz v1, :cond_20

    .line 1078
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .local v3, "count":I
    :goto_12
    if-ge v2, v3, :cond_20

    .line 1079
    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobStoreSession;

    .line 1080
    .local v4, "session":Lcom/android/server/blob/BlobStoreSession;
    invoke-direct {p0, v4}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 1078
    .end local v4    # "session":Lcom/android/server/blob/BlobStoreSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1084
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_20
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/blob/BlobStoreManagerService;I)V

    invoke-interface {v2, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1093
    sget-boolean v2, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v2, :cond_4a

    .line 1094
    const-string v2, "BlobStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed blobs data in user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    .end local v1    # "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    :cond_4a
    monitor-exit v0

    .line 1097
    return-void

    .line 1096
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private static initializeMessageHandler()Landroid/os/Handler;
    .registers 4

    .line 199
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "BlobStore"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 201
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 202
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 203
    .local v1, "handler":Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 204
    return-object v1
.end method

.method private isAllowedBlobStoreAccess(ILjava/lang/String;)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1398
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1399
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 1398
    :goto_1b
    return v0
.end method

.method static synthetic lambda$getCommittedBlobsCountLocked$1(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobMetadata;)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "blobsCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p3, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 434
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->isACommitter(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 435
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 437
    :cond_9
    return-void
.end method

.method static synthetic lambda$getLeasedBlobsCountLocked$2(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobMetadata;)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "blobsCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p3, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 446
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->isALeasee(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 447
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 449
    :cond_9
    return-void
.end method

.method static synthetic lambda$getLeasedBlobsInternal$10(Ljava/lang/String;ILjava/util/ArrayList;Lcom/android/server/blob/BlobMetadata;)V
    .registers 5
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "callingUid"    # I
    .param p2, "leasedBlobs"    # Ljava/util/ArrayList;
    .param p3, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 644
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->isALeasee(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 645
    invoke-virtual {p3}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_d
    return-void
.end method

.method static synthetic lambda$getSessionsCountLocked$0(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobStoreSession;)V
    .registers 5
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sessionsCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p3, "session"    # Lcom/android/server/blob/BlobStoreSession;

    .line 342
    invoke-virtual {p3}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    if-ne v0, p0, :cond_13

    invoke-virtual {p3}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 343
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 345
    :cond_13
    return-void
.end method

.method static synthetic lambda$getTotalUsageBytesLocked$3(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .registers 6
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "callingUid"    # I
    .param p2, "totalBytes"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p3, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 519
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->isALeasee(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 520
    invoke-virtual {p3}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 522
    :cond_d
    return-void
.end method

.method static synthetic lambda$pullBlobData$18(Ljava/util/List;ILcom/android/server/blob/BlobMetadata;)V
    .registers 4
    .param p0, "data"    # Ljava/util/List;
    .param p1, "atomTag"    # I
    .param p2, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 1940
    invoke-virtual {p2, p1}, Lcom/android/server/blob/BlobMetadata;->dumpAsStatsEvent(I)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$queryBlobsForUserInternal$7(ILjava/util/function/Function;Landroid/app/blob/BlobHandle;Ljava/util/ArrayList;Lcom/android/server/blob/BlobMetadata$Leasee;)V
    .registers 12
    .param p0, "userId"    # I
    .param p1, "resourcesGetter"    # Ljava/util/function/Function;
    .param p2, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p3, "leaseInfos"    # Ljava/util/ArrayList;
    .param p4, "leasee"    # Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 602
    invoke-virtual {p4}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 603
    return-void

    .line 605
    :cond_7
    iget v0, p4, Lcom/android/server/blob/BlobMetadata$Leasee;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq p0, v0, :cond_10

    .line 606
    return-void

    .line 608
    :cond_10
    iget-object v0, p4, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 609
    const/4 v0, 0x0

    move v5, v0

    goto :goto_28

    .line 610
    :cond_17
    iget-object v0, p4, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iget-object v1, p4, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    iget-object v2, p4, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/blob/BlobStoreUtils;->getDescriptionResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v5, v0

    :goto_28
    nop

    .line 612
    .local v5, "descriptionResId":I
    iget-wide v0, p4, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_36

    .line 613
    invoke-virtual {p2}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    move-result-wide v0

    goto :goto_38

    :cond_36
    iget-wide v0, p4, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    :goto_38
    move-wide v3, v0

    .line 614
    .local v3, "expiryTimeMs":J
    new-instance v0, Landroid/app/blob/LeaseInfo;

    iget-object v2, p4, Lcom/android/server/blob/BlobMetadata$Leasee;->packageName:Ljava/lang/String;

    iget-object v6, p4, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/app/blob/LeaseInfo;-><init>(Ljava/lang/String;JILjava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    return-void
.end method

.method static synthetic lambda$queryBlobsForUserInternal$8(ILjava/util/function/Function;Ljava/util/ArrayList;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V
    .registers 16
    .param p0, "userId"    # I
    .param p1, "resourcesGetter"    # Ljava/util/function/Function;
    .param p2, "blobInfos"    # Ljava/util/ArrayList;
    .param p3, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p4, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 597
    invoke-virtual {p4, p0}, Lcom/android/server/blob/BlobMetadata;->hasACommitterOrLeaseeInUser(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 598
    return-void

    .line 600
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v0, "leaseInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/blob/LeaseInfo;>;"
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda6;-><init>(ILjava/util/function/Function;Landroid/app/blob/BlobHandle;Ljava/util/ArrayList;)V

    invoke-virtual {p4, v1}, Lcom/android/server/blob/BlobMetadata;->forEachLeasee(Ljava/util/function/Consumer;)V

    .line 617
    new-instance v10, Landroid/app/blob/BlobInfo;

    invoke-virtual {p4}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v2

    .line 618
    invoke-virtual {p3}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/app/blob/BlobHandle;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    .line 619
    invoke-virtual {p4}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v7

    move-object v1, v10

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Landroid/app/blob/BlobInfo;-><init>(JJLjava/lang/CharSequence;JLjava/util/List;)V

    .line 617
    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    return-void
.end method

.method static synthetic lambda$releaseAllLeasesInternal$5(Ljava/lang/String;ILandroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V
    .registers 4
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "callingUid"    # I
    .param p2, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p3, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 564
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->removeLeasee(Ljava/lang/String;I)V

    .line 565
    return-void
.end method

.method private onStateChangedInternal(Lcom/android/server/blob/BlobStoreSession;)V
    .registers 27
    .param p1, "session"    # Lcom/android/server/blob/BlobStoreSession;

    .line 682
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_1f8

    .line 771
    const-string v0, "BlobStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid session state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 772
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 771
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ea

    .line 702
    :pswitch_2d
    iget-object v3, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 703
    nop

    .line 704
    :try_start_31
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v4

    .line 703
    invoke-direct {v1, v0, v4}, Lcom/android/server/blob/BlobStoreManagerService;->getCommittedBlobsCountLocked(ILjava/lang/String;)I

    move-result v0

    move v4, v0

    .line 705
    .local v4, "committedBlobsCount":I
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getMaxCommittedBlobs()I

    move-result v0

    const/4 v5, 0x1

    if-lt v4, v0, :cond_95

    .line 706
    const-string v0, "BlobStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to commit: too many committed blobs. count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; blob: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {v2, v5}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V

    .line 709
    invoke-direct/range {p0 .. p1}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 710
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 711
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    .line 712
    const/16 v7, 0x12a

    .line 713
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v11

    const/4 v13, 0x4

    .line 712
    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 715
    monitor-exit v3

    goto/16 :goto_1ea

    .line 718
    :cond_95
    iget-object v0, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    move v6, v0

    .line 719
    .local v6, "blobIndex":I
    if-ltz v6, :cond_ac

    .line 720
    iget-object v0, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata;

    move-object v7, v0

    .local v0, "blob":Lcom/android/server/blob/BlobMetadata;
    goto :goto_bf

    .line 722
    .end local v0    # "blob":Lcom/android/server/blob/BlobMetadata;
    :cond_ac
    new-instance v0, Lcom/android/server/blob/BlobMetadata;

    iget-object v7, v1, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v8

    .line 723
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v10

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/android/server/blob/BlobMetadata;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;)V

    .line 724
    .restart local v0    # "blob":Lcom/android/server/blob/BlobMetadata;
    invoke-virtual {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->addBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    move-object v7, v0

    .line 726
    .end local v0    # "blob":Lcom/android/server/blob/BlobMetadata;
    .local v7, "blob":Lcom/android/server/blob/BlobMetadata;
    :goto_bf
    nop

    .line 727
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v8

    .line 726
    invoke-virtual {v7, v0, v8}, Lcom/android/server/blob/BlobMetadata;->getExistingCommitter(Ljava/lang/String;I)Lcom/android/server/blob/BlobMetadata$Committer;

    move-result-object v0

    move-object v8, v0

    .line 729
    .local v8, "existingCommitter":Lcom/android/server/blob/BlobMetadata$Committer;
    if-nez v8, :cond_d2

    const-wide/16 v9, 0x0

    goto :goto_d6

    :cond_d2
    invoke-virtual {v8}, Lcom/android/server/blob/BlobMetadata$Committer;->getCommitTimeMs()J

    move-result-wide v9

    .line 730
    .local v9, "existingCommitTimeMs":J
    :goto_d6
    new-instance v0, Lcom/android/server/blob/BlobMetadata$Committer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v12

    .line 731
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getBlobAccessMode()Lcom/android/server/blob/BlobAccessMode;

    move-result-object v14

    .line 733
    move/from16 v17, v6

    .end local v6    # "blobIndex":I
    .local v17, "blobIndex":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 732
    invoke-static {v9, v10, v5, v6}, Lcom/android/server/blob/BlobStoreConfig;->getAdjustedCommitTimeMs(JJ)J

    move-result-wide v15

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/android/server/blob/BlobMetadata$Committer;-><init>(Ljava/lang/String;ILcom/android/server/blob/BlobAccessMode;J)V

    move-object v5, v0

    .line 734
    .local v5, "newCommitter":Lcom/android/server/blob/BlobMetadata$Committer;
    invoke-virtual {v7, v5}, Lcom/android/server/blob/BlobMetadata;->addOrReplaceCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V
    :try_end_f6
    .catchall {:try_start_31 .. :try_end_f6} :catchall_1a2

    .line 736
    :try_start_f6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoLocked()V

    .line 737
    const/16 v18, 0x12a

    .line 738
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v19

    invoke-virtual {v7}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v20

    invoke-virtual {v7}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v22

    const/16 v24, 0x1

    .line 737
    invoke-static/range {v18 .. v24}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 740
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_110} :catch_111
    .catchall {:try_start_f6 .. :try_end_110} :catchall_1a2

    .line 758
    goto :goto_162

    .line 741
    :catch_111
    move-exception v0

    .line 742
    .local v0, "e":Ljava/lang/Exception;
    if-nez v8, :cond_118

    .line 743
    :try_start_114
    invoke-virtual {v7, v5}, Lcom/android/server/blob/BlobMetadata;->removeCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V

    goto :goto_11b

    .line 745
    :cond_118
    invoke-virtual {v7, v8}, Lcom/android/server/blob/BlobMetadata;->addOrReplaceCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V

    .line 747
    :goto_11b
    const-string v6, "BlobStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error committing the blob: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    const/16 v18, 0x12a

    .line 749
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v20

    invoke-virtual {v7}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v22

    const/16 v24, 0x2

    .line 748
    invoke-static/range {v18 .. v24}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 751
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V

    .line 754
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v11

    invoke-virtual {v7}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v13

    cmp-long v6, v11, v13

    if-nez v6, :cond_162

    .line 755
    invoke-direct {v1, v7}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 756
    iget-object v6, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_162
    :goto_162
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v11

    invoke-virtual {v7}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v13

    cmp-long v0, v11, v13

    if-eqz v0, :cond_171

    .line 761
    invoke-direct/range {p0 .. p1}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 763
    :cond_171
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 764
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Landroid/util/LongSparseArray;->remove(J)V

    .line 765
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v0, :cond_1a0

    .line 766
    const-string v0, "BlobStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Successfully committed session "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .end local v4    # "committedBlobsCount":I
    .end local v5    # "newCommitter":Lcom/android/server/blob/BlobMetadata$Committer;
    .end local v7    # "blob":Lcom/android/server/blob/BlobMetadata;
    .end local v8    # "existingCommitter":Lcom/android/server/blob/BlobMetadata$Committer;
    .end local v9    # "existingCommitTimeMs":J
    .end local v17    # "blobIndex":I
    :cond_1a0
    monitor-exit v3

    .line 769
    goto :goto_1ea

    .line 768
    :catchall_1a2
    move-exception v0

    monitor-exit v3
    :try_end_1a4
    .catchall {:try_start_114 .. :try_end_1a4} :catchall_1a2

    throw v0

    .line 695
    :pswitch_1a5
    iget-object v0, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1, v2}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreSession;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 700
    goto :goto_1ea

    .line 685
    :pswitch_1b0
    iget-object v3, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 686
    :try_start_1b3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 687
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 688
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 689
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v0, :cond_1e5

    .line 690
    const-string v0, "BlobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session is invalid; deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_1e5
    monitor-exit v3

    .line 693
    goto :goto_1ea

    .line 692
    :catchall_1e7
    move-exception v0

    monitor-exit v3
    :try_end_1e9
    .catchall {:try_start_1b3 .. :try_end_1e9} :catchall_1e7

    throw v0

    .line 774
    :goto_1ea
    iget-object v3, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 776
    :try_start_1ed
    invoke-direct/range {p0 .. p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsLocked()V
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_1f0} :catch_1f3
    .catchall {:try_start_1ed .. :try_end_1f0} :catchall_1f1

    .line 779
    goto :goto_1f4

    .line 780
    :catchall_1f1
    move-exception v0

    goto :goto_1f6

    .line 777
    :catch_1f3
    move-exception v0

    .line 780
    :goto_1f4
    :try_start_1f4
    monitor-exit v3

    .line 781
    return-void

    .line 780
    :goto_1f6
    monitor-exit v3
    :try_end_1f7
    .catchall {:try_start_1f4 .. :try_end_1f7} :catchall_1f1

    throw v0

    :pswitch_data_1f8
    .packed-switch 0x2
        :pswitch_1b0
        :pswitch_1a5
        :pswitch_2d
        :pswitch_1b0
    .end packed-switch
.end method

.method private openBlobInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 14
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/blob/BlobMetadata;

    .line 406
    .local v1, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    if-eqz v1, :cond_29

    invoke-virtual {v1, p3, p2}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_29

    .line 421
    :cond_14
    const/16 v3, 0x12c

    .line 422
    invoke-virtual {v1}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v7

    const/4 v9, 0x1

    .line 421
    move v4, p2

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 425
    invoke-virtual {v1, p3, p2}, Lcom/android/server/blob/BlobMetadata;->openForRead(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 408
    :cond_29
    :goto_29
    if-nez v1, :cond_37

    .line 409
    const/16 v2, 0x12c

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    move v3, p2

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    goto :goto_46

    .line 413
    :cond_37
    const/16 v2, 0x12c

    .line 414
    invoke-virtual {v1}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v6

    const/4 v8, 0x3

    .line 413
    move v3, p2

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    .line 417
    :goto_46
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller not allowed to access "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "callingUid":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v2

    .line 426
    .end local v1    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_73

    throw v1
.end method

.method private openSessionInternal(JILjava/lang/String;)Lcom/android/server/blob/BlobStoreSession;
    .registers 10
    .param p1, "sessionId"    # J
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    nop

    .line 377
    :try_start_4
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 376
    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 377
    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/blob/BlobStoreSession;

    .line 378
    .local v1, "session":Lcom/android/server/blob/BlobStoreSession;
    if-eqz v1, :cond_25

    invoke-virtual {v1, p3, p4}, Lcom/android/server/blob/BlobStoreSession;->hasAccess(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 379
    invoke-virtual {v1}, Lcom/android/server/blob/BlobStoreSession;->isFinalized()Z

    move-result v2

    if-nez v2, :cond_25

    .line 382
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_3e

    .line 383
    invoke-virtual {v1}, Lcom/android/server/blob/BlobStoreSession;->open()V

    .line 384
    return-object v1

    .line 380
    :cond_25
    :try_start_25
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "sessionId":J
    .end local p3    # "callingUid":I
    .end local p4    # "callingPackage":Ljava/lang/String;
    throw v2

    .line 382
    .end local v1    # "session":Lcom/android/server/blob/BlobStoreSession;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "sessionId":J
    .restart local p3    # "callingUid":I
    .restart local p4    # "callingPackage":Ljava/lang/String;
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_25 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private prepareBlobsIndexFile()Landroid/util/AtomicFile;
    .registers 4

    .line 1025
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->prepareBlobsIndexFile()Ljava/io/File;

    move-result-object v0

    .line 1026
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_8

    .line 1027
    const/4 v1, 0x0

    return-object v1

    .line 1029
    :cond_8
    new-instance v1, Landroid/util/AtomicFile;

    const-string v2, "blobs_index"

    invoke-direct {v1, v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private prepareSessionsIndexFile()Landroid/util/AtomicFile;
    .registers 4

    .line 1017
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->prepareSessionIndexFile()Ljava/io/File;

    move-result-object v0

    .line 1018
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_8

    .line 1019
    const/4 v1, 0x0

    return-object v1

    .line 1021
    :cond_8
    new-instance v1, Landroid/util/AtomicFile;

    const-string/jumbo v2, "session_index"

    invoke-direct {v1, v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private pullBlobData(ILjava/util/List;)I
    .registers 4
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1940
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;I)V

    invoke-direct {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlob(Ljava/util/function/Consumer;)V

    .line 1941
    const/4 v0, 0x0

    return v0
.end method

.method private queryBlobsForUserInternal(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobInfo;",
            ">;"
        }
    .end annotation

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v0, "blobInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/blob/BlobInfo;>;"
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 586
    :try_start_8
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 587
    .local v2, "resources":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v2, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/ArrayMap;I)V

    .line 596
    .local v3, "resourcesGetter":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Landroid/content/res/Resources;>;"
    new-instance v4, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v4, p1, v3, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda8;-><init>(ILjava/util/function/Function;Ljava/util/ArrayList;)V

    invoke-direct {p0, v4}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/BiConsumer;)V

    .line 621
    .end local v2    # "resources":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    .end local v3    # "resourcesGetter":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Landroid/content/res/Resources;>;"
    monitor-exit v1

    .line 622
    return-object v0

    .line 621
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method private readBlobSessionsLocked(Landroid/util/SparseArray;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 824
    .local p1, "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getBlobStoreRootDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    .line 825
    return-void

    .line 827
    :cond_b
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->prepareSessionsIndexFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 828
    .local v0, "sessionsIndexFile":Landroid/util/AtomicFile;
    const-string v1, "BlobStore"

    if-nez v0, :cond_19

    .line 829
    const-string v2, "Error creating sessions index file"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return-void

    .line 831
    :cond_19
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sessions index file not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return-void

    .line 836
    :cond_3a
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 837
    :try_start_3f
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_df

    .line 838
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_43
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 839
    .local v3, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 840
    const-string/jumbo v4, "ss"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 841
    const-string/jumbo v4, "v"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    .line 843
    .local v4, "version":I
    :cond_5d
    :goto_5d
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 844
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_77

    .line 845
    nop

    .line 868
    sget-boolean v5, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v5, :cond_71

    .line 869
    const-string v5, "Finished reading sessions data"

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_43 .. :try_end_71} :catchall_d3

    .line 871
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "version":I
    :cond_71
    if-eqz v2, :cond_76

    :try_start_73
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_df

    .line 873
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_76
    goto :goto_e5

    .line 848
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "version":I
    :cond_77
    :try_start_77
    const-string/jumbo v5, "s"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 849
    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessionStateChangeListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/blob/BlobStoreSession;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)Lcom/android/server/blob/BlobStoreSession;

    move-result-object v5

    .line 851
    .local v5, "session":Lcom/android/server/blob/BlobStoreSession;
    if-nez v5, :cond_8f

    .line 852
    goto :goto_5d

    .line 854
    :cond_8f
    nop

    .line 855
    invoke-virtual {v5}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 854
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 856
    .local v6, "userPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v6, :cond_bf

    .line 857
    invoke-virtual {v5}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v7

    .line 858
    invoke-virtual {v5}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 857
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bf

    .line 859
    nop

    .line 860
    invoke-virtual {v5}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 859
    invoke-direct {p0, v5, v7}, Lcom/android/server/blob/BlobStoreManagerService;->addSessionForUserLocked(Lcom/android/server/blob/BlobStoreSession;I)V

    goto :goto_c6

    .line 863
    :cond_bf
    invoke-virtual {v5}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 865
    :goto_c6
    iget-wide v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    invoke-virtual {v5}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J
    :try_end_d2
    .catchall {:try_start_77 .. :try_end_d2} :catchall_d3

    .line 866
    .end local v5    # "session":Lcom/android/server/blob/BlobStoreSession;
    .end local v6    # "userPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    goto :goto_5d

    .line 837
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "version":I
    :catchall_d3
    move-exception v3

    if-eqz v2, :cond_de

    :try_start_d6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_da

    goto :goto_de

    :catchall_da
    move-exception v4

    :try_start_db
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "sessionsIndexFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_de
    :goto_de
    throw v3
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_df} :catch_df

    .line 871
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "sessionsIndexFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :catch_df
    move-exception v2

    .line 872
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error reading sessions data"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 874
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_e5
    return-void
.end method

.method private readBlobsInfoLocked(Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 913
    .local p1, "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getBlobStoreRootDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    .line 914
    return-void

    .line 916
    :cond_b
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->prepareBlobsIndexFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 917
    .local v0, "blobsIndexFile":Landroid/util/AtomicFile;
    const-string v1, "BlobStore"

    if-nez v0, :cond_19

    .line 918
    const-string v2, "Error creating blobs index file"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    return-void

    .line 920
    :cond_19
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blobs index file not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    return-void

    .line 925
    :cond_3a
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 926
    :try_start_3f
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_ca

    .line 927
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_43
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 928
    .local v3, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 929
    const-string v4, "bs"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 930
    const-string/jumbo v4, "v"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    .line 932
    .local v4, "version":I
    :cond_5c
    :goto_5c
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 933
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_76

    .line 934
    nop

    .line 957
    sget-boolean v5, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v5, :cond_70

    .line 958
    const-string v5, "Finished reading blobs data"

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_43 .. :try_end_70} :catchall_be

    .line 960
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "version":I
    :cond_70
    if-eqz v2, :cond_75

    :try_start_72
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_ca

    .line 962
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_75
    goto :goto_d0

    .line 937
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "version":I
    :cond_76
    :try_start_76
    const-string v5, "b"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 938
    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/android/server/blob/BlobMetadata;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Lcom/android/server/blob/BlobMetadata;

    move-result-object v5

    .line 940
    .local v5, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-virtual {v5, p1}, Lcom/android/server/blob/BlobMetadata;->removeCommittersFromUnknownPkgs(Landroid/util/SparseArray;)V

    .line 941
    invoke-virtual {v5, p1}, Lcom/android/server/blob/BlobMetadata;->removeLeaseesFromUnknownPkgs(Landroid/util/SparseArray;)V

    .line 942
    iget-wide v6, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    invoke-virtual {v5}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    .line 943
    const/4 v6, 0x6

    if-lt v4, v6, :cond_a1

    .line 944
    invoke-virtual {p0, v5}, Lcom/android/server/blob/BlobStoreManagerService;->addBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    goto :goto_bd

    .line 946
    :cond_a1
    iget-object v6, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 947
    invoke-virtual {v5}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v7

    .line 946
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/blob/BlobMetadata;

    .line 948
    .local v6, "existingBlobMetadata":Lcom/android/server/blob/BlobMetadata;
    if-nez v6, :cond_b3

    .line 949
    invoke-virtual {p0, v5}, Lcom/android/server/blob/BlobStoreManagerService;->addBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    goto :goto_bd

    .line 951
    :cond_b3
    invoke-virtual {v6, v5}, Lcom/android/server/blob/BlobMetadata;->addCommittersAndLeasees(Lcom/android/server/blob/BlobMetadata;)V

    .line 952
    invoke-virtual {v5}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_bd
    .catchall {:try_start_76 .. :try_end_bd} :catchall_be

    .line 955
    .end local v5    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    .end local v6    # "existingBlobMetadata":Lcom/android/server/blob/BlobMetadata;
    :goto_bd
    goto :goto_5c

    .line 926
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "version":I
    :catchall_be
    move-exception v3

    if-eqz v2, :cond_c9

    :try_start_c1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_c5

    goto :goto_c9

    :catchall_c5
    move-exception v4

    :try_start_c6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "blobsIndexFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_c9
    :goto_c9
    throw v3
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_ca} :catch_ca

    .line 960
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "blobsIndexFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :catch_ca
    move-exception v2

    .line 961
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error reading blobs data"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 963
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_d0
    return-void
.end method

.method private registerBlobStorePuller()V
    .registers 6

    .line 1919
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsManager:Landroid/app/StatsManager;

    .line 1922
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsCallbackImpl:Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;

    .line 1919
    const/16 v3, 0x2761

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1925
    return-void
.end method

.method private registerReceivers()V
    .registers 15

    .line 251
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 252
    .local v0, "packageChangedFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$PackageChangedReceiver;

    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/android/server/blob/BlobStoreManagerService$PackageChangedReceiver;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$PackageChangedReceiver-IA;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 258
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 259
    .local v1, "userActionFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    iget-object v8, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;

    invoke-direct {v9, p0, v7}, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver-IA;)V

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v13, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    move-object v11, v1

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 262
    return-void
.end method

.method private releaseAllLeasesInternal(ILjava/lang/String;)V
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v2, p2, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 566
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 568
    sget-boolean v1, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v1, :cond_36

    .line 569
    const-string v1, "BlobStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Release all leases associated with pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_36
    monitor-exit v0

    .line 573
    return-void

    .line 572
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private releaseLeaseInternal(Landroid/app/blob/BlobHandle;ILjava/lang/String;)V
    .registers 10
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/blob/BlobMetadata;

    .line 530
    .local v1, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    if-eqz v1, :cond_5f

    invoke-virtual {v1, p3, p2}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 535
    invoke-virtual {v1, p3, p2}, Lcom/android/server/blob/BlobMetadata;->removeLeasee(Ljava/lang/String;I)V

    .line 536
    sget-boolean v2, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v2, :cond_46

    .line 537
    const-string v2, "BlobStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Released lease on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_46
    invoke-virtual {v1}, Lcom/android/server/blob/BlobMetadata;->hasValidLeases()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 541
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V

    .line 554
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getDeletionOnLastLeaseDelayMs()J

    move-result-wide v4

    .line 541
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 556
    :cond_5a
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 557
    .end local v1    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    monitor-exit v0

    .line 558
    return-void

    .line 532
    .restart local v1    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    :cond_5f
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller not allowed to access "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "callingUid":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v2

    .line 557
    .end local v1    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    .restart local p0    # "this":Lcom/android/server/blob/BlobStoreManagerService;
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method private verifyCallingPackage(ILjava/lang/String;)V
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 666
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 667
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 666
    const-wide/16 v2, 0x0

    invoke-virtual {v0, p2, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-ne v0, p1, :cond_f

    .line 671
    return-void

    .line 668
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specified calling package ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] does not match the calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeBlobSessions()V
    .registers 3

    .line 982
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 984
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsLocked()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 987
    goto :goto_a

    .line 988
    :catchall_7
    move-exception v1

    goto :goto_c

    .line 985
    :catch_9
    move-exception v1

    .line 988
    :goto_a
    :try_start_a
    monitor-exit v0

    .line 989
    return-void

    .line 988
    :goto_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_7

    throw v1
.end method

.method private writeBlobSessionsAsync()V
    .registers 3

    .line 992
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveSessionsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 993
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveSessionsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 995
    :cond_11
    return-void
.end method

.method private writeBlobSessionsLocked()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 785
    const-string/jumbo v0, "s"

    const-string/jumbo v1, "ss"

    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->prepareSessionsIndexFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 786
    .local v2, "sessionsIndexFile":Landroid/util/AtomicFile;
    const-string v3, "BlobStore"

    if-nez v2, :cond_14

    .line 787
    const-string v0, "Error creating sessions index file"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-void

    .line 790
    :cond_14
    const/4 v4, 0x0

    .line 792
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 793
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 794
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 795
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 796
    invoke-interface {v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 797
    const-string/jumbo v6, "v"

    const/4 v8, 0x6

    invoke-static {v5, v6, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 799
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v8, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    .local v8, "userCount":I
    :goto_46
    if-ge v6, v8, :cond_6c

    .line 800
    iget-object v9, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 801
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/LongSparseArray;

    .line 802
    .local v9, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    .local v11, "sessionsCount":I
    :goto_55
    if-ge v10, v11, :cond_69

    .line 803
    invoke-interface {v5, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 804
    invoke-virtual {v9, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/blob/BlobStoreSession;

    invoke-virtual {v12, v5}, Lcom/android/server/blob/BlobStoreSession;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 805
    invoke-interface {v5, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 802
    add-int/lit8 v10, v10, 0x1

    goto :goto_55

    .line 799
    .end local v9    # "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    .end local v10    # "j":I
    .end local v11    # "sessionsCount":I
    :cond_69
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 809
    .end local v6    # "i":I
    .end local v8    # "userCount":I
    :cond_6c
    invoke-interface {v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 810
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 811
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 812
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v0, :cond_7e

    .line 813
    const-string v0, "Finished persisting sessions data"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_7e} :catch_80

    .line 819
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_7e
    nop

    .line 820
    return-void

    .line 815
    :catch_80
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 817
    const-string v1, "Error writing sessions data"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 818
    throw v0
.end method

.method private writeBlobsInfo()V
    .registers 3

    .line 966
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 968
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoLocked()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 971
    goto :goto_a

    .line 972
    :catchall_7
    move-exception v1

    goto :goto_c

    .line 969
    :catch_9
    move-exception v1

    .line 972
    :goto_a
    :try_start_a
    monitor-exit v0

    .line 973
    return-void

    .line 972
    :goto_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_7

    throw v1
.end method

.method private writeBlobsInfoAsync()V
    .registers 3

    .line 976
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveBlobsInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 977
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSaveBlobsInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 979
    :cond_11
    return-void
.end method

.method private writeBlobsInfoLocked()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 878
    const-string v0, "b"

    const-string v1, "bs"

    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->prepareBlobsIndexFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 879
    .local v2, "blobsIndexFile":Landroid/util/AtomicFile;
    const-string v3, "BlobStore"

    if-nez v2, :cond_12

    .line 880
    const-string v0, "Error creating blobs index file"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    return-void

    .line 883
    :cond_12
    const/4 v4, 0x0

    .line 885
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 886
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 887
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 888
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 889
    invoke-interface {v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 890
    const-string/jumbo v6, "v"

    const/4 v8, 0x6

    invoke-static {v5, v6, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 892
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v8, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .local v8, "count":I
    :goto_44
    if-ge v6, v8, :cond_5a

    .line 893
    invoke-interface {v5, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 894
    iget-object v9, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/blob/BlobMetadata;

    invoke-virtual {v9, v5}, Lcom/android/server/blob/BlobMetadata;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 895
    invoke-interface {v5, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 892
    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    .line 898
    .end local v6    # "i":I
    .end local v8    # "count":I
    :cond_5a
    invoke-interface {v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 899
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 900
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 901
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v0, :cond_6c

    .line 902
    const-string v0, "Finished persisting blobs data"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_6c} :catch_6e

    .line 908
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_6c
    nop

    .line 909
    return-void

    .line 904
    :catch_6e
    move-exception v0

    .line 905
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 906
    const-string v1, "Error writing blobs data"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    throw v0
.end method


# virtual methods
.method varargs addActiveIdsForTest([J)V
    .registers 7
    .param p1, "activeIds"    # [J

    .line 297
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_3
    array-length v1, p1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_f

    aget-wide v3, p1, v2

    .line 299
    .local v3, "id":J
    invoke-direct {p0, v3, v4}, Lcom/android/server/blob/BlobStoreManagerService;->addActiveBlobIdLocked(J)V

    .line 298
    .end local v3    # "id":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 301
    :cond_f
    monitor-exit v0

    .line 302
    return-void

    .line 301
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method addBlobLocked(Lcom/android/server/blob/BlobMetadata;)V
    .registers 4
    .param p1, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 327
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->addActiveBlobIdLocked(J)V

    .line 329
    return-void
.end method

.method addUserSessionsForTest(Landroid/util/LongSparseArray;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/blob/BlobStoreSession;",
            ">;I)V"
        }
    .end annotation

    .line 276
    .local p1, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method deleteBlob(Landroid/app/blob/BlobHandle;I)V
    .registers 6
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "userId"    # I

    .line 1221
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1222
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/blob/BlobMetadata;

    .line 1223
    .local v1, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    if-nez v1, :cond_f

    .line 1224
    monitor-exit v0

    return-void

    .line 1226
    :cond_f
    invoke-virtual {v1, p2}, Lcom/android/server/blob/BlobMetadata;->removeDataForUser(I)V

    .line 1227
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1228
    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 1229
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    :cond_21
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 1232
    .end local v1    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    monitor-exit v0

    .line 1233
    return-void

    .line 1232
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method getActiveIdsForTest()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    monitor-exit v0

    return-object v1

    .line 308
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getBlobForTest(Landroid/app/blob/BlobHandle;)Lcom/android/server/blob/BlobMetadata;
    .registers 4
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;

    .line 283
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/blob/BlobMetadata;

    monitor-exit v0

    return-object v1

    .line 285
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getBlobsCountForTest()I
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 292
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getKnownIdsForTest()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mKnownBlobIds:Landroid/util/ArraySet;

    monitor-exit v0

    return-object v1

    .line 315
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getTotalUsageBytesLocked(ILjava/lang/String;)J
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 517
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 518
    .local v0, "totalBytes":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p2, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicLong;)V

    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    .line 523
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    return-wide v1
.end method

.method handleIdleMaintenanceLocked()V
    .registers 13

    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    .local v0, "deletedBlobIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1105
    .local v1, "filesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getBlobsDir()Ljava/io/File;

    move-result-object v2

    .line 1106
    .local v2, "blobsDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "BlobStore"

    if-eqz v3, :cond_6f

    .line 1107
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v5, :cond_5c

    aget-object v7, v3, v6

    .line 1109
    .local v7, "file":Ljava/io/File;
    :try_start_20
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1110
    .local v8, "id":J
    iget-object v10, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-gez v10, :cond_3e

    .line 1111
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_3e} :catch_3f

    .line 1117
    .end local v8    # "id":J
    :cond_3e
    goto :goto_59

    .line 1114
    :catch_3f
    move-exception v8

    .line 1115
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing the file name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1116
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :goto_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 1119
    :cond_5c
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "count":I
    :goto_61
    if-ge v3, v5, :cond_6f

    .line 1120
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1119
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 1125
    .end local v3    # "i":I
    .end local v5    # "count":I
    :cond_6f
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v5, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v5, p0, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/ArrayList;)V

    invoke-interface {v3, v5}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1138
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 1141
    const/4 v3, 0x0

    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .local v5, "userCount":I
    :goto_87
    if-ge v3, v5, :cond_9c

    .line 1142
    iget-object v6, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/LongSparseArray;

    .line 1143
    .local v6, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    new-instance v7, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v7, p0, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Landroid/util/LongSparseArray;->removeIf(Lcom/android/internal/util/function/LongObjPredicate;)V

    .line 1141
    .end local v6    # "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 1163
    .end local v3    # "i":I
    .end local v5    # "userCount":I
    :cond_9c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Completed idle maintenance; deleted "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1164
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1163
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 1166
    return-void
.end method

.method handlePackageRemoved(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1034
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1036
    nop

    .line 1037
    :try_start_4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 1038
    .local v1, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->removeIf(Lcom/android/internal/util/function/LongObjPredicate;)V

    .line 1046
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 1049
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1064
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 1066
    sget-boolean v2, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    if-eqz v2, :cond_4e

    .line 1067
    const-string v2, "BlobStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed blobs data associated with pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    .end local v1    # "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    :cond_4e
    monitor-exit v0

    .line 1071
    return-void

    .line 1070
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_4 .. :try_end_52} :catchall_50

    throw v1
.end method

.method isBlobAvailable(JI)Z
    .registers 10
    .param p1, "blobId"    # J
    .param p3, "userId"    # I

    .line 1242
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1243
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_4
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "blobCount":I
    :goto_a
    if-ge v1, v2, :cond_26

    .line 1244
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata;

    .line 1245
    .local v3, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-eqz v4, :cond_20

    .line 1246
    nop

    .line 1243
    .end local v3    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1248
    .restart local v3    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    :cond_20
    invoke-virtual {v3, p3}, Lcom/android/server/blob/BlobMetadata;->hasACommitterInUser(I)Z

    move-result v4

    monitor-exit v0

    return v4

    .line 1250
    .end local v1    # "i":I
    .end local v2    # "blobCount":I
    .end local v3    # "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    :cond_26
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1251
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method synthetic lambda$deleteBlobInternal$9$com-android-server-blob-BlobStoreManagerService(JLjava/util/Map$Entry;)Z
    .registers 7
    .param p1, "blobId"    # J
    .param p3, "entry"    # Ljava/util/Map$Entry;

    .line 628
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata;

    .line 629
    .local v0, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-virtual {v0}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_13

    .line 630
    invoke-direct {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 631
    const/4 v1, 0x1

    return v1

    .line 633
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method synthetic lambda$handleIdleMaintenanceLocked$15$com-android-server-blob-BlobStoreManagerService(Ljava/util/ArrayList;Ljava/util/Map$Entry;)Z
    .registers 7
    .param p1, "deletedBlobIds"    # Ljava/util/ArrayList;
    .param p2, "entry"    # Ljava/util/Map$Entry;

    .line 1126
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata;

    .line 1129
    .local v0, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-virtual {v0}, Lcom/android/server/blob/BlobMetadata;->removeExpiredLeases()V

    .line 1131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1132
    invoke-direct {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 1133
    invoke-virtual {v0}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    return v1

    .line 1136
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method synthetic lambda$handleIdleMaintenanceLocked$16$com-android-server-blob-BlobStoreManagerService(Ljava/util/ArrayList;JLcom/android/server/blob/BlobStoreSession;)Z
    .registers 8
    .param p1, "deletedBlobIds"    # Ljava/util/ArrayList;
    .param p2, "sessionId"    # J
    .param p4, "blobStoreSession"    # Lcom/android/server/blob/BlobStoreSession;

    .line 1144
    const/4 v0, 0x0

    .line 1147
    .local v0, "shouldRemove":Z
    invoke-virtual {p4}, Lcom/android/server/blob/BlobStoreSession;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1148
    const/4 v0, 0x1

    .line 1152
    :cond_8
    invoke-virtual {p4}, Lcom/android/server/blob/BlobStoreSession;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/blob/BlobHandle;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1153
    const/4 v0, 0x1

    .line 1156
    :cond_13
    if-eqz v0, :cond_23

    .line 1157
    invoke-direct {p0, p4}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 1158
    invoke-virtual {p4}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    :cond_23
    return v0
.end method

.method synthetic lambda$handlePackageRemoved$12$com-android-server-blob-BlobStoreManagerService(ILjava/lang/String;JLcom/android/server/blob/BlobStoreSession;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "sessionId"    # J
    .param p5, "blobStoreSession"    # Lcom/android/server/blob/BlobStoreSession;

    .line 1039
    invoke-virtual {p5}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    if-ne v0, p1, :cond_15

    .line 1040
    invoke-virtual {p5}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1041
    invoke-direct {p0, p5}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 1042
    const/4 v0, 0x1

    return v0

    .line 1044
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$handlePackageRemoved$13$com-android-server-blob-BlobStoreManagerService(Ljava/lang/String;ILjava/util/Map$Entry;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "entry"    # Ljava/util/Map$Entry;

    .line 1050
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata;

    .line 1051
    .local v0, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/blob/BlobMetadata;->isACommitter(Ljava/lang/String;I)Z

    move-result v1

    .line 1052
    .local v1, "isACommitter":Z
    if-eqz v1, :cond_f

    .line 1053
    invoke-virtual {v0, p1, p2}, Lcom/android/server/blob/BlobMetadata;->removeCommitter(Ljava/lang/String;I)V

    .line 1055
    :cond_f
    invoke-virtual {v0, p1, p2}, Lcom/android/server/blob/BlobMetadata;->removeLeasee(Ljava/lang/String;I)V

    .line 1058
    invoke-virtual {v0, v1}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1059
    invoke-direct {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 1060
    const/4 v2, 0x1

    return v2

    .line 1062
    :cond_1d
    const/4 v2, 0x0

    return v2
.end method

.method synthetic lambda$handleUserRemoved$14$com-android-server-blob-BlobStoreManagerService(ILjava/util/Map$Entry;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "entry"    # Ljava/util/Map$Entry;

    .line 1085
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata;

    .line 1086
    .local v0, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    invoke-virtual {v0, p1}, Lcom/android/server/blob/BlobMetadata;->removeDataForUser(I)V

    .line 1087
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1088
    invoke-direct {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 1089
    return v1

    .line 1091
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method synthetic lambda$onStateChangedInternal$11$com-android-server-blob-BlobStoreManagerService(Lcom/android/server/blob/BlobStoreSession;)V
    .registers 4
    .param p1, "session"    # Lcom/android/server/blob/BlobStoreSession;

    .line 696
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->computeDigest()V

    .line 697
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 698
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 697
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 699
    return-void
.end method

.method synthetic lambda$queryBlobsForUserInternal$6$com-android-server-blob-BlobStoreManagerService(Landroid/util/ArrayMap;ILjava/lang/String;)Landroid/content/res/Resources;
    .registers 7
    .param p1, "resources"    # Landroid/util/ArrayMap;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 588
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 589
    .local v0, "resourcesRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_10

    :cond_a
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    .line 590
    .local v1, "packageResources":Landroid/content/res/Resources;
    :goto_10
    if-nez v1, :cond_20

    .line 591
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p3, p2}, Lcom/android/server/blob/BlobStoreUtils;->getPackageResources(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 592
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_20
    return-object v1
.end method

.method synthetic lambda$releaseLeaseInternal$4$com-android-server-blob-BlobStoreManagerService(Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V
    .registers 5
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "blobMetadata"    # Lcom/android/server/blob/BlobMetadata;

    .line 542
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 546
    monitor-exit v0

    return-void

    .line 548
    :cond_11
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 549
    invoke-direct {p0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 550
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_20
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 553
    monitor-exit v0

    .line 554
    return-void

    .line 553
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method synthetic lambda$runClearAllBlobs$17$com-android-server-blob-BlobStoreManagerService(ILjava/util/Map$Entry;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "entry"    # Ljava/util/Map$Entry;

    .line 1204
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata;

    .line 1205
    .local v0, "blobMetadata":Lcom/android/server/blob/BlobMetadata;
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_18

    .line 1206
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1207
    return v1

    .line 1209
    :cond_18
    invoke-virtual {v0, p1}, Lcom/android/server/blob/BlobMetadata;->removeDataForUser(I)V

    .line 1210
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1211
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Lcom/android/server/blob/BlobMetadata;->getBlobId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1212
    return v1

    .line 1214
    :cond_30
    return v2
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 221
    const/16 v0, 0x226

    if-ne p1, v0, :cond_a

    .line 222
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreConfig;->initialize(Landroid/content/Context;)V

    goto :goto_2c

    .line 223
    :cond_a
    const/16 v0, 0x258

    if-ne p1, v0, :cond_23

    .line 224
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->getAllPackages()Landroid/util/SparseArray;

    move-result-object v1

    .line 226
    .local v1, "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->readBlobSessionsLocked(Landroid/util/SparseArray;)V

    .line 227
    invoke-direct {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->readBlobsInfoLocked(Landroid/util/SparseArray;)V

    .line 228
    .end local v1    # "allPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_20

    .line 229
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->registerBlobStorePuller()V

    goto :goto_2c

    .line 228
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1

    .line 230
    :cond_23
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2c

    .line 231
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreIdleJobService;->schedule(Landroid/content/Context;)V

    .line 233
    :cond_2c
    :goto_2c
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 209
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/blob/BlobStoreManagerService$Stub;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$Stub-IA;)V

    const-string v2, "blob_store"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/blob/BlobStoreManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 210
    const-class v0, Lcom/android/server/blob/BlobStoreManagerInternal;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/blob/BlobStoreManagerService$LocalService;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$LocalService-IA;)V

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 212
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 213
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/StatsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mStatsManager:Landroid/app/StatsManager;

    .line 214
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->registerReceivers()V

    .line 215
    const-class v0, Lcom/android/server/usage/StorageStatsManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/StorageStatsManagerLocal;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;

    invoke-direct {v2, p0, v1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter-IA;)V

    .line 216
    const-string v1, "BlobStore"

    invoke-interface {v0, v2, v1}, Lcom/android/server/usage/StorageStatsManagerLocal;->registerStorageStatsAugmenter(Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method runClearAllBlobs(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1202
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1203
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/blob/BlobStoreManagerService;I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1216
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 1217
    monitor-exit v0

    .line 1218
    return-void

    .line 1217
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method runClearAllSessions(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 1181
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1182
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_4
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "userCount":I
    :goto_a
    const/4 v3, -0x1

    if-ge v1, v2, :cond_40

    .line 1183
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1184
    .local v4, "sessionUserId":I
    if-eq p1, v3, :cond_18

    if-eq p1, v4, :cond_18

    .line 1185
    goto :goto_3d

    .line 1187
    :cond_18
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongSparseArray;

    .line 1188
    .local v3, "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    .local v6, "sessionsCount":I
    :goto_25
    if-ge v5, v6, :cond_3d

    .line 1189
    iget-object v7, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    invoke-virtual {v3, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/blob/BlobStoreSession;

    invoke-virtual {v8}, Lcom/android/server/blob/BlobStoreSession;->getSessionId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1188
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 1182
    .end local v3    # "userSessions":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/server/blob/BlobStoreSession;>;"
    .end local v4    # "sessionUserId":I
    .end local v5    # "j":I
    .end local v6    # "sessionsCount":I
    :cond_3d
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1192
    .end local v1    # "i":I
    .end local v2    # "userCount":I
    :cond_40
    if-ne p1, v3, :cond_48

    .line 1193
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_4d

    .line 1195
    :cond_48
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1197
    :goto_4d
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 1198
    monitor-exit v0

    .line 1199
    return-void

    .line 1198
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4 .. :try_end_54} :catchall_52

    throw v1
.end method

.method runIdleMaintenance()V
    .registers 3

    .line 1236
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1237
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->handleIdleMaintenanceLocked()V

    .line 1238
    monitor-exit v0

    .line 1239
    return-void

    .line 1238
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
